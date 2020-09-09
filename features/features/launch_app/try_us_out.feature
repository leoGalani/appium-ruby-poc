# language: en

Feature:
	As a User, I want to be able to launch the app.

	@smoke_test	
	Scenario: User can see Try us out
		Given the user has opened the app and the app main page is displayed
		When  the user click on the Try us out button