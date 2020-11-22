***Settings***
Library             SeleniumLibrary
Variables           variables.yaml

***Keywords***
Launch ${BROWSER}
    Open Browser    https://dmca-edu-ph.herokuapp.com  ${BROWSER}
    Maximize Browser Window

User Login
    Click Element           ${loginLink}
    Input Text              username   ${user.email}
    Input Password          password   ${user.password}
    Click Element           loginButton
    Page Should Contain     DMCA SIS

User Logout    
    Click Element           ${profileLink}
    Click Element           ${logoutLink}
    Title Should Be         Login

Invalid Login using ${xname} and ${xpass}
    Click Element           ${loginLink}
    Input Text              username   ${XNAME}
    Input Password          password   ${XPASS}
    Click Element           loginButton
    Page Should Contain Element        ${invalidLbl}

Click the First Post and Write a the Comment ${COMMENT}
    Click Element           ${firstPost}
    Scroll Element Into View            ${postButton}
    Wait Until Page Contains Element    ${postButton}   timeout=${long}
    Input Text              ${commentBox}               ${COMMENT}
    Click Element           ${postButton}
    Wait Until Page Contains            ${COMMENT}      timeout=${long}

