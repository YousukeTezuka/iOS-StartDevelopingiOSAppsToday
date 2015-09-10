import UIKit
import XCTest
//@testable import FoodTracker

class FoodTrackerTests: XCTestCase {

    // MARK: FoodTracker Tests
    
    // Test to confirm that the Meal initializer returns when no name or a negative rating is provided.
    func testMealInitialization() {
        // Success case.
        let potentialItem = Meal(name: "Newest meal", image: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        // Failure case.
        let noName = Meal(name: "", image: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badRating = Meal(name: "Really bad rating", image: nil, rating: -1)
        XCTAssertNil(badRating)
    }
    
}
