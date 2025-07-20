*** Settings ***
Documentation        Elements and actions from the Tasks Screen        

Library              AppiumLibrary

*** Variables ***
${new_task_input}    xpath=//*[contains(@text, "nova tarefa")]
${create_button}     xpath=//*[@resource-id="createTask"]

*** Keywords ***
Create a new task
    [Arguments]        ${task_name}

    Wait Until Element Is Visible        ${new_task_input}

    Input Text        ${new_task_input}    ${task_name}
    Click Element     ${create_button}

Should have task
    [Arguments]    ${task_name}

    ${task_text}    Set Variable    xpath=//*[@resource-id="taskText"][@text="${task_name}"]    
    Wait Until Element Is Visible        ${task_text}    5

Remove task
    [Arguments]    ${task_name}

    ${remove_task_button}    Set Variable    xpath=//*[@text="${task_name}"]/../..//*[@resource-id="removeTask"]
    Click Element       ${remove_task_button}

    ${yes_button}    Set Variable    xpath=//android.widget.Button[@text="SIM"]
    Wait Until Element Is Visible   ${yes_button}
    Click Element   ${yes_button}

Finish task
    [Arguments]    ${task_name}

    Click Element    xpath=//*[@text="${task_name}"]/..

Task should be done
    [Arguments]    ${task_name}

    Wait Until Element Is Visible    xpath=//*[@text="${task_name}"]/..//android.widget.ImageView