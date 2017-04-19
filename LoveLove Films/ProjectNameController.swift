
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
        projectTextField.layer.borderColor = myColour.cgColor
        nextBtn.isEnabled = false
        
        NotificationCenter.default.addObserver(self, selector: "textChanged:", name: NSNotification.Name.UITextFieldTextDidChange, object: nil)
        NotificationCenter.default.addObserver(self, selector: Selector("keyboardWillShow:"), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: Selector("keyboardWillHide:"), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        
    
        projectTextField.text! = projectTitleVar
        clientNameTextField.text! = clientNameVar
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        
    }
    
    func keyboardWillShow(_ notification:Notification){
        
        var userInfo = notification.userInfo!
        var keyboardFrame:CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        keyboardFrame = self.view.convert(keyboardFrame, from: nil)
        
        var contentInset:UIEdgeInsets = self.scrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height/2
        self.scrollView.contentInset = contentInset
    }
    
    func keyboardWillHide(_ notification:Notification){
        
        let contentInset:UIEdgeInsets = UIEdgeInsets.zero
        self.scrollView.contentInset = contentInset
    }
    

    
    func textChanged(_ sender: Notification) {
        if projectTextField.hasText && clientNameTextField.hasText {
            nextBtn.isEnabled = true
        }
        else {
            nextBtn.isEnabled = false
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        clientNameVar = clientNameTextField.text!
        projectTitleVar = projectTextField.text!
        
        
    }

}
