***Settings***
Library             SeleniumLibrary
Variables           variables.yaml

***Keywords***
Launch ${BROWSER}
    Open Browser    https://dmca-edu-ph.herokuapp.com/account  ${BROWSER}
    Maximize Browser Window

User Login
    Click Link              ${loginLink}
    Input Text              username   ${user.email}
    Input Password          password   ${user.password}
    Click Element           loginButton
    Page Should Contain     DMCA SIS

User Logout    
    Click Link              ${profileLink}
    Click Link              ${logoutLink}
    Title Should Be         Login

Invalid Login using ${xname} and ${xpass}
    Click Link              ${loginLink}
    Input Text              username   ${xname}
    Input Password          password   ${xpass}
    Click Element           loginButton
    Page Should Contain Element        ${invalidLbl}
