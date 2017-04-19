import Foundation
import UIKit

var videoPlatform = Int()

class PlatformController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    
    @IBOutlet weak var platformPicker: UIPickerView!
    
    
    
    var platformPick: [String] = [String]()

    
    var platform = ["Promotional/Intro", "Product/Explainer", "Testimonial Video", "Viral"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        platformVar = "Promotional/Intro"
        
        self.platformPicker.delegate=self
        self.platformPicker.dataSource=self
        
        self.platformPicker.selectRow(videoPlatform, inComponent: 0, animated: false)
      
    }
    

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return platform.count
    }
    
    func pickerView(_ pickerView: UIPickerView,titleForRow row: Int, forComponent component: Int) -> String? {
        return platform [row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        videoPlatform = row
        platformVar = platform[row]
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
       
    }
    
}
