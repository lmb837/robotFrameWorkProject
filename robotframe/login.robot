*** Settings ***
Resource    setting.robot
Resource    variable.robot
Test Template   errorLoginTest      #公共逻辑


*** Test Cases ***                  username                 passwd
case 1:validUsername&&validloginPasswd          ${validUsername}              ${validloginPasswd}

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



*** Keywords ***
errorLoginTest
    [Arguments]    ${uasename}      ${passwd}
    open browser    ${loginPageUrl}     Chrome
    input text      name=username    ${uasename}
    input text      xpath=//*[@placeholder="请输入密码"]    ${passwd}
    click element   class=el-button--primary