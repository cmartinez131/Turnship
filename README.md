Original App Design Project - README Template
===



# Turnship

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
Turnship is an app that streamlines the process of candidates finding internships. It breaks down the search process by allowing users to put hashtags on either their candidate profile or their internship/job listing. With this hashtag, our algorithm will match candidates and listings with matching hashtags or similar profile keywords. Candidates will use a Tinder-style system to determine their decision (swipe right to apply to the internship, swipe left to dismiss the internship, swipe up to save the internship and decide later). If a user applies for an internship through our system, we'll share their profile to various recruiters within the same company in order to make a decision. It will show up as pending under a different tab while this decision is being made. If a recruiter accepts a candidate, a messaging system will be opened up between the recruiter and the candidate, allowing either the recruiter or the candidate to send the first message and continue with the application process. Companies will have to set their job posting to a limited amount of time in order to minimize backend data taken up (1 month, 3 months, 6 months, 1 year). Candidate profiles will be made up of their skills, projects, education, names, a brief description, and pictures if a user chooses to upload one.

### App Evaluation
[Evaluation of your app across the following attributes]
- **Category:** Career
- **Mobile:** This app will be on mobile and uses the phones swipe gestures.
- **Story:** Students struggle all the time getting internships and they don't know what they're interested in. This app will allow students to learn about company positions and choose what interests them.
- **Market:** This app will be marketed to students and new graduates looking to get an internship or companies looking to recruit people.
- **Habit:** Students and new grads will use this app during their college career as a part of their internship search.
- **Scope:** Students will be given a queue of internships matching their profile. They will decide whether they'd like to apply or not and swipe accordingly.

## Product Spec


### 1. User Stories (Required and Optional)

**Required Must-have Stories**


- [x] User can sign up or log in as a student or company recruiter
- [x] User can log out
- [] User can swipe interested, not interested, or maybe
- [] Student can match with recruiter
- [] Once matched, recruiter and student can exhange messages
- [] Users can upload pictures or their work and profile picture
- [] Users can tap to view profile of students or company
- [] Backend requirements for student information, company information, messages, and images

**Optional Nice-to-have Stories**

* students can talk to other students
* students can see other students profiles
* companies can post jobs directly from the app instead of going into the backend
* students can successfully message a recruiter
* companies can edit job postings from inside the app

### 2. Screen Archetypes

* Login/Sign-up Page
   * User has ability to login
   * User has ability to sign up
   * User has ability to fill in personal info to create a profile
* User Profile Page
   * Show user's bio, major and relevent info in table view
   * Segue to messaging page
 

---

* Swipe Page
    * Shows candidates jobs that match the things listed on their profile
    * User can swipe up for maybe, right for yes and left for no
* Project Description Page
    * Able to view the description of a student's listed projects on their profile
    * Able to load images related to the project


---

* Pending & Matches Page
   * Able to view matches and pending decisions in one compact view
   * Once matched, create a conversation between the student and the company recruiter
   * Otherwise, show pending
* Conversation Page
   * Conversation saved in backend
   * User can communicate with matched profile

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Login/Sign-Up
* If candidate, you're taken to the swipe page. If recruiter, you're taken to the matched candidate page.
* You can view a candidate profile, a company profile, a job's description, and your matches and pending matches.

**Flow Navigation** (Screen to Screen)

- [x] User Login Page
   * Swipe Page
        * User Profile
   * Matches
* Company Login Page
   * Candidate Table View
   * Messages
- [x] Candidate Sign-Up Page
   * Create a Candidate Profile
       * Swipe Page
- [x] Company Sign-Up Page
   * Create a Company Profile
       * Candidate Table View

## Wireframes
[Add picture of your hand sketched wireframes in this section]
<img src="https://imgur.com/a/NZYSEVe" width=600>

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
[This section will be completed in Unit 9]
### Models
**Users:**
| Property | Type     | Description     |
| -------- | -------- | --------      |
| username | String   | Username of user which user created |
| password | String | Password of user |
| type_of_user | String   | Is user a student or companyy
| position seeking | Boolean | Internship or fulltime |
| profile picture  | object  | User profile picture|
| skills | list[string]   | skills such as programming languages |
| major | String | Major |
| classes| String | Classes |
| bio    | String | bio you see on profile |
| projects    | String | Projects |



**Match**(when students match)
| Property | Type | Descrption |
| -------- | -------- | -------- |
| MatchID | String  | Uniquw ID for the Match |
| student1 | Student  | Student one   |
| student2 | Student  | Student two   |


**Conversation**
| Property | Type | Descrption |
| -------- | -------- | -------- |
| MatchID | String  | Unique ID for the Match |
| student1 | Student  | Student one   |
| student2 | Student  | Student two   |
| messages | list[message]  | A list of messages in the conversation   |
| messages | String  | The student can write a new message   |

**Message**
| Property | Type | Descrption |
| -------- | -------- | -------- |
| MatchID | String  | Uniquw ID for the Match |
| student | Student  | Student one   |
| messages | list[message]  | A list of messages in the conversation   |
| message | String  | The student can write a new message   |


### GIF Of Unit 10 :
![](https://i.imgur.com/aZ0dlhz.gif)


[Add table of models] 
### Networking

- Login/Sign-up Screen
    - (Read/GET) Users can login to their account.
    ```swift=
    PFUser.logInWithUsername(inBackground:"myname", password:"mypass") {
      (user: PFUser?, error: Error?) -> Void in
      if user != nil {
        // Do stuff after successful login.
      } else {
        // The login failed. Check error to see why.
      }
    }
    ```
    - (Create) Users can sign-up for an account
    ```swift=
    func myMethod() {
      var user = PFUser()
      user.username = "myUsername"
      user.password = "myPassword"
      user.email = "email@domain.com"
      // other fields can be set just like with PFObject
      user["phone"] = "123-456-7890"

      user.signUpInBackground {
        (succeeded: Bool, error: Error?) -> Void in
        if let error = error {
          let errorString = error.localizedDescription
          // Show the errorString somewhere and let the user try again.
        } else {
          // Let's fast forward to the app shall we.
        }
      }
    }
    ```
- Profile Screen
    - (Delete) Users can delete their profile
    ```swift=
    PFObject.deleteAll(inBackground: objectArray) {(succeeded, error) in
          if (succeeded) {
              // The array of objects was successfully deleted.
          } else {
              // Opps there was an error. Check the errors localized Description.
          }
    }
    ```
- (Read) Users can view the profile they liked.
    



- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
