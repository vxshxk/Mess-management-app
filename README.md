  # Mess Management App

# List of Implemented features
1. User SignIn/SignOut.
2. Admin can login though special admin credentials.
3. On Signing in user is shown a dashboard having his personal details as well as his mess details (Shown onnly after a mess is allotted).
4. If the data isn't switched on cached data is displayed.
5. An admin can click on the + button on the app bar to create a new mess and set the mess attributes (name, size, mess menu etc.).
6. All the messes created by the admin will be displayed on the 'mess list' page as soon as the user creates a mess.
7. Admin can delete any mess by (only after) reallocating the members of the mess.
8. Users can click on any mess on the list to check out the mess money.
9. Users can apply to a mess by tapping on the + next to the mess name on the list
10. Users can check their application status by tapping on the notification button on the app bar to see if their request has been accepted or rejected or still pending.
11. Once the user applies for a mess, the admin recieves that request in the 'applicants list' page.
12. List of applications is filtered on the basis of mess.
13. Admin can either decide to accept the mess change request or reject it.
14. The admin can also voluntarily shift or remove any user from any mess, all by themselves.
15. Admin can't add anybody to the mess if the mess is full.
16. Admin can change the size of the mess by tapping on the edit button on the mess tile in the mess list.
17. The admin can see the list of all the users in a mess by tapping on the mess tile in the mess list.
18. The + button for the user is disabled for his own mess, so that he can't apply for the same mess again.
19. User's current mess is displayed on the top of the 'mess list' page.
20. Users have a 'mess panel' page where they are shown their mess balance, option to Top Up and spend for food in the mess.
21. Users will be alerted if they're short on balance, and if they run out of balance their spend button will be disabled.
22. Most of the corner caes are taken care of.

 # Admin Credentials

 # List of UnImplemented features


1. Editing user's personal details.
2. Partially implemented notifications
3. Editing mess menu

Note: Leaves wouldn't be required in this case as money is deducted only if user spends in the mess.

# List of known bugs

1. The mess tile in applications list still stays even if all the applications are taken care of (Though it will say the number of applicants from this mess is zero).
2. Followed the old DDD architecture by resocoder.
3. On any login error, it just redirects you to a new login page without mentioning what the error was.
4. FCM notifications (Although I implemented notifications they were causing certain errors in other features that's why had to remove them. The code is still available on the 'notifications' branch.

# Operating System used 
Windows, Flutter version - 3.16.5

# Interests in UI/UX
I don't use any software for UI, but I like designing UI and try to keep it clean and minimal.

# References used
1. ResoCoder
2. The Net Ninja
3. Firebase docs
4. StackOverFlow
5. Previous experience with projects

# Usecase Screen Recording Video
Here's the main video:
https://github.com/vxshxk/IRIS_2024_VISHAK_KAMATH_221EC226/assets/115456558/bec5a7c4-75e4-4567-8ebc-2d26faefb90a

Here's the screen recording for the next version containing notifications:
https://github.com/vxshxk/IRIS_2024_VISHAK_KAMATH_221EC226/assets/115456558/5d5ba6f5-7bf7-4dd0-9dab-e236aaf939c2





