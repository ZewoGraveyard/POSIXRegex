POSIXRegex
==========

[![Swift][swift-badge]][swift-url]
[![Platform][platform-badge]][platform-url]
[![License][mit-badge]][mit-url]
[![Slack][slack-badge]][slack-url]

**POSIXRegex** provides POSIX Regular Expressions for **Swift 3.0**.

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
        .Package(url: "https://github.com/Zewo/POSIXRegex.git", majorVersion: 0, minor: 4)
    ]
)
```

## Community

[![Slack](http://s13.postimg.org/ybwy92ktf/Slack.png)](http://slack.zewo.io)

Join us on [Slack](http://slack.zewo.io).

License
-------

**POSIXRegex** is released under the MIT license. See LICENSE for details.

[swift-badge]: https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat
[swift-url]: https://swift.org
[platform-badge]: https://img.shields.io/badge/Platform-Mac%20%26%20Linux-lightgray.svg?style=flat
[platform-url]: https://swift.org
[mit-badge]: https://img.shields.io/badge/License-MIT-blue.svg?style=flat
[mit-url]: https://tldrlegal.com/license/mit-license
[slack-image]: http://s13.postimg.org/ybwy92ktf/Slack.png
[slack-badge]: https://zewo-slackin.herokuapp.com/badge.svg
[slack-url]: http://slack.zewo.io
