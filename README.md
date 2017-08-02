10 POINTS: (all done)
----------------------
1. Started from the starting-point repository.
	DONE

2. Named your repository mpcs52553-final.
	DONE

3. Resonably complete domain model.
	DONE. I have the following models:
		User
		Book
		Review
		Favorite

4. Resonably complete model validations.
	DONE.
	The User has to have a name and email address.
		> Note: Currently, if you try to Sign Up with an invalid user (i.e. no name or email address), it says that it was sucessful in the web page, but in the actual User database, that person is not added and cannot sign in with empty email addresses/passwords/names.
	The Book has to have all of the parameters filled out except the image URL. If successful, the page will redirect to the main page and display a notice indicating that it is successful. If it doesn't meet the validations, there is currently no notice or error, but it returns to the same "new book" page and does not modify the database at all.

10 POINTS (all done):
----------------------
5. At least one completely RESTful resource.
	DONE.
	I demonstrate adding, deleting, patching, and getting with the books. You may also add and delete a user.

6. Users can sign up, login, and logout.
	DONE.

7. Good use of Bootstrap or custom CSS for reasonable appearance.
	DONE. I used the navbar from the example shown in class and modified some CSS elements to ensure the pages looked reasonably OK.

What I want to add onto this milestone
---------------------------------------
> I want to give users the ability to add books to their list.
> If I have time, I may create another model and have it be "to-read" list, like a wish list. Currently, the only list the user can add to is their 'read' list. This would require a way to indicate which list to add to when the user clicks "Add to List" on the main index page.
> Reviews should be added on the page immediately. Currently the added reviews don't show up. (Bug)
> Edit any suggestions made my TAs / graders.
> I can also add the CSS styles to an actual .css file and call it relatively (instead of adding it into the files themselves).