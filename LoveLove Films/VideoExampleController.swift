
import Foundation
import UIKit

 var videoEx = Int()

class VideoExampleController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
     

    @IBOutlet weak var VideoPicker: UIPickerView!
    
   
    
    var examplePicker: [String] = [String]()
    
    var videoExample = ["Motion Graphics", "2D", "3D", "Live Action"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videoExampleVar = "Motion Graphics"
        
      self.VideoPicker.delegate = self
        self.VideoPicker.dataSource = self
        
        self.VideoPicker.selectRow(videoEx, inComponent: 0, animated: false)
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return videoExample.count
    }
    
    func pickerView(_ pickerView: UIPickerView,titleForRow row: Int, forComponent component: Int) -> String? {
        return videoExample [row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        videoEx = row
        videoExampleVar = videoExample[row]
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        
        
    }
    
}
