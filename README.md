# Enumerable Challenges

This repository follows our hero during a typical work day at WidgetCo. Over the course of the day, our hero will face coworkers who will present challenges that need some code written to solve a problem they're facing.

You'll write tests based on the challenge and then an implementation to make those tests pass.

How you structure your tests and your code is up to you (and part of the exercise). You can use your own sample data and structure it anyway you like.  Check out the [Qunit](https://api.qunitjs.com/) documentation for help with how to test.  The easiest way to go about setting up the file structure would be to have both the methods and the tests in one file.  Check out the example below:

in `test/myFunction_test.js`

```js
myFunction: function() {
  return "this is my function"
};

test( "Test 1", function() {
  ok(myFunction(), "this is my function", "returns correct words");
});
```

You should make the best possible use of UnderscoreJS.

## Submission Instructions

* One member of your pair/group should [fork][] this repository to his or her account.
* As you create files and solve the challenges, you should make frequent commits.
* At the end of the session, you should create a pull request.

[fork]: https://github.com/turingschool-examples/enumerable-challenges

## Learning Goals

* Demonstrate an understanding of the methods Ruby's Enumerable has to offer.
* Implement TDD by creating tests and sample data from scratch.
