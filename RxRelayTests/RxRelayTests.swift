//
//  RxRelayTests.swift
//  RxRelayTests
//
//  Created by Wassim on 4/28/17.
//  Copyright © 2017 Wassim. All rights reserved.
//

import XCTest
@testable import RxRelay

class RxRelayTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        var relay = PublishRelay<String>()
        
        let subscription = relay.subsribe { (string ) in
            print("I have Received :\(string )")
        }
        
        relay.accept("Hello")
        relay.accept("World")
        subscription.dispose()
        relay.accept("Will not be emitted ")
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
