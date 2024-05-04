//
//  SkillBoxDiskUITests.swift
//  SkillBoxDiskUITests
//
//  Created by Alex on 28.08.2023.
//

import XCTest

final class SkillBoxDiskUITests: XCTestCase {
    
    var app: XCUIApplication!
    
    override func setUp() {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }
    
    override func tearDown() {
        app.terminate()
    }
    
    func test_succesfylyDisp(){
                
    }
}
