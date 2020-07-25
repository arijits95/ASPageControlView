# ASPageControlView

[![CI Status](https://img.shields.io/travis/tesla-nikola/ASPageControlView.svg?style=flat)](https://travis-ci.org/tesla-nikola/ASPageControlView)
[![Version](https://img.shields.io/cocoapods/v/ASPageControlView.svg?style=flat)](https://cocoapods.org/pods/ASPageControlView)
[![License](https://img.shields.io/cocoapods/l/ASPageControlView.svg?style=flat)](https://cocoapods.org/pods/ASPageControlView)
[![Platform](https://img.shields.io/cocoapods/p/ASPageControlView.svg?style=flat)](https://cocoapods.org/pods/ASPageControlView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
Xcode 9 and Swift 4

## Installation

ASPageControlView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ASPageControlView'
```
![alt-text](https://github.com/arijits95/ASPageControlView/blob/master/Resources/ASPAgeControlDemoVideo.gif)

A simple and easy to use page control view with a beautiful animation to mark the change in page.

## Usage

Drag a view onto the storyboard and set it class to ASPageControlView. Provide a width and height constraint for the page control view. 

An example demonstrating how to calculate the width and height of the page control : 
```
Padding between cirlces = 10
Diameter of circle = 20
Number of pages = 5
Then set, 
Height of page control = Diameter of circle
Width of page control = (Number of pages) * (Diameter of circle) + (Number of pages - 1) * (Padding between cirlces)
```

Customize the appearance of the page control view by modifying its attributes listed in Attributes Inspector.

![alt-text](https://github.com/arijits95/ASPageControlView/blob/master/Resources/PageControlAttributes.png)

You can also create and customize the appearance of the page control programatically.
```swift
let pageIndicatorView = ASPageControlView(frame: CGRect(x: 0, y: 0, width: 140, height: 20))
pageIndicatorView.activeColor = UIColor.black
pageIndicatorView.inactiveColor = UIColor.black.withAlphaComponent(0.2)
pageIndicatorView.borderColor = UIColor.black
pageIndicatorView.borderWidth = 1.0
pageIndicatorView.padding = 10.0
pageIndicatorView.totalPages = 5
pageIndicatorView.animationDuration = 0.3
```

## Author

arijits95,arijits95@gmail.com,tesla-nikola, sohamray91@gmail.com

## License

ASPageControlView is available under the MIT license. See the LICENSE file for more info.
