import UIKit

class Meal {

    // MARK: Properties
    
    var name: String
    var image: UIImage?
    var rating: Int
    
    // MARK: Initialization
    
    init?(name: String, image: UIImage?, rating: Int) {
        // Initialize restore properties.
        self.name = name
        self.image = image
        self.rating = rating
        
        // Initialization should fail if there is no name or if the rating is negative.
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
    
}