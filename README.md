# Sports Scoring App

### An app for showing teams and fixtures in a league

This is version 2.0.

I created version 1.0 using Ruby and Sinatra as my first project during week 5 (August 2019) of the CodeClan Professional Software Development course.

Upon completion of the course I have recreated the app using different languages and frameworks in order to further understand the implementation of functionality and design choices.

Since version 1.0 was created using a Mac I felt it would be beneficial to recreate it on Windows from scratch. I began work on version 2.0 in December 2019.

Other versions:
- Version 1.0: [Sports Scoring App - Ruby & Sinatra (created on a Mac)](https://github.com/rcarmitage/codeclan_solo_project-sports_scoring_app_v1.0_ruby_sinatra)
- Version 3.0: [Sports Scoring App - JavaScript & Vue](https://github.com/rcarmitage/codeclan_solo_project-sports_scoring_app_v3.0_javascript_vue)
- Version 4.0 (pending): Sports Scoring App - JavaScript & React

## Brief

### MVP:
A user should be able to…

- Create, edit and delete teams to the league
- Create, edit and delete fixtures
- There should be a way to display all the fixtures for a team and all the teams involved in a fixture
- The app should display if a fixture was won or lost

### Extensions:
- Create a league table to see who is on top of the league
- Self-selected extension: Add "Play a Game" functionality, i.e. the user would select two teams and the app would select a winner from these

## Installation After Pulling from GitHub

- 

## How it works and what it does

- 

Screenshot

- 

Screenshot

- 

Screenshot


Status of the app as of 28th January 2020:
- The framework of the Home, Teams, Fixtures, League Table and About pages is complete. The data is displayed as per the design.
- The individual Team pages do not show any information other than the Team name. I plan to display all the Fixtures for that Team on this page, displaying whether they won or lost.
- The Add Fixture functionality is not finished. It initially worked with the user manually typing in the team ID numbers, however recent updates to the app have removed this functionality. I plan to provide a list or dropdown menu with all teams in the database from which the user will select two, and then a winner and a loser from these. The ADD FIXTURE button will post this to the database and the Fixture will be added to the list on the Fixtures page.
- The DELETE button on the Teams page produces an error if the Team has any foreign key entries in the Fixtures table.
- CSS: There is lots of replication in the structure.css file. I plan to refactor this by giving IDs to many of the elements and bringing the majority of the instructions into a small number of classes. I also plan to finish implementing the buttons.css instructions to the DELETE buttons on the Teams and Fixtures pages.
- I have tried to upload and display this and version 1.0 on Heroku, however I have had difficulty with gems that have produced errors when trying to push to Heroku. I plan to resolve these errors and display this app for users to test.

## My learning

- I found it very useful to go through the process of creating the app on Windows. I now understand more about each step of the process and why it is necessary.
- I was able to spend more time on the presentation of the app after the course than I could during the 6-day project timeframe during the course. The data for the Teams and Fixtures pages was displayed in version 1.0, and in version 2.0 I was able to present it more clearly for the benefit of the user.
- I created the League Table using an SQL query to sort the data by Points and then listing this in a CSS grid. I came up against some barriers in getting the data to display on the page but I am pleased that my initial method of achieving this task and the content of my SQL query were sound, and the difficulties came from unexpected lags in changes showing up through Sinatra. Once I had moved past these it was straightforward to complete the League Table and present the data as per my original design.
- Combining information from the notes provided by CodeClan with that from other sources (documentation, blogs, video tutorials) helped me contextualise my knowledge and start to understand the wider implementation of Ruby, Sinatra and general programming principles.