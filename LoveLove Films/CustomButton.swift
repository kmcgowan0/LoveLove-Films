
import Foundation
import UIKit

class CustomButton: UIButton {
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.layer.cornerRadius = 0;
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 1.5
        
        
    }
}
