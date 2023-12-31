
*** Variables ***
# Configuration
${BROWSER} =                          chrome
${ENVIRONMENT} =                      prod
@{BASE_URL}                           dev=https://dev.cars.com/    qa=https://qa.cars.com/    prod=https://www.cars.com/
${LOGIN_URL} =                        profile/secure/login
${INVALID_CREDENTIALS_PATH_CSV} =     C:\\Projects\\Robot\\data driven csv\\Data\\Users.csv
