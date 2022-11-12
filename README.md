# Fluidity
## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
#### Description
An app designed to increase the user’s productivity and concentration with the use of different studying methods and recommendations.
#### Category:
Productivity
#### Mobile:
Mobile is necessary for the convenience of students to record their study sessions.
## Mobile: How uniquely mobile is the product experience?
Our product will only be available on mobile. Its purpose is to eliminate distractions and help students improve their grades. We’ll be implementing audio, real-time, and push notifications.
## Story: How compelling is the story around this app once completed?
How clear is the value of this app to your audience?
Because the goal of this app is to ultimately help students perform better in school, students who are actively seeking a productivity tool like a study app will recognize how useful an app like ours can be, especially if it has the correct features.
How well would your friends or peers respond to this product idea?
Our app will offer study techniques to maximize the efficiency of study sessions for students. We believe our friends/peers will respond positively to our product idea.
## Market: How large or unique is the market for this app?
What’s the size and scale of your potential user base?
Anyone that wants to study will have acess to our app but our focus of interests are high school to college level students.
Does this app provide huge value to a niche group of people?
Yes, high school & college students will see an increase in retention rate of different subjects and an increase grades.
## Habit: How habit-forming or addictive is this app?
How frequently would an average user open and use this app?
We hope that users, especially students, will use this app on a frequent basis whenever they plan to study. As a result, the frequency will vary from time to time, but should spike during midterm/final exam periods.
Does an average user just consume your app or do they create?
The usage frequency of this app will depend on the users age group. The average 14 - 25 year olds for example will most likekly have this app running for at least an hour or two on a weekday. This app will help users build a life changing habit of deep focus studying. Reduce times spent on smart phone.
## Scope: How well-formed is the scope for this app?
How technically challenging will it be to complete this app by the end of the program?
//We can use the techniques taught in class to build our app
Is a stripped-down version of this app still interesting to build?
//Yes, it will have a timer and different studying methods
How clearly defined is the product you want to build?

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**
* [x] User can create an account
* [x] User can login 
* [x] User can use the timer
* [x] User can change the duration of the timer

**Optional Nice-to-have Stories**
* [ ] User can add a playlist to listen to music 
* [ ] User has a profile page 
* [ ] User can receive points for successfully completing a study session
* [ ] Use can view a feed of studying tips and recommandations


### 2. Screen Archetypes

* Register - User signs up first then logs into account
   * User is prompted to register upon download
* Login
   * User is prompted to login after registering
* Settings Screen
   * User picks dark/light mode 
* Profile Screen
   * User gets points for completing goals


### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Settings Screen 
* Studying Tips Recommendation Screen 

**Flow Navigation** (Screen to Screen)

* Login Screen
   * Home Screen
* Register Screen
   * Home Screen
* Home Screen
  * Settings Screen
  * Studying Tips Recommendation Screen
* Settings Screen
  * Home Screen
* Studying Tips Recommendation Screen
  * Home Screen 

## Wireframes
![](https://i.imgur.com/BZMJJf4.jpg)
## Schema 
### Models
**User**
| **Property** | **Type** | **Description**                     |
| ------------ | -------- | ----------------------------------- |
| userPoints   | Number   | Number of points earned by user     |
| image        | File     | Image that user posts               |
| rankNumber   | Number   | Rank of user based on points earned |
| username     | String   | Name of user                        |
| password             |String          |Password to access user's account                                     |
| studyTime    | Number   | Amount of time user studied         |
### Networking
**List of network requests by screen**
- Home Screen
    - (Read/GET) Fetch user Spotify 
    ![](https://i.imgur.com/95ZxjG5.png)
- Profile Screen
    - (Update/PUT) Update user profile image
    ![](https://i.imgur.com/JWf04YY.png)
    - (Update/PUT) Update user points
    ![](https://i.imgur.com/KJwq8uA.png)
    
    - (Update/PUT) Update user total study time 
    ![](https://i.imgur.com/RQ8BIZ4.png)

- Studying Tips Screen
    - (Read/GET) Fetch studying tips from external websites
    ![](https://i.imgur.com/eZvMq8b.png)

### 5. GIFs
- User stories: create an account and login
<img src='http://g.recordit.co/8OnSGF1PC4.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />
- User stories: use the timer and change duration
<img src='http://g.recordit.co/iOuagv17Ev.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />
