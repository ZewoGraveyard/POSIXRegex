POSIXRegex
==========

[![Swift 2.1](https://img.shields.io/badge/Swift-2.0-orange.svg?style=flat)](https://developer.apple.com/swift/)
[![Platforms OS X | iOS](https://img.shields.io/badge/Platforms-OS%20X%20%7C%20iOS-lightgray.svg?style=flat)](https://developer.apple.com/swift/)
[![Cocoapods Compatible](https://img.shields.io/badge/Cocoapods-Compatible-4BC51D.svg?style=flat)](https://cocoapods.org/pods/POSIXRegex)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-Compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Travis](https://img.shields.io/badge/Build-Passing-4BC51D.svg?style=flat)](https://travis-ci.org/Zewo/POSIXRegex)
[![codecov.io](http://codecov.io/github/Zewo/POSIXRegex/coverage.svg?branch=master)](http://codecov.io/github/Zewo/POSIXRegex?branch=master)

**POSIXRegex** provides POSIX Regular Expressions for **Swift 2**.

## Features

- [x] No `Foundation` dependency (**Linux ready**)
- [x] Matches
- [x] Groups
- [x] Replace

## Usage

```swift
import POSIXRegex

let regex = try! Regex(pattern: "hello")
regex.matches("hello") // true
regex.matches("bye") // false

let regex = try! Regex(pattern: "(hello)")
regex.groups("hello") // ["hello"]
regex.groups("bye") // []

let regex = try! Regex(pattern: "(hello) (world)")
let groups = regex.groups("hello world") // ["hello", "world"]
    
let regex = try! Regex(pattern: "hello")
regex.replace("hello world", withTemplate: "bye") // "bye world"
```

## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

> CocoaPods 0.39.0+ is required to build POSIXRegex.

To integrate **POSIXRegex** into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/Zewo/Specs.git'
source 'https://github.com/CocoaPods/Specs.git'
use_frameworks!

pod 'POSIXRegex', '0.1'
```
> Don't forget  `source 'https://github.com/Zewo/Specs.git'`. This is very important. It should always come before the official CocoaPods repo.

Then, run the following command:

```bash
$ pod install
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that automates the process of adding frameworks to your Cocoa application.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate **POSIXRegex** into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "Zewo/POSIXRegex" == 0.1
```

### Command Line Application

To use **POSIXRegex** in a command line application:

- Install the [Swift Command Line Application](https://github.com/Zewo/Swift-Command-Line-Application-Template) Xcode template
- Follow [Cocoa Pods](#cocoapods) or [Carthage](#carthage) instructions.

License
-------

**POSIXRegex** is released under the MIT license. See LICENSE for details.
