***Settings***
Documentation       LoginPage
...                 Representa a página login com todos os seus elementos
...                 E também suas funcionalidades

***Variables***
${DIV_ALERT}    class:alert

***Keywords***
Login With
  [Arguments]     ${email}    ${pass}

  Input Text     id:emailId      ${email}
  Input Text     name:password   ${pass}
  Click Element  xpath://button[text()="Entrar"]