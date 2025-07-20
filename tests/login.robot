*** Settings ***
Documentation    Login test suite

Resource    ../resources/base.resource

Test Setup       Start session
Test Teardown    Finish session

*** Test Cases ***
Should login successfully
    Do Login
    Wait Until Page Contains    Minhas tarefas    10

    @{tasks}                    Create List                                                  Estudar Typescript
    FOR                         ${task}                                                      IN           @{tasks}
    Input Text                  xpath=//android.widget.EditText[@resource-id="newTask"]      ${task}
    Click Element               xpath=//android.view.ViewGroup[@resource-id="createTask"]
    Wait Until Page Contains    ${task}                                                      10
    END