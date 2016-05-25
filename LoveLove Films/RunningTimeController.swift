
import Foundation
import UIKit

var videoRunTime = Int()

class RunningTimeController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    

    @IBOutlet weak var TimerView: UIPickerView!
    
    var timePicker: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videoRunTimeVar = "Up to 5 minutes"
        
        self.TimerView.delegate=self
        self.TimerView.dataSource=self
        
        timePicker = ["Up to 5 minutes", "5 minutes", "10 minutes ", "15 minutes", "20 minutes", "25 minutes", "30 minutes", "30 minutes +"]
        self.TimerView.selectRow(videoRunTime, inComponent: 0, animated: false)
        
    }
    
    //ASK KYLE
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return timePicker.count
    }
    
    func pickerView(pickerView: UIPickerView,titleForRow row: Int, forComponent component: Int) -> String? {
        return timePicker [row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        videoRunTime = row
        videoRunTimeVar = timePicker[row]
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
       
    }
    
}