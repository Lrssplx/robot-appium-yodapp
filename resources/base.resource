*** Settings ***

Library     AppiumLibrary

Resource        screens/login.resource  

***Variables***
${START}        QAX

***Keywords***
Start Session
    Open Application        http://localhost:4723
    ...                     platformName=Android
    ...                     deviceName=Android Emulator
    ...                     automationName=UIAutomator2
    ...                     app=${EXECDIR}/app/yodapp-beta.apk
    ...                     udid=emulator-5554
    ...                     appPackage=com.qaxperience.yodapp
    ...                     appActivity=com.qaxperience.yodapp.components.base.SplashActivity
    ...                     autoGrantPermissions=true
 
 
 
Get starded
    Wait Until Page Contains        ${START}               20

    Click Text                      ${START} 
Navegate to  
    [Arguments]     ${item_text}
    ${hamburguer}       Set Variable        xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"] 
    Wait Until Element Is Visible       ${hamburguer}       5  
    Click Element       ${hamburguer}     
    ${menu_item}        Set Variable        xpath=//*[@resource-id = 'com.qaxperience.yodapp:id/navView']//*[@text='${item_text}']
    Wait Until Element Is Visible       ${menu_item}       5  
    Click Element       ${menu_item}  
    
Go to item
    [Arguments]     ${item}     ${checkpoint}
    Wait Until Page Contains        ${item}     5
    Click Text        ${item}    
    Wait Until Page Contains        ${checkpoint}
Test body
    Click Text        CLIQUE SIMPLES
    Wait Until Page Contains        Isso é um clique simples
Close session
    Capture Page Screenshot
    Close Application



