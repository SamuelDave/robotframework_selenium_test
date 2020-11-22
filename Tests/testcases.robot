*** Setting ***
Documentation    Test Execution on https://dmca-edu-ph.herokuapp.com
Library          SeleniumLibrary
Resource         ../Resources/general_resources.robot

#the default browser is chrome. If you want tou change it, simply add -v BROWSER:*desired browser* to you command line
Suite Setup     Launch ${BROWSER}     
Suite Teardown  Close All Browsers

*** Test Cases ***
Valid User Login
    User Login
    User Logout

#add -v xpass:*desired value* to you command line if you want to change the value
Invalid User Login
    Invalid Login using ${xname} and ${xpass}
