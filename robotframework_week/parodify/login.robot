***Settings***
Documentation   Testes da página login

Library     Browser

# importando keywords em outro arquivo
Resource    resources/login_actions.robot

# gancho para tirar screenshot após a execução de cada teste
Test Teardown   Take Screenshot

***Test Cases***
Login com sucesso
    Open Login Page
    Login With                  papito@parodify.com                      pwd123    
    Wait For Elements State     css=a[href$=sign_out]                    visible       10
    
Senha incorreta
    Open Login Page
    Login With                  papito@parodify.com                      abc123    
    Alert Should Be             Opps! Dados de acesso incorretos!
    
Email não existe
    Open Login Page
    Login With                  karina@parodify.com                      abc123    
    Alert Should Be             Opps! Dados de acesso incorretos!
       
Email não informado
    Open Login Page
    Login With                  ${EMPTY}                                 abc123    
    Alert Should Be             Opps! Dados de acesso incorretos!
    
Senha não informada
    Open Login Page
    Login With                  papito@parodify.com                      ${EMPTY}
    Alert Should Be             Opps! Dados de acesso incorretos!