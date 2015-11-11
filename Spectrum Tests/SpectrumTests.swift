// SpectrumTests.swift
//
// The MIT License (MIT)
//
// Copyright (c) 2015 Zewo
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import XCTest
import Spectrum

class SpectrumTests: XCTestCase {
    func testInvalidRegex() {
        var called = false
        do {
            let _ = try Regex(pattern: "(")
            XCTAssert(false)
        } catch {
            called = true
        }
        XCTAssert(called)
    }

    func testMatches() {
        let regex = try! Regex(pattern: "hello")
        let matches = regex.matches("hello")
        XCTAssert(matches)
    }

    func testNotMatches() {
        let regex = try! Regex(pattern: "hello")
        let matches = regex.matches("bye")
        XCTAssert(!matches)
    }

    func testGroup() {
        let regex = try! Regex(pattern: "(hello)")
        let groups = regex.groups("hello")
        XCTAssert(groups == ["hello"])
    }

    func testGroups() {
        let regex = try! Regex(pattern: "(hello) (world)")
        let groups = regex.groups("hello world")
        XCTAssert(groups == ["hello", "world"])
    }

    func testNoGroups() {
        let regex = try! Regex(pattern: "(hello)")
        let groups = regex.groups("bye")
        XCTAssert(groups == [])
    }

    func testReplace() {
        let regex = try! Regex(pattern: "hello")
        let string = regex.replace("hello world", withTemplate: "bye")
        XCTAssert(string == "bye world")
    }

    func testNoReplace() {
        let regex = try! Regex(pattern: "bye")
        let string = regex.replace("hello world", withTemplate: "bye")
        XCTAssert(string == "hello world")
    }
}
