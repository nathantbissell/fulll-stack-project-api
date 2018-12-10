This application is a full stack project used to show shoes in a user's shoe closet. The app uses a Ruby on Rails backend that handles all incoming API requests and directs them to the proper application controllers. The backend uses a postgreSQL database to create users, and document their email, id, password, favorite brand and favorite color. The information is linked via a one to many dependency where a user has many shoes.

In this project, we used the prepared User class which handled authentication. If we passed it an email and a password (and the same password if creating the account) then it would complete the login. 

The routes of the rails application were automatically created through the resources, where I also specified custom routes for the shoes table. The routes gave us the ability to run all CRUD actions on the backend properly and feed the server the correct URL in which to navigate to. If the AJAX request's URL did not match up to the routes for the specific crud action, we returned a 500 error. 

Since my model was a "one user has many shoes" relationship, we implemented that in the models file, indicating that when a user is destroyed, their shoes are deleted with it. (dependent destroy)

My serializers for the project also invoked these table dependencies via the migrations specified after scaffolding the database. Users were defined as an ID, Email, Password, Size, Favorite Brand, and Favorite Color.

Shoes were implemented as having an ID, a Brand, Model, Size, and Color. Each shoe belongs to one individual user.

All CRUD actions were thoroughly tested via curl scripts (located in the curl script folder) and returned authorized requests, which would then replicate on the viewable portion of the backend database. If we added a shoe via create.sh, we could then view it on localhost/shoes route.

As for my Controllers, Users referenced the ProtectedController, keeping anyone from accessing their specific information. My shoes referenced the OpenReadController which allowed users to read all information regarding the shoes, and who it belongs to, but they must be signed in and that shoe must belong to them before updating information or deleting that specific shoe.

The biggest issues that I ran into on my backend were fairly easy to avoid, especially next time I work with Ruby on Rails.
-----------------------------------------------------------------------

1) Copy pasting curl scripts from the example templates also pasted invisible characters into the curl script, which caused the script to break when ran as a shell script in the command line. The resolution for this took 3-4 hours of production time away from the final project after raising issues in the queue and then seeking direct assistance from Danny.

2) Curl scripts were referncing the herokuapp instead of the localhost, causing some data to be sent to heroku, but then not available on localhost. This issue took maybe 1-2 hours before realizing the URL was incorrect.

3) I did not know that the Users class was already created, and attempted to scaffold a resource named "Customers". After developing the curl scripts and migrating the data with Customers, I was told that yes it would work, but all the user authentication was built with the Users, and I would not be able to sign a customer in. So I ended up removing the migration and undoing the scaffold for Customers. Naturally this took a couple hours from production time.

Unsolved problems would be
-----------------------------------------------------------------------

1) removing the Customers files completely, since they were not touching the rest of the code they remain in the files but not actively doing anything.

2) Creating a many-many relationship with a new schema named "store", where store and users both have many shoes. Build 3 of my application will hopefully feature this.

-----------------------------------------------------------------------

LINKS

Link to Wireframe: https://i.imgur.com/Fj2Evol.jpg

Link to ERD: https://www.lucidchart.com/invitations/accept/ac43ed96-f9fa-4de1-bb7a-cbe7d0d88929