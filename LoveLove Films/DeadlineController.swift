import UIKit

var currentSelection = deadlineVar

class DeadlineController: UIViewController{
    

    let dateFormatter = NSDateFormatter()
    
    @IBOutlet weak var deadlinePicker: UIDatePicker!
    
    func setDate() {
        
        dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle

        
        deadlineVar = dateFormatter.stringFromDate(deadlinePicker.date)
        
    }
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dateFormatter2 = NSDateFormatter()
        dateFormatter2.dateFormat = "MM-dd-yy"
        
        
        
        deadlinePicker.minimumDate = NSDate()
        if deadlineVar != "" {
            
            let selectedDate = dateFormatter2.dateFromString(deadlineVar)
            
            deadlinePicker.setDate(selectedDate!, animated: true)
            
            
        }
        
    }
    
    @IBAction func deadlinePickerAction(sender: AnyObject) {
        
        setDate()
        
        
        
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
     
        
    }

}

