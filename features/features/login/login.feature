# language: en

Feature:
	Login

	Scenario: Deny access to wrong credentials
		Given the user has opened the app and the app main page is displayed
		When  the user access the login screen
        Then  the user should not be able to access the wrong credentials:
        | email | password |
        | foo@bar.com | 1234 | 
        | bar@foo.com | xpto |