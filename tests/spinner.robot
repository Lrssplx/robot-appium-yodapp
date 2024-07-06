*** Settings ***

 

Resource        ../resources/base.resource
 

*** Test Cases ***
Deve escolher Jedi
    Start Session
    Get starded
    Navegate to         Formulários
    Go to item          Cadastro      Crie sua conta.
       
    Click Element   id=com.qaxperience.yodapp:id/spinnerJob
    Wait Until Element Visible      class=android.widget.Spinner
    Click Text      Jedi
    Sleep       2   
    
     
    Close session
