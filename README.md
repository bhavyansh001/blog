# Blog

This README would normally document whatever steps are necessary to get the
application up and running.

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

This project is built using Rails 7.0.4
Ruby Version 3.1.2p20
sqlite3 version 3.39.4

Additional gems added-
* Devise, for user management
* Ransack, for searching an article

# About the Project-
A user can sign up in to be able to write blog posts. CRUD operations embedded.

The blogs written by a user is associated with their account and cannot be viewed/edited by other users. Any mischief redirects back to the homepage. DEVISE gem is used for authentication.

Database
* Sqlite3 database is used in the development environment. The query for displaying all users in dbconsole is: SELECT * FROM Users;

Recent Modifications
* Added a Public view where any registered user can generate public posts which will be visible to all, along with the name of the author.
* When creating articles, the user can choose to keep the article public, private or archived, archived articles are hidden even from the user and can be viewed in a separate view(dropdown). This is accomplished using Concerns in models following DRY.

* Users can add comments