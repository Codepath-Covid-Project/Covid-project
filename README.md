Original App Design Project - README Template
===

# CovidCapacity

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
An iOS app to help combat COVID-19 by minimizing crowds and exposure. Allows businesses to track how many people are currently in their building, display information on to a map. Could be used to limit COVID-19 by notifying users if there are too many people in a building at one time.

### App Evaluation
[Evaluation of your app across the following attributes]
- **Category:** Health/COVID-19
- **Mobile:** This app would be primarily developed for mobile but would perhaps be just as viable on a computer. Functionality wouldn't be limited to mobile devices, however mobile version could potentially have more features.
- **Story:** Keeps track of people in a building by allowing businesses to count how many people there are a time. The count of a business is then displayed on a real-time map.
- **Market:** Any business or store can use this app for safety concerns.
- **Habit:** This app could be used as often or unoften as the user wanted depending on how often a business owner wants to track COVID-19 within their building.
- **Scope:** First we would like to target businesses in the greater San Diego area and then California if possible. 

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can create an account and login.
* User can display head counts on a map at a specific location.
* Profile page for each business.
* Settings (Accesibility, Notification, General, etc.)

**Optional Nice-to-have Stories**
* Notify for Covid exposure.
* Shows the number of COVID-19 cases 

### 2. Screen Archetypes

* Login 
* Sign Up 
   * Upon Downloading, user is prompted to log in or register for an account 
* Map Screen
   * The top of the screen will have a search bar where the user can search for a specific location.
   * The rest of the screen will be a map view where the user can scroll and tap on a location they want to view.
* Profile Screen
   * Allows user to fill in information about their business and upload a photo.
* Settings Screen
   * Let people change language, app notification settings, and light/dark mode.

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Map
* Profile
* Settings

Optional:
* History for Business accounts

**Flow Navigation** (Screen to Screen)

* Login -> Force the user to login / create account if unable to login
* Search -> look for the name of a specific place to go and see the live head count number
* Profile -> text fields bond to the user's uuid to be modified
* Map -> view the number of people currently in the store
* Settings -> toggle the user preferences for the app

## Digital Wireframes
![](https://i.imgur.com/MwJlKks.png)

## Schema 
[This section will be completed in Unit 9]
### Models


| Property      | Type     | Description                              |
| ------------- | -------- | ---------------------------------------- |
| updatedAt     | DateTime | most recent update of attendance         |
| image         | File     | business profile                         |
| business      | Boolean  | determine whether it is user or business |
| count         | Number   | current attendance                       |
| maxCapacity   | Number   | maximum number of people in a building   |
| phoneNum      | Number   | phone number of a business               |
| language      | String   | to choose language                       |
| storeName     | String   | name                                     |
| objectId      | String   | unique id for the user                   |
| address       | String   | location of the business                 |
| notifications | Boolean  | turning on/off notifications             |
### Networking
- Map Screen
    - (Read/GET) Query all locations of businesses
    - (Create/POST) Create a new marker based on an address
    - (Delete) Delete a marker from the map
    - (Create/POST) Update the count of people in a building
- Profile Screen
    - (Read/GET) Query logged in user object
    - (Update/PUT) Update user profile image, name, number, ![]
and address
- Settings Screen
    - (Update/PUT) Update setting preferences
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
