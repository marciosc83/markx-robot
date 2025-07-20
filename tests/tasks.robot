*** Settings ***
Documentation    Tasks creation test suite

Resource    ../resources/base.resource

Test Setup       Start session
Test Teardown    Finish session

*** Test Cases ***
Should create a new task successfully
    [Tags]                       create
    ${task_name}                 Set Variable    Estudar sobre Python
    Remove task from database    ${task_name}

    Do Login
    Create a new task    ${task_name}
    Should have task     ${task_name}

Should delete a task successfully
    [Tags]    delete

    ${task_name}                 Set Variable    Comprar refrigerante
    Remove task from database    ${task_name}

    Do Login
    Create a new task    ${task_name}
    Should have task     ${task_name}

    Remove task                         ${task_name}
    Wait Until Page Does Not Contain    ${task_name} 

Should finish a task successfully
    [Tags]    done

    ${task_name}                 Set Variable    Estudar XPath
    Remove task from database    ${task_name}

    Do Login
    Create a new task    ${task_name}
    Should have task     ${task_name}

    Finish task            ${task_name}
    Task should be done    ${task_name}