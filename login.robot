*** Settings ***
Library     SeleniumLibrary
Library     Screenshot
Library     DateTime
#Test Template   errorLoginTest      #公共逻辑


*** Variables ***
${loginPageUrl}    http://218.104.238.200:25218/portalwork/#/casLoginFjCs/login?service=http%3A%2F%2F218.104.238.200%3A25218%2Flawenforcement%2F
${validUsername}            testing123
${validloginPasswd}         123456
@{list}     1,2,3
${time}    Get Current Date    result_format=timestamp



#*** Test Cases ***                  username                 passwd
#case 1:validUsername&&validloginPasswd          ${validUsername}              ${validloginPasswd}

#异常登录测试
#case 2:Invalid Username            invalidname              ${validloginPasswd}
#
#case 3:Invalid Password            ${validUsername}         invalidPasswd
#
#case 4:Invalid Both                invalidName              invalidPasswd
#
#case 5:Empty Username              ${EMPTY}                 ${validloginPasswd}
#
#case 6:Empty Password              ${validUsername}         ${EMPTY}
#
#case 7:Empty Both                  ${EMPTY}                 ${EMPTY}



#*** Keywords ***
#errorLoginTest
#    [Arguments]    ${uasename}      ${passwd}
#    open browser    ${loginPageUrl}     Chrome
#    input text      name=username    ${uasename}
#    input text      xpath=//*[@placeholder="请输入密码"]    ${passwd}
#    click element   class=el-button--primary
#    Take Screenshot    登录.jpg


*** Test Cases ***
logtest
#    log  to console    ${validUsername}
    log     ${time}
    log     get time
    sleep   2
