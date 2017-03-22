//
//  cloud_ci_sampleUITests.swift
//  cloud-ci-sampleUITests
//
//  Created by Deline Neo on 21/03/2017.
//  Copyright © 2017 Deline Neo. All rights reserved.
//

import XCTest

class cloud_ci_sampleUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExampleUITest() {
        let app = XCUIApplication()
        let textField = app.otherElements.containing(.staticText, identifier:"Enter your name").children(matching: .textField).element
        textField.tap()
        textField.typeText("Bob")
        app.buttons["Go!"].tap()
        
        let alertsQuery = app.alerts
        alertsQuery.staticTexts["Hello Bob"].tap()
        alertsQuery.buttons["Cancel"].tap()        
    }
    
}
