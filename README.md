README

[Link to deployed client site!]('https://chardbres.github.io/project_2_client/')
[Link to Heroku site!]('https://dry-scrubland-57892.herokuapp.com/whiskeys')

This Rails application is hosted on Heroku and handles all of the back-end functionality for the [Rickhouse](https://github.com/chardbres/project_2_client) single-page-application. It exposes an API for the front-end application to create, read, update, and destroy resources in the database, and serves up requested data based on the current logged-in user.

Technologies used:
1. Ruby/Rails: provides the entire API structure.
2. cURL: authorization/CRUD calls to the Heroku site, to test endpoints from the terminal.
3. git/GitHub: for all version control.

Timeline:
(2019-10-17) - Created whiskey scaffold to create the Whiskeys table. Linked table to Users (belongs-to).
(2019-10-18) - Removed some columns from the Whiskeys table with db migration in order to simplify functionality. Created all auth cURL-scripts to test functionality when deployed to Heroku. Much of the day was spent trying, and failing, to get server to accept whiskey create/read requests (500 error thrown). Lots of fiddling with the whiskey controller, model, serializer (etc.) and re-deploying to Heroku.
(2019-10-21) - Entire day was spent tracking down bug that was causing the 500 error from the server on whiskey create/index. Destroyed and re-created whiskey scaffold, adjusted controllers many times (etc.). Finally discovered some erroneous references in the whiskey serializer/controller. Fixed whiskey controller to only return resources for the current_user.

Unsolved problems/wish-list:
1. Would like to create a many-to-many relationship between users and whiskies with a 'Favorites' table.
2. Would like to populate an initial database with whiskies and allow users to choose from list, or to auto-populate with a search function.
3. Need to update the ERD to reflect the current table structure.
