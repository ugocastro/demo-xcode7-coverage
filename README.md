[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/ugocastro/demo-xcode7-coverage/blob/master/LICENSE)
![Platform](https://img.shields.io/badge/platform-ios-lightgrey.svg)
![Language](https://img.shields.io/badge/language-swift-orange.svg)
[![Build Status](https://travis-ci.org/ugocastro/demo-xcode7-coverage.svg)](https://travis-ci.org/ugocastro/demo-xcode7-coverage)
[![codecov.io](https://codecov.io/github/ugocastro/demo-xcode7-coverage/coverage.svg?branch=master)](https://codecov.io/github/ugocastro/demo-xcode7-coverage?branch=master)

## Description
This is a basic project that demonstrates the use of unit and UI tests with code coverage on **XCode 7** using **Swift 2**. It consists in a calculator application that performs basic operations, such as *sum*, *subtraction*, *multiplication* and *division*.

## Development environment
To build and execute this project, the following requirements are needed:
* Mac OS X _10.10.4_ (or higher)
* Xcode _7_

## How to build and execute the tests
Open the `Calculator/Calculator.xcodeproj` file on *Xcode* and press `⌘ + B` to build and `⌘ + U` to execute the tests and generate the code coverage.

##User Interface tests
Xcode 7 comes with UI tests functionality. It records the user actions on application and generate the code to be used on test scenario (it's very similar to the [Selenium IDE plugin](http://www.seleniumhq.org/projects/ide/) for [Firefox](https://www.mozilla.org/en-US/firefox/products/)).
<p>Click on `Record UI Test` button to launch the application and start recording the steps

![Record UI tests](http://i.giphy.com/3o8doWVvcWvFIVaP72.gif)

##Code coverage
In addition to UI tests, the new version of Xcode comes with code coverage. To enable this functionality, act as follows

![Enable code coverage](http://i.giphy.com/d2ZeJJISFDVrTK0M.gif)

To see the code coverage, run the tests and execute the following steps

![See code coverage](http://i.giphy.com/3o8doOOpVrAlveNLva.gif)

## More info
For more info about how to create tests and visualize code coverage, look at this [Speaker Deck presentation](https://speakerdeck.com/ugocastro/unit-and-ui-tests-with-code-coverage-on-xcode-7-using-swift-2).
