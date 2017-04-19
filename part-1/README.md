# Part 1: JavaScript Objects
## Summary
In Part 1 of the assessment, we're going to write JavaScript.  Specifically, we're going to define a pair of custom objects:  `Stamp` and `StampCollection`.  Each of these custom objects will have properties and behaviors specific to itself.  Tests have been written to guide you through the development of each object.


### Reading Jasmine Tests
The tests describing the behaviors of our custom objects have been written using Jasmine, which might be unfamiliar to you.  That's perfectly fine.  We won't be writing any Jasmine tests today—just reading them.  Jasmine's syntax is very similar to RSpec's; we'll see `describe()` and `it()`—only in JavaScript, not Ruby.  When we call either of these functions, instead of passing a block as we would in Ruby, we'll pass a function.

The files containing the tests are located within the `spec/` directory; the files are named `stamp_spec.js` and `stamp_collection_spec.js`.  Read through them as you need to.


### Running Jasmine Tests
We won't run the tests from the command line.  Instead we'll run them in the browser, by opening the file `SpecRunner.html`.  This HTML file loads the Jasmine JavaScript library, the application code that we'll write, and the files containing the tests.  It runs the tests and then displays the outcome of the tests in the browser.


## Releases
### Release 0: Stamp
We'll start by focusing on the tests describing our stamp (see `spec/stamp_spec.js`).  To run the tests, open the file `SpecRunner.html` in a browser. On the command line navigate to the `part-1` directory and then run
...


```
$ open SpecRunner.html
```

... this should open the HTML file in the default browser.

When the page loads, the tests in `spec/stamp_spec.js` will run. All of them will be failing.  Start by fixing the first test in `spec/stamp_spec.js`.  To make the tests in `spec/stamp_spec.js` pass you will make edits to `stamp.js`.  Continue onward by fixing the remaining tests.

You are also provided an English-language version of the tests below. We
recommend you carefully read the spec files and English-language requirements to determine the code you need to write.


#### Context
Assume we create an instance of `Stamp` that is initialized with a name, issue date, and an `Array` of numbers representing appraisal values for the stamp. You may assume this happens before each test.


#### Tests
* The new instance's name matches the one that was passed in during initialization.
* The new instance's issue date matches the one that was passed in during initialization.
* The new instance's appraisal values has the same values that were passed in during initialization.
* The new instance can return an average appraisal value that is computed based on the content of the appraisal values that were passed in during initialization.
* The new instance can return the maximum appraisal from the appraisals passed in during initialization.

Once all the tests are passing, you're done with *Release 0*!


### Release 1: Stamp Collection
Once the tests for the custom stamp object pass, move on to the stamp collection object type.  Just as above, start by fixing the first test in
`spec/stamp_collection_spec.js`. sTo make the tests in `spec/stamp_collection_spec.js` pass you will make edits to `stamp_collection.js`. Continue onward by fixing the remaining tests.

You are also provided an English-language version of the tests below:


#### Context
Assume that three `Stamp`s are created. A new instance of `StampCollection` is initialized with an Array of these `Stamp`s.  You may assume this initialization happens before each test.


#### Tests
* The new instance's `stamps` Array has the same stamps that were passed in during initialization.
* The new instance's method `stampNamed` searches through the `stamps` and returns the first stamp whose name matches the value passed to the method.
* The new instance's method `stampsIssued` searches through the `stamps` array to find the ones whose issue date matches the value passed to the method.
* The new instance's method `value` calculates the maximum total value of the collections based on each stamps maximum appraisal value.

## Conclusion

Once all the tests have passed, you have completed Part 1 of the assessment. If you haven't done so already, commit your changes and move on to Part 2.
