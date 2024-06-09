<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 07/06/2024
  Time: 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
            integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
            crossorigin="anonymous"
    />
    <link rel="stylesheet" href="style.css" />
    <title>DASHBOARD</title>
</head>
<style>
    @import url("https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700&display=swap");

    /*  styling scrollbars  */
    ::-webkit-scrollbar {
        width: 5px;
        height: 6px;
    }

    ::-webkit-scrollbar-track {
        box-shadow: inset 0 0 5px #a5aaad;
        border-radius: 10px;
    }

    ::-webkit-scrollbar-thumb {
        background: #3ea175;
        border-radius: 10px;
    }

    ::-webkit-scrollbar-thumb:hover {
        background: #a5aaad;
    }

    * {
        margin: 0;
        padding: 0;
    }

    body {
        box-sizing: border-box;
        font-family: "Lato", sans-serif;
    }

    .text-primary-p {
        color: #a5aaad;
        font-size: 14px;
        font-weight: 700;
    }

    .font-bold {
        font-weight: 700;
    }

    .text-title {
        color: #2e4a66;
    }

    .container {
        display: grid;
        height: 100vh;
        grid-template-columns: 0.8fr 1fr 1fr 1fr;
        grid-template-rows: 0.2fr 3fr;
        grid-template-areas:
    "sidebar nav nav nav"
    "sidebar main main main";
        /* grid-gap: 0.2rem; */
    }

    .navbar {
        background: #ffffff;
        grid-area: nav;
        height: 60px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 0 30px 0 30px;
        border-bottom: 1px solid lightgray;
    }

    .nav_icon {
        display: none;
    }

    .nav_icon > i {
        font-size: 26px;
        color: #a5aaad;
    }

    .navbar__left > a {
        margin-right: 30px;
        text-decoration: none;
        color: #a5aaad;
        font-size: 25px;
        font-weight: 700;
    }

    .navbar__left .active_link {
        color: #265acc;
        border-bottom: 3px solid #265acc;
        padding-bottom: 12px;
    }

    .navbar__right {
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .navbar__right > a {
        margin-left: 20px;
        text-decoration: none;
    }

    .navbar__right > a > i {
        color: #a5aaad;
        font-size: 16px;
        border-radius: 50px;
        background: #ffffff;
        box-shadow: 2px 2px 5px #af7171, -2px -2px 5px #b16a6a;
        padding: 7px;
    }

    main {
        background: #f3f4f6;
        grid-area: main;
        overflow-y: auto;
    }

    .main__container {
        padding: 20px 35px;
    }

    .main__title {
        display: flex;
        align-items: center;
    }

    .main__title > img {
        max-height: 100px;
        object-fit: contain;
        margin-right: 20px;
    }

    .main__greeting > h1 {
        font-size: 24px;
        color: #2e4a66;
        margin-bottom: 5px;
    }

    .main__greeting > p {
        font-size: 14px;
        font-weight: 700;
        color: #a5aaad;
    }

    .main__cards {
        display: grid;
        grid-template-columns: 1fr 1fr 1fr 1fr;
        gap: 30px;
        margin: 20px 0;
    }

    .card {
        display: flex;
        flex-direction: column;
        justify-content: space-around;
        height: 70px;
        padding: 25px;
        border-radius: 5px;
        background: #ffffff;
        box-shadow: 5px 5px 13px #e9b1b1, -5px -5px 13px #ffffff;
    }

    .card_inner {
        align-items: center;
        justify-content: space-between;
    }

    .card_inner > span {
        font-size: 20px;
    }
    .text-primary-p{
        color:rgb(189, 189, 9);
        padding-bottom: 2px;
        font-size:15px ;
    }
    .charts {
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 30px;
        margin-top: 50px;
    }

    .charts__left {
        padding: 25px;
        border-radius: 5px;
        background: #ffffff;
        box-shadow: 5px 5px 13px #caeee0, -5px -5px 13px #caeee0;
    }

    .charts__right {
        padding: 25px;
        border-radius: 5px;
        background: #ffffff;
        box-shadow: 5px 5px 13px #caeee0, -5px -5px 13px #caeee0;
    }

    .charts__right__title {
        display: flex;
        align-items: center;
        justify-content: space-between;
    }

    .charts__right__title > div > h1 {
        font-size: 24px;
        color: #2e4a66;
        margin-bottom: 5px;
    }

    .charts__right__title > div > p {
        font-size: 14px;
        font-weight: 700;
        color: #a5aaad;
    }

    .charts__right__title > i {
        color: #ffffff;
        font-size: 20px;
        background: #39447a;
        border-radius: 200px 0px 200px 200px;
        -moz-border-radius: 200px 0px 200px 200px;
        -webkit-border-radius: 200px 0px 200px 200px;
        border: 0px solid #000000;
        padding: 15px;
    }

    .charts__right__cards {
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 20px;
        margin-top: 30px;
    }

    .card1 {
        background: #d1ecf1;
        color: #35a4ba;
        text-align: center;
        padding: 25px;
        border-radius: 5px;
        font-size: 14px;
    }

    .card2 {
        background: #d2f9ee;
        color: #38e1b0;
        text-align: center;
        padding: 25px;
        border-radius: 5px;
        font-size: 14px;
    }

    .card3 {
        background: #d6d8d9;
        color: #3a3e41;
        text-align: center;
        padding: 25px;
        border-radius: 5px;
        font-size: 14px;
    }

    .card4 {
        background: #fddcdf;
        color: #f65a6f;
        text-align: center;
        padding: 25px;
        border-radius: 5px;
        font-size: 14px;
    }

    /*  SIDEBAR STARTS HERE  */

    #sidebar {
        background: #020509;
        grid-area: sidebar;
        overflow-y: auto;
        padding: 20px;
        -webkit-transition: all 0.5s;
        transition: all 0.5s;
    }

    .sidebar__title {
        display: flex;
        justify-content: space-between;
        align-items: center;
        color: #f3f4f6;
        margin-bottom: 30px;
        /* color: #E85B6B; */
    }

    .sidebar__img {
        display: flex;
        align-items: center;
        width:60px;
        height: 20px;
    }

    .sidebar__title > div > img {
        width: 75px;
        object-fit: contain;

        padding-right: 20px;
    }

    .sidebar__title > div > h1 {
        font-size: 18px;
        display: inline;
    }

    .sidebar__title > i {
        font-size: 18px;
        display: none;
    }

    .sidebar__menu > h2 {
        color: #3ea175;
        font-size: 16px;
        margin-top: 15px;
        margin-bottom: 5px;
        padding: 0 10px;
        font-weight: 700;
    }

    .sidebar__link {
        color: #f3f4f6;
        padding: 10px;
        border-radius: 3px;
        margin-bottom: 5px;
    }

    .active_menu_link {
        background: rgba(62, 161, 117, 0.3);
        color: #3ea175;
    }

    .active_menu_link a {
        color: #3ea175 !important;
    }

    .sidebar__link > a {
        text-decoration: none;
        color: #a5aaad;
        font-weight: 700;
    }

    .sidebar__link > i {
        margin-right: 10px;
        font-size: 18px;
    }
    .sidebar__link p{
        font-size: 20px;
        color: #b16a6a;
    }

    .sidebar_responsive {
        display: inline !important;
        z-index: 9999 !important;
        left: 0 !important;
        position: absolute;
    }


    @media only screen and (max-width: 978px) {
        .container {
            grid-template-columns: 1fr;
            /*grid-template-rows: 0.2fr 2.2fr; */
            grid-template-rows: 0.2fr 3fr;
            grid-template-areas:
      "nav"
      "main";
        }

        #sidebar {
            display: none;
        }

        .sidebar__title > i {
            display: inline;
        }

        .nav_icon {
            display: inline;
        }
    }

    @media only screen and (max-width: 855px) {
        .main__cards {
            grid-template-columns: 1fr;
            gap: 10px;
            margin-bottom: 0;
        }

        .charts {
            grid-template-columns: 1fr;
            margin-top: 30px;
        }
    }

    @media only screen and (max-width: 480px) {
        .navbar__left {
            display: none;
        }
    }

