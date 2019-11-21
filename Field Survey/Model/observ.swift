



import UIKit

enum Classification: String {
        case amphibian
        case bird
        case plant
        case fish
        case insect
        case mammal
        case reptile
        
        var image: UIImage? {
            return UIImage(named: self.rawValue + "Icon")
        }
 }

