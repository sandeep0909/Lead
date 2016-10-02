# Leads Application for a sales organization

## This is an Intermediate level project for sales persons to track their leads and the activities conducted by them

# This application is built using the following technology:
1. Rails 4
2. Bootstrap
3. Html
4. Ruby
5. bCrypt

## Business requirements/Use Cases

There are two user roles
1) Sales Team and 
2) Supervisor

The application is built using roles level priviledge

The Sales team will have the ability to create their own accounts and contacts and should have the ability to create and associate activities to their contacts

The sales supervisor should have the ability to view the contacts and activities for all his/her team members

Further the sales supervisor should have ability to create his/her own contacts and activities

The system administrator should have visibility to all users in the system and all their records

The system is secured by using bcrypt password protection and authentication system

## ERD

1. User Model : Name , email, password
2. Contact Model: Name, email, phone
3. Activities: Name, description, status

## Relationships
1. User has many contacts
2. Contact has many activities

# Minimum Viable product
1. Ability to put role based log in
3. Ability to have users enter their contacts/activities and accounts
4. Ability to have supervisor see more data than team members
5. Ability to bcrypt password and then authenticate


# Credits:
1. Philippe 
2. Jimmy
3. Conrad
6. All my friends in WDI#36


# Phase 2 upgrades:
1. Make a Q&A section available for all the team members 
2. Make the supervisor able to assign accounts to team members


Terms of use:
Use of this app is for learning purpose only. Using it for any other purpose is strictly prohibited.

@ 2016 all rights reserved - Sandeep Panigrahi