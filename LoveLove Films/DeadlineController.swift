import UIKit

var currentSelection = deadlineVar

class DeadlineController: UIViewController{
    

    let dateFormatter = DateFormatter()
    
    @IBOutlet weak var deadlinePicker: UIDatePicker!
    
    func setDate() {
        
        dateFormatter.dateStyle = DateFormatter.Style.short

        
        deadlineVar = dateFormatter.string(from: deadlinePicker.date)
        
    }
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dateFormatter2 = DateFormatter()
        dateFormatter2.dateFormat = "MM-dd-yy"
        
        
        
        deadlinePicker.minimumDate = Date()
        if deadlineVar != "" {
            
            let selectedDate = dateFormatter2.date(from: deadlineVar)
            
            deadlinePicker.setDate(selectedDate!, animated: true)
            
            
        }
        
    }
    
    @IBAction func deadlinePickerAction(_ sender: AnyObject) {
        
        setDate()
        
        
        
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
     
        
    }

}

