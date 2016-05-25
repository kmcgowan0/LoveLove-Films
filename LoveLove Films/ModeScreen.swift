
import UIKit

class ModeScreen: UIViewController{
    
    @IBOutlet weak var portfolioBtn: CustomButton!
    
    
      
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let img = UIImage(named: "navbarblue")
        navigationController?.navigationBar.setBackgroundImage(img, forBarMetrics: .Default)
    }
}