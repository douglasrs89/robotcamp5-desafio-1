***Settings***
Documentation     Aqui teremos todas as palavras de ação para implementar os testes.

Library   SeleniumLibrary

***Keywords***

## helpers
Open Chrome
  Open Browser       http://localhost:3000    chrome    options=add_experimental_option('excludeSwitches', ['enable-logging'])

## hooks
Open Session
  # Open Browser       http://localhost:3000    chrome
  Open Chrome
  Set Window Size    1440    900

Close Session
  Close Browser

Clear Local Storage
  Execute Javascript    localStorage.clear();

End Test
  Capture Page Screenshot

## steps
Dado que acesso a página login
  Go To   http://localhost:3000/login

Quando eu submeto minhas credenciais "${email}" e "${pass}"
  Input Text     id:emailId      ${email}
  Input Text     name:password   ${pass}
  Click Element  xpath://button[text()="Entrar"]

Então devo ser autenticado
  Wait Until Element Is Visible    css:.user .info span
  Element Text Should Be           css:.user .info span    Douglas Rosa

Então devo ver a mensagem de alerta "${expect_alert}" 
  Wait Until Element Is Visible     class:alert
  Element Text Should Be            class:alert    ${expect_alert}