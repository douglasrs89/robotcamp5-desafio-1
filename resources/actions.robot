***Settings***
Documentation     Aqui teremos todas as palavras de ação para implementar os testes.

Library     SeleniumLibrary

Resource    pages/BasePage.robot
Resource    pages/LoginPage.robot
Resource    pages/SideBar.robot


***Keywords***

## steps
Dado que acesso a página login
  Go To   http://localhost:3000/login

Quando eu submeto minhas credenciais "${email}" e "${pass}"
  LoginPage.Login With    ${email}    ${pass}

Então devo ser autenticado
  Wait Until Element Is Visible    ${LOGGED_USER}
  Element Text Should Be           ${LOGGED_USER}    Douglas Rosa

Então devo ver a mensagem de alerta "${expect_alert}" 
  Wait Until Element Is Visible     ${DIV_ALERT}
  Element Text Should Be            ${DIV_ALERT}    ${expect_alert}