# SKKeyboardResigner

[![CI Status](http://img.shields.io/travis/skyweb07/SKKeyboardResigner.svg?style=flat)](https://travis-ci.org/Oscar Duran/SKKeyboardResigner)
[![Version](https://img.shields.io/cocoapods/v/SKKeyboardResigner.svg?style=flat)](http://cocoapods.org/pods/SKKeyboardResigner)
[![License](https://img.shields.io/cocoapods/l/SKKeyboardResigner.svg?style=flat)](http://cocoapods.org/pods/SKKeyboardResigner)
[![Platform](https://img.shields.io/cocoapods/p/SKKeyboardResigner.svg?style=flat)](http://cocoapods.org/pods/SKKeyboardResigner)

## Description

With SKKeyboardResigner you can forget about resigning the keyboard by yourself by adding a big button inside a view or doing some 'ñapas' like that. This library takes care of resigning the keyboard for the view you want without doing nothing.

## Usage

There are two ways of using this library

1.
Set your UITextFields inside a view container and set the View to subclass SKKeyboardResignerView

2.
You can directly call the SKKeyboardResigner class methods:

![alt text](https://github.com/skyweb07/SKKeyboardResigner/Resources/subclass_sample.png "Subclass sample")

```objective-c
[SKKeyboardResigner attachObserverToView:viewToObserve]; // If you only want to observe that View UITextFields subviews
```

or

```objective-c
[SKKeyboardResigner attachObserverToView:viewToObserve textFieldsToObserve:textField1, textField2, nil]; // If you want to observe any view and any UITextFields
```

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

SKKeyboardResigner is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "SKKeyboardResigner"
```

## Author

Oscar Duran, skyweb09@hotmail.es

## License

SKKeyboardResigner is available under the MIT license. See the LICENSE file for more info.
