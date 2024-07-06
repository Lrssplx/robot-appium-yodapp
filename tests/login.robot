*** Settings ***

 

Resource        ../resources/base.resource
 
Test Setup      Start Session
Test Teardown   Close session
*** Test Cases ***
Deve Fazer login com sucesso
     
    Get starded
    Navegate to         Formulários
    Go to item          Login      Olá Padawan, vamos testar o login?
   
    Do login    
    Click Element   id=com.qaxperience.yodapp:id/btnSubmit
    Wait Until Page Contains        Boas vindas, logado você está.    5
    Sleep       2   
    
     
     
