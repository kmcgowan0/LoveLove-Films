
import Foundation
import UIKit

class BudgetController: UIViewController{
    
    
    
    @IBOutlet weak var budgetSlider: UISlider!
    @IBOutlet weak var budgetLabel: UILabel!
    let step: Float = 100
    
    @IBAction func BudgetChanged(_ sender: AnyObject) {
        let currentlVaule = round(budgetSlider.value / step) * step
        budgetLabel.text = "Up to £\(currentlVaule)0"
        budgetVar = budgetLabel.text!
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        budgetLabel.text! = budgetVar
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      

     
    }

}
  
