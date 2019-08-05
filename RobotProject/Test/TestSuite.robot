*** Settings ***
Library    SeleniumLibrary    

Suite Setup    Log    ====SUITE SETUP====    
Suite Teardown    Log    ====SUITE TEARDOWN====
Test Setup    Log    ====TEST SETUP====
Test Teardown    Log    ====TEST TEARDOWN====            

Default Tags    Sanity

*** Test Cases ***
Test1
    [Tags]    Smoke
    Log    Just Testing 
Test2
    Log    Just Testing 2
    Set Tags    Inside the 2nd
Test3
    Log    Just Testing 3
Test4
    Log    Empattt    
WiraPakpahanTest
    [Documentation]        Hey, Lets automate this world !
        Open Browser       ${URL}    Chrome
        Set Browser Implicit Wait    5
        LoginKW
        Click Element      id=welcome
#        Click Element      link=Logout        
        Close Browser
        Log                Test Completed
        Log                This test was executed by %{username} on %{os}
        
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123
&{LOGINDATA}      username=Admin    password=admin123

*** Keywords ***
LoginKW
        Input Text         id=txtUsername    @{CREDENTIALS}[0]
        Input Password     id=txtPassword    &{LOGINDATA}[password]
        Click Button       id=btnLogin    