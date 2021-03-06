Background: 

	Given the following courses exist:
	| title                       | tags                | content                                                        |
	| Introduction to HTML5       | beginner,web        | This is and HTML5 course. You must build a website from sratch |
	| Advanced Android            | advanced,mobile     | Here you will build a sick android app. Strap up!              |
	| Object Oriented Programming | intermediate,coding | Here you must build classes with inheretance in Java           |

	Given the following users exist:
	| first_name | last_name | email               | password   |
	| Sebastian  | Delgado   | sd@gmail.com        | cs169rocks |
	| Ryan       | Wilson    | hotmale@hotmail.com | ilovebacon |
	
	Given that sd@gmail.com is logged in
	Given that I am on the "Introduction to HTML5" page

Scenario: Upload file and get feedback

	When I submit my assignment
	Then I should see "Your file has been submitted for grading" message
	Then I should be on the "Introduction to HTML5" page
	When I press on "profile"
	Then I should be on the "Profile" page
	Then I should see the following submission: "Introduction to HTML5", "Pending"
	Given that my "Introduction to HTML5" submission gets graded with a "B"
	When I press on "profile"
	Then I should see the following submission: "Introduction to HTML5", "B"
	 
