
import Foundation
import UIKit

var projectTitleVar =  String()
var clientNameVar = String()
var videoTypeVar = String()
var videoNumberVar = String()
var videoRunTimeVar = String()
var deadlineVar = String()
var descriptionVar = String()
var partVar = String()
var videoExampleVar = String()
var locationVar = String()
var characterVar = String()
var platformVar = String()
var budgetVar = String()
var emailVar = String()
var phoneNumberVar = String()
var jobTitleVar = String()

class ProjectNameController: UIViewController {
    
    let myColour : UIColor = UIColor ( red: 0.5, green: 0.5, blue: 0, alpha: 1.0)
    
    @IBOutlet weak var clientNameTextField: UITextField!
    @IBOutlet weak var projectTextField: UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var nextBtn: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        projectTextField.layer.borderColor = myColour.CGColor
        nextBtn.enabled = false
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "textChanged:", name: UITextFieldTextDidChangeNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillShow:"), name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillHide:"), name: UIKeyboardWillHideNotification, object: nil)
        
    
        projectTextField.text! = projectTitleVar
        clientNameTextField.text! = clientNameVar
        
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        
    }
    
    func keyboardWillShow(notification:NSNotification){
        
        var userInfo = notification.userInfo!
        var keyboardFrame:CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).CGRectValue()
        keyboardFrame = self.view.convertRect(keyboardFrame, fromView: nil)
        
        var contentInset:UIEdgeInsets = self.scrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height/2
        self.scrollView.contentInset = contentInset
    }
    
    func keyboardWillHide(notification:NSNotification){
        
        let contentInset:UIEdgeInsets = UIEdgeInsetsZero
        self.scrollView.contentInset = contentInset
    }
    

    
    func textChanged(sender: NSNotification) {
        if projectTextField.hasText() && clientNameTextField.hasText() {
            nextBtn.enabled = true
        }
        else {
            nextBtn.enabled = false
        }
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        clientNameVar = clientNameTextField.text!
        projectTitleVar = projectTextField.text!
        
        
    }

}