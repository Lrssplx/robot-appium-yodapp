*** Settings ***

 

Resource        ../resources/base.resource
 

*** Test Cases ***
Deve marcar as techs que usam appium

    Start Session
    Get starded
    Navegate to         Check e Radio
    Go to item          Botões de radio      Escolha sua linguagem preferida
    Click Element       xpath=//android.widget.RadioButton[contains(@text,"Javascript ")]
    
    Sleep       2   
    
     
    Close session
