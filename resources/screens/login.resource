***Settings***
Documentation       Elementos da tela de login

Library         AppiumLibrary

***Variables***
${email}        yoda@qax.com
${senha}        jedi        

***Keywords***
Do login 
        
        Input Text      id=com.qaxperience.yodapp:id/etEmail        ${email}         
        Input Text      id=com.qaxperience.yodapp:id/etPassword     ${senha}              

