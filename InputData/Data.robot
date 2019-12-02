*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://www.phptravels.net/

# USER Dictionaries
&{UNREGISTERED_USER} =  email=unregistered@gmail.com  password=unregistered  expected_error=Invalid Email or Password
&{INVALID_PASSWORD_USER} =  email=user@phptravels.com  password=invalid  expected_error=Invalid Email or Password
&{INVALID_EMAIL_USER} =  email=invalid@gmail.com  password=demouser  expected_error=Invalid Email or Password
&{BLANK_USER} =  email=#BLANK  password=#BLANK  expected_error=Invalid Email or Password
&{VALID_USER} =  email=user@phptravels.com   password=demouser

# FLIGHT Dictionaries
&{HOTEL_DETAILS} =  destintion=Tokyo  checkIn=12-12-2019  checkOut=30-12-2019


