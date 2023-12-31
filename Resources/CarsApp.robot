*** Settings ***
Resource  ../Resources/PO/SignIn.robot

*** Keywords ***
Login with Many Invalid Credentials
    [Arguments]    ${InvalidLoginScenarios}
    FOR    ${LoginScenario}    IN    @{InvalidLoginScenarios}:
        Run Keyword And Continue On Failure    Navigate to Sign In Page
        Run Keyword And Continue On Failure    Attempt Login    ${LoginScenario}
        Run Keyword And Continue On Failure    Verify Login Page Error Message    ${LoginScenario}
    END

Navigate to Sign In Page
    SignIn.Navigate To

Attempt Login
    [Arguments]  ${Credentials}
    SignIn.Enter Credentials  ${Credentials}
    SignIn.Click Submit
    Sleep  1s

Verify Login Page Error Message
    [Arguments]  ${ExpectedErrorMessage}
    SignIn.Verify Error Message  ${ExpectedErrorMessage}

