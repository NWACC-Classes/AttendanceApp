# AttendanceApp

This application provides a means to maintain a roster and track attendance. It is being developed as a class project at Northwest Arkansas Community College. The proposed roadmap is as follows:

Attendance app designed for use on iPad

FIRST VERSION:
1) Display a list of names from data file
2) Scroll (user-controlled) through list of names when it is too long to fit on the screen all at once
3) Mark attendance by tapping the name or on an associated action zone (tapping again to de-select)
4) Provide visual feedback (highlighting? check box?) to show where attendance has already been confirmed
5) Save record of attendance to (new?) data file

SECOND VERSION:
1) Add names to list and save changes to data file
2) Remove names from list and save changes to data file
3) Allow user to alter font size (larger and smaller) on a settings page
4) Allow user to select default entry point on a settings page

THIRD VERSION:
1) Make attendance record date-specific, allowing for multiple dates of attendance to be tracked
2) Default to current date for attendance confirmation
3) Set different date(s) for attendance confirmation
4) Allow user to switch between different dates, updating display (from data file) when attendance was already recorded

FOURTH VERSION:
1) Schedule future attendance dates
2) Allow user to select current date for attendance confirmation from among scheduled dates
3) Convert underlying data management to database rather than text file
4) Distinguish between unique individuals with the same name
5) Removing a name from the list EITHER deletes the entire record from the database OR prevents it from being displayed when "taking attendance" with a default name display filter

FIFTH VERSION:
1) Generate attendance report for a particular (user-selected) date
2) Generate attendance report for a particular (user-selected) name
3) Save reports in a format (PDF? CSV?) readable by other programs
4) Integrate reporting agent with email
5) Integrate reporting agent with cloud service (Dropbox?)

SIXTH VERSION:
1) Allow each record to be assigned to multiple groups
2) Groups may be used as default name display filters
3) Generate attendance report for a particular (user-selected) display filter
4) Allow contact information to be added to individual records

SEVENTH VERSION:
1) Allow user to select between multiple databases or name lists
2) Allow user to extract/import name lists from an app-generated report
3) Allow user to display attendance by date, display attendance by name, display names by group, or display attendance by group and then name
