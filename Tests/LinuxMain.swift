#if os(Linux)

import XCTest
@testable import POSIXRegexTestSuite

XCTMain([
    testCase(POSIXRegexTests.allTests)
])

#endif
