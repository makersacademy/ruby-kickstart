# Learn To Program

##Ruby Week

Now that you have completed your interview and started the precourse, and need to continue developing your Ruby skills, we recommend that you continue with [Chris Pine's Learn To Program book 2nd Edition](https://drive.google.com/file/d/0Bz17qR4zZedib0M5RnRwWFl3MUk/view).  **Please complete chapters 9-14 before the end of week 3.** 

Please attempt every exercise, submitting the code to us using your newfound git and GitHub skils by forking [https://github.com/makersacademy/learn_to_program](https://github.com/makersacademy/learn_to_program), and submitting a pull request (Note that submitting a pull request will kick off some [Continuous Integration](https://github.com/makersacademy/pre_course/blob/master/pills/continuous_integration.md) <-- see link for more details). 

Do not spend more than an hour on any individual exercise.  The solutions are included at the end of the book.  This week it is better that you cover all the chapters, and review the solutions for any exercises that you cannot complete in under an hour.  Please do not look at any individual solution until you have at least tried each individual exercise.

###Setup Instructions

 - Fork the repo to your own
 - Push to your own fork (check the upstream)
 - Open a pull request straight away
 - Commit and push your code after *each* challenge so the CI server can check your work as you go along.
 - You must get a green tick at the end of the exercise from the CI to pass the week's challenge. 

###For submitting exercises from the Chris Pine Learn to Program Book

If you would like to run the tests associated with each chapter or even individual exercies you can do so as follows.  We use the RSpec library to test the code is working properly.  The RSpec library is available as a Ruby 'gem', which you can install in your computer by typing the following at the command line prompt:

```sh
$ gem install rspec
```

Once you have rspec installed as above, ensure that you have navigated to the root directory of this learn_to_program repo, e.g. 

```sh
cd /Users/JohnDoe/Projects/MakersAcademy/learn_to_program
```

Then if you'd like to check, say, your solution for the chapter 9 'ask' program you can run the following command:

```sh
rspec spec/ch09/ask_spec.rb
```

You might find the output of the command a little different to interpret, but in general the output will have a green colour when the test is passing, and a red colour when some part of the test is failing.  At this stage it is *not* necessary for you to understand how RSpec works, or even be able to make all the tests pass.  We just provide these notes in case you are interested in running the tests locally.

If you are curious feel free to inspect the contents of files like spec/ch09/ask_spec.rb - the contents are pure Ruby, but they use parts of the RSpec library that will make them look very unfamiliar.  You'll be covering RSpec in some detail in the week 1 of the main Makers Academy course, so if this all seems to complicated, just leave it for now, and focus on your best effort to write the code for the Learn to Program exercises.

Of course you can always ask your mentor for help and come back to exercises later when you have an insight, but please don't feel compelled to spend time on exercises at the expense of working through the individual chapters and trying out the code within them by typing it into your own editor and running it on your own computer with Ruby.

If you are keen to explore more of the tests and would like to run more than one at a time please use the following commands:

```sh
rspec spec/ch09/
```

will run all the tests for the chapter 9 exercises (that have tests) and

```sh
rspec spec/ch10/
```

will run all the ch10 tests and so on.  If you want to run every single test at once you can run:

```sh
rspec
```

but be prepared for potentially quite a lot of output! :-)

