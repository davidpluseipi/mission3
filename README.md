# Mission 3
# Linux and HPC Basics

## Statement of Academic Integrity

In compliance with the ISU Academic Misconduct Policy expectations, I will not give or receive unauthorized aid in the completion of this lab.  This includes violating the "empty hands" policy for discussing/working on the lab, uploading material to online share sources (e.g. Chegg. Com and others), and using unauthorized sources to inform my work. I understand that if I am aware of cheating on this assignment, I have an obligation to inform the Professor. I also understand that the Professor will take action consistent with the ISU Academic Misconduct Policy if s/he detects acts of academic dishonesty as well as with expectations stated in the course syllabus.

- [ ] By checking this box, I agree to the above statement.


| Assignment Dates | |
| --- | --- |
|**Assigned on**: | Sep. 9th 2021 |
|**Due on**: | Sep. 16th @ 23:59 |
|**Accepted on**: | |


## Grading Rubric

|Deliverable | Maximum Points |
|---|---|
| Exercise 1 | 10 |
| Exercise 2 | 5 |
| Exercise 3 | 10 |
| Exercise 4 | 5 |
| Exercise 5 | 5 |
| Exercise 6 | 10 |
| Exercise 7 | 5 |
| Report | 50 |
| Total Score | 100 |


## Introduction

**Always create a branch as a first step!** Creating a branch is one of the most essential best practices for working in a repository.  It lets you easily collaborate with larger groups, organize your work, and work in isolation.

**develop**: It is standard practice to do active development on a branch called "devel-netid", as follows:

    git branch devel-netid
    git checkout devel-netid
    git push origin devel-netid

This creates a new branch from your current working branch, switches to that branch, and then pushes the new branch to the remote repository (GitHub).

To save your changes, always make sure you are on your development branch:

    git checkout develop

    <work on your assignment>

    git add <new or changed files> or git add -A to add all changed files
    git commit -m "A descriptive note of what you changed"
    git push origin develop

When you are done, open a PR requesting your develop branch be merged to master.
The time and date of your pull request from develop into main will determine your submission time. See the mission manual for details.

When you have completed every task with a check-box below, make sure all your work is committed to git and pushed to GitHub.

## Task List:
- [ ] Read the mission write-up
- [ ] Clone this repo into your HPC home folder
- [ ] Complete all 7 exercises from the ISU HPC tutorial on UNIX in your repo
- [ ] Save your script history file as mission3.log (don't forget to do Control-D when done)
- [ ] Push your changes to the devel-netid branch
- [ ] Complete your report in the main.tex file
- [ ] Open a new Pull Request (and leave it open for the grader to find)
