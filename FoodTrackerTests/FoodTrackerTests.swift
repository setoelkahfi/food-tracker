//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by SDMobile on 3/3/16.
//  Copyright © 2016 Streetdirectory Pte Ltd. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    // MARK: FoodTracker tests
    // Test to confirm that the Meal initializer returns when no name or negative rating is provided
    
    func testMealInitialization() {
        
        // Success case
        let potentialItem = Meal(name: "Newest meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem);
        
        // Failure case
        
        let noName = Meal(name: "", photo: nil, rating: 4)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Negative rating is not allowed")
        
        
    }

}