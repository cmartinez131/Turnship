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

* User can sign up or log in as a student or company recruiter
* User can log out
* User can swipe interested, not interested, or maybe
* Student can match with recruiter
* Once matched, recruiter and student can exhange messages
* Users can upload pictures or their work and proofile picture
* Users can tap to view profile of students or company
* Backend requirements for student information, company information, messages, and images

**Optional Nice-to-have Stories**

* students can talk to other students
* students can see other students profiles
* companies can post jobs directly from the app instead of going into the backend
* students can successfully message a recruiter

### 2. Screen Archetypes

* Login Page
   * User has ability to login
   * User has ability to sign up
   * User has ability to switch between candidate page and recruiter/company page
* Sign-Up Page
   * User has ability to fill in personal info to create a profile
* Student Profile Page
   * Show student projectsin table view
   * Segue to project description page
* Company Profile Page
   * Shows company information including link to company website
* Swipe Page
   * Shows candidates jobs that match the things listed on their profile
   * User can swipe up for maybe, right for yes and left for no
* Project Description Page
   * Able to view the description of a student's listed projects on their profile
   * Able to load images related to the project
* Pending & Matches Page
   * Able to view matches and pending decisions in one compact view
   * Once matched, create a conversation between the student and the company recruiter
   * Otherwise, show pending
* Candidate Table View Page
   * Able to view all candidates who applied to certain position on one page
   * ...
* Conversation Page
   * Conversation saved in backend
   * Recruiter from company can chat with a student

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Login/Sign-Up
* If candidate, you're taken to the swipe page. If recruiter, you're taken to the matched candidate page.
* You can view a candidate profile, a company profile, a job's description, and your matches and pending matches.

**Flow Navigation** (Screen to Screen)

* Candidate Login Page
   * Swipe Page
        * Company Profile
   * Pending & Matches
   * Student Profile
* Company Login Page
   * Candidate Table View
   * Messages
* Candidate Sign-Up Page
   * Create a Candidate Profile
       * Swipe Page
* Company Sign-Up Page
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
[Add table of models]
### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
