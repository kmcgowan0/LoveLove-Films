import Foundation
import UIKit

var videoType = Int()

class VideoTypeController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    
    
    var pickerData: [String] = [String]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videoTypeVar = "Behind-the-scenes"
        
        
        self.pickerView.delegate! = self
        self.pickerView.dataSource = self
        
        pickerData = [" Behind-the-scenes", "Digital Signage", "Documentary", "Feature Film", "How-to/Product demo", "Intro/Response/Recruitment", "Making of lecture/speech", "Mini-doc", "  Music video", "Promotional/Intro", "Product/Explainer", "Public Services Announcement (PSA)",  "Short Film", " Show/Event/Performance", "  Social experiment", "Stunt", "Teaser","Testimonial Video", "Trailer",  "Viral", "Web episode"]
        
         self.pickerView.selectRow(videoType, inComponent: 0, animated: false)
    }
    
 
   
   
   
    //ASK KYLE
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(pickerView: UIPickerView,titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData [row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        videoType = row
        videoTypeVar = pickerData[row]

    }


    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        print(videoTypeVar)
       
 
    }
}
