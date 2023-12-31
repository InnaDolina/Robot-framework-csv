*** Settings ***
Documentation    Use this layer to get this data from external files
Library    ../CustomLibs/Csv.py


*** Keywords ***
Get CSV Data
    [Arguments]    ${Filepath}
    ${Data} =    Read Csv File    ${Filepath}
    [Return]    ${Data}