</style>
<body id="body">
<div class="container">
    <nav class="navbar">
        <div class="nav_icon" onclick="toggleSidebar()">
            <i class="fa fa-bars" aria-hidden="true"></i>
        </div>
        <div class="navbar__left">
            <a class="active_menu_link">Learn and Grow!</a>
        </div>
        <div class="navbar__right">
            <a href="#">
                <i class="fa fa-search" aria-hidden="true"></i>
            </a>
            <a href="#">
                <i class="fa fa-clock-o" aria-hidden="true"></i>
            </a>
            <a href="#">
                <img width="30" src="images/sclgirl.png" alt="" />
                <!-- <i class="fa fa-user-circle-o" aria-hidden="true"></i> -->
            </a>
        </div>
    </nav>

    <main>
        <div class="main__container">
            <!-- MAIN TITLE STARTS HERE -->

            <div class="main__title">
                <img src="images/hello.svg" alt="" />
                <div class="main__greeting">
                    <h1>Hello,Buddy!</h1>
                    <p>“Practice makes you better , it's time to master your skills.”</p>
                </div>
            </div>

            <!-- MAIN TITLE ENDS HERE -->

            <!-- MAIN CARDS STARTS HERE -->

            <div class="main__cards">
                <div class="card">

                    <div class="card_inner">
                        <p class="text-primary-p">course1-Mathematics</p>
                        <span class="font-bold text-title">June, 25<br>-Tutoring algebra</span>
                    </div>
                </div>

                <div class="card">
                    <div class="card_inner">
                        <p class="text-primary-p">course2-Science</p>
                        <span class="font-bold text-title">June, 26<br>-Drawing the heart</span>
                    </div>
                </div>

                <div class="card">
                    <div class="card_inner">
                        <p class="text-primary-p">Course3-English</p>
                        <span class="font-bold text-title">June, 27<br>-Tutoring English</span>
                    </div>
                </div>

                <div class="card">
                    <div class="card_inner">
                        <p class="text-primary-p">Course4-Social</p>
                        <span class="font-bold text-title">June,28<br>-Locating places in map</span>
                    </div>
                </div>
            </div>
            <!-- MAIN CARDS ENDS HERE -->

            <!-- CHARTS STARTS HERE -->
            <div class="charts">
                <div class="charts__left">
                    <div id="graph">
                        <img src="images/FavSub-graph.jpg" alt="">
                    </div>
                </div>
                <div class="charts__right">
                    <div class="charts__right__title">
                        <div>
                            <h1>Tasks</h1>
                            <p>-Hover to check homework progress percentage-</p>
                        </div>
                        <i class="fa fa-tasks"></i>
                    </div>

                    <div class="charts__right__cards">
                        <div class="card1">
                            <h1>Mathematics</h1>
                            <p>Monday<hr>Algebra problems</p>
                        </div>

                        <div class="card2">
                            <h1>English</h1>
                            <p>Tuesday<hr>writing an essay.</p>
                        </div>

                        <div class="card3">
                            <h1>Socialstudies</h1>
                            <p>Wednesday<hr>Drawing India map.</p>
                        </div>

                        <div class="card4">
                            <h1>Science</h1>
                            <p>Thursday<hr>Chemical reactions</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- CHARTS ENDS HERE -->
        </div>
    </main>

    <div id="sidebar">
        <div class="sidebar__title">
            <div class="sidebar__img">
                <img src="images/scl.jpg" alt="logo" />
                <h1>INFINITUM</h1>
            </div>
            <i
                    onclick="closeSidebar()"
                    class="fa fa-times"
                    id="sidebarIcon"
                    aria-hidden="true"
            ></i>
        </div>

        <div class="sidebar__menu">
            <div class="sidebar__link active_menu_link">
                <i class="fa fa-home"></i>
                <a href="#">Dashboard</a>
            </div>
            <h2>MNG</h2>
            <div class="sidebar__link">
                <i class="fa fa-user-secret" aria-hidden="true"></i>
                <a href="#">Home</a>
            </div>
            <div class="sidebar__link">
                <i class="fa fa-building-o"></i>
                <a href="#">Tutoring</a>
            </div>
            <div class="sidebar__link">
                <i class="fa fa-book"></i>
                <a href="#">My courses</a>
            </div>
            <div class="sidebar__link">
                <i class="fa fa-forward"></i>
                <a href="#">Upcoming lessons</a>
            </div>
            <div class="sidebar__link">
                <i class="fa fa-briefcase"></i>
                <a href="#">Homeworks</a>
            </div>
            <div class="sidebar__link">
                <i class="fa fa-question"></i>
                <a href="#">Tests</a>
            </div><hr>

            <div class="sidebar__link">
                <i class="fa fa-sticky-note"></i>
                <a href="#">Notes</a>
            </div>
            <div class="sidebar__link">
                <i class="fa fa-files-o"></i>
                <a href="#">Holidays</a>
            </div>
            <div class="sidebar__link">

                <i class="fa fa-calendar-check-o"></i>
                <a href="#">Attendance</a>
            </div>
            <div class="sidebar__link">
                <i class="fa fa-sign-in"></i>
                <p>Admissions</p>
            </div>
            <div class="sidebar__link">
                <i class="fa fa-ad"></i>
                <p>Advertisement!</p>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
<script src="script.js">
    var sidebarOpen = false;
    var sidebar = document.getElementById("sidebar");
    var sidebarCloseIcon = document.getElementById("sidebarIcon");

    function toggleSidebar() {
        if (!sidebarOpen) {
            sidebar.classList.add("sidebar_responsive");
            sidebarOpen = true;
        }
    }

    function closeSidebar() {
        if (sidebarOpen) {
            sidebar.classList.remove("sidebar_responsive");
            sidebarOpen = false;
        }
    }
</script>
</body>
</html>
