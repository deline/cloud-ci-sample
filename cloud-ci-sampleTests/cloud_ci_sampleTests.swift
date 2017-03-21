//
//  cloud_ci_sampleTests.swift
//  cloud-ci-sampleTests
//
//  Created by Deline Neo on 21/03/2017.
//  Copyright © 2017 Deline Neo. All rights reserved.
//

import XCTest
@testable import cloud_ci_sample

class cloud_ci_sampleTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testPassingTest() {
        XCTAssert(1 == 1)
    }
    
    func testFailingTest() {
        XCTAssert(1 == 2, "1 does not equal 2")
    }
    
}
