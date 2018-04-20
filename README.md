# README

### Setup

First let's make sure you can run the app locally

- use ruby 2.5.0
- `bundle`
- `rake db:setup` to get a db w/ some sample data.
- `rake test test:system` and ensure everything passes.
- `rails s` and make sure you can view http://localhost:3000/ and see the example data

Email jeffrey@dribbble.com if bump into trouble.

### Intro

The imaginary company MultiSuperMegaCorp wanted a CRM (Customer relationship management application). Rather than using any of the perfectly good existing CRMs, they insisted on writing their own (because of course they did).

Unfortunately the dev they hired to do it dropped off the radar almost immediately. That's where you come in...

### What works so far

We can enter in basic data on people. That's... about it.

There is one cool feature: the app tracks every change to a person record in the db. The dev had promised to implement "undo" functionality to roll back any change but they never got around to it.

### Goals

Here's the features we'd like for you to build:

- Show a list of changes on each person's page.
    - The seed data already includes a change or two for the example people
    - Don't worry about pagination or perfect styling, just try to display each change in an easy-to-read way.
- Add functionality to undo any change
- Since undoing a change will create a change record too, it'd be nice to visually indicate which changes were the result of an undo.

### Instructions

Complete as many goals above as you wish in the amount of time you want to spend on this. Don't feel like you have to complete each goal. We're mostly interested in learning about how you think and communicate.

Try to use atomic commits with well-written commit messages (the current commit messages in this repo are not good examples).

Submit a PR for each meaningful change. Perhaps it makes sense to do one PR per goal but maybe you'll see better places to draw the lines.

Remember that [you can submit a PR against a branch besides master](https://help.github.com/articles/creating-a-pull-request/#changing-the-branch-range-and-destination-repository) so you might end up with PRs that build off of each other. e.g.:

- PR#1 for branch `goal-1-show-changes` against `master`
- PR#2 for branch `goal-2-undo-changes` against `goal-1-show-changes`
- PR#3 for branch `goal-3-show-undos` against `goal-2-undo-changes`

This approach will help keep each PR meaningful and keep it easy for reviewers to follow along.

### Next steps

Once you're comfortable with your PR(s), email Chloe and we'll schedule a call with a couple Dribbble devs. Before the call, the devs will look over your PRs and maybe add some comments. Be prepared to answer questions about your implementation choices and how you approached each goal. Again, the goal isn't to ask trick questions or anything like that -- we just want to see how you think and communicate.
