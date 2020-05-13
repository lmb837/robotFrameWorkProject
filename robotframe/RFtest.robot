****** Settings ***
Library    Screenshot
Library    DateTime
*** Variables ***
#${a}    Set Variable    a123
*** Test Cases ***
testcase1
    log    robot framework
     ${time}    Get Current Date    result_format=timestamp
     Log  to console    ${time}
#testcase2
#    ${a}    Set Variable    a123
#    Log    ${a}
#    log many     helloworld
#    Take Screenshot