//
//  TestingMultipleExpectationsTests.swift
//  TestingAsyncUsingExpectationsTests
//
//  Created by Albert Pangestu on 15/12/21.
//  Copyright © 2021 Mohammad Azam. All rights reserved.
//

import XCTest
@testable import TestingAsyncUsingExpectations

class TestingMultipleExpectationsTests: XCTestCase {

    func test_MultipleNotification() {
        
        let alertManager = AlertManager()
        let exp = expectation(forNotification: Notification.Name.alertNotification, object: Notification, handler: nil)
        
        exp.expectedFulfillmentCount = 2
        
        alertManager.postAlert()
        
        wait(for: [exp], timeout: 2.0)
    }

}
