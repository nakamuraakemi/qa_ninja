***Settings***
Documentation   Testes da página login

Library     Browser

***Test Cases***
Login com sucesso
    Open Browser                http://parodify.herokuapp.com/users/sign_in     chromium
    Fill Text                   id=user_email                                   papito@parodify.com
    Fill Text                   css=#user_password                              pwd123
    Click                       input[type=submit]
    Wait For Elements State     css=a[href$=sign_out]                           visible                 10

Senha incorreta
    Open Browser                http://parodify.herokuapp.com/users/sign_in     chromium
    Fill Text                   id=user_email                                   papito@parodify.com
    Fill Text                   css=#user_password                              abc123
    Click                       input[type=submit]
    Get Text                    css=.is-danger .message-body                     ==                      Opps! Dados de acesso incorretos!

Email não existe
    Open Browser                http://parodify.herokuapp.com/users/sign_in     chromium
    Fill Text                   id=user_email                                   karina@parodify.com
    Fill Text                   css=#user_password                              abc123
    Click                       input[type=submit]
    Get Text                    css=.is-danger .message-body                     ==                      Opps! Dados de acesso incorretos!
   
Email não informado
    Open Browser                http://parodify.herokuapp.com/users/sign_in     chromium
    Fill Text                   id=user_email                                   ${EMPTY}
    Fill Text                   css=#user_password                              abc123
    Click                       input[type=submit]
    Get Text                    css=.is-danger .message-body                     ==                      Opps! Dados de acesso incorretos!   

Senha não informada
    Open Browser                http://parodify.herokuapp.com/users/sign_in     chromium
    Fill Text                   id=user_email                                   papito@parodify.com
    Fill Text                   css=#user_password                              ${EMPTY}
    Click                       input[type=submit]
    Get Text                    css=.is-danger .message-body                     ==                      Opps! Dados de acesso incorretos!       

    