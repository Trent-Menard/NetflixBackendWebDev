package com.github.trentmenard.netflix;

import oracle.jdbc.OracleConnection;
import oracle.jdbc.pool.OracleDataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class NetflixDBConnection {
    private static OracleConnection connection;
    public static OracleConnection getConnection(String username, String password) {

        if (connection != null)
            return connection;

        OracleDataSource ods;

        Properties info = new Properties();
        info.put(OracleConnection.CONNECTION_PROPERTY_USER_NAME, "SYSTEM");
        info.put(OracleConnection.CONNECTION_PROPERTY_PASSWORD, "SYSTEMPASSWORD");
        info.put(OracleConnection.CONNECTION_PROPERTY_DEFAULT_ROW_PREFETCH, "50");

        try {
            ods = new OracleDataSource();
            ods.setURL("jdbc:oracle:thin:@localhost:1522/XE");
            ods.setConnectionProperties(info);
            OracleConnection connection = (OracleConnection) ods.getConnection();

            Statement statement = connection.createStatement();
            ResultSet res = statement.executeQuery("SELECT username, password FROM NETFLIIXSCHEMA.NETFLIXLOGIN");

            boolean successfulLogin = false;

            while (res.next())
                if (res.getString("username").equalsIgnoreCase(username) &&
                        (res.getString("password").equals(password))) {

                    NetflixDBConnection.connection = connection;
                    successfulLogin = true;
                    break;
                }

            return (successfulLogin ? connection : null);

        } catch (SQLException ex) {throw new RuntimeException(ex);}
    }
}