POSIXRegex
==========

[![Swift 2.2](https://img.shields.io/badge/Swift-2.2-orange.svg?style=flat)](https://developer.apple.com/swift/)
[![Platforms Linux](https://img.shields.io/badge/Platforms-Linux-lightgray.svg?style=flat)](https://developer.apple.com/swift/)
[![License MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=flat)](https://tldrlegal.com/license/mit-license)
[![Slack Status](https://zewo-slackin.herokuapp.com/badge.svg)](http://slack.zewo.io)

**POSIXRegex** provides POSIX Regular Expressions for **Swift 2.2**.

## Features

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

- Add `POSIXRegex` to your `Package.swift`

```swift
import PackageDescription

let package = Package(
    dependencies: [
        .Package(url: "https://github.com/Zewo/POSIXRegex.git", majorVersion: 0, minor: 2)
    ]
)
```

## Community

[![Slack](http://s13.postimg.org/ybwy92ktf/Slack.png)](http://slack.zewo.io)

Join us on [Slack](http://slack.zewo.io).

License
-------

**POSIXRegex** is released under the MIT license. See LICENSE for details.