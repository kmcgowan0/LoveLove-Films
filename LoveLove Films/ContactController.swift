import UIKit

class ContactController: UIViewController, UITextFieldDelegate{
    
      
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var clientName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var jobTitleField: UITextField!
    @IBOutlet weak var nextBtn: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextBtn.enabled = true
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "textChanged:", name: UITextFieldTextDidChangeNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillShow:"), name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillHide:"), name: UIKeyboardWillHideNotification, object: nil)
        
        clientName.text! = clientNameVar
        email.text! = emailVar
        phoneNumber.text! = phoneNumberVar
        jobTitleField.text! = jobTitleVar
        
        if emailVar == "" && phoneNumberVar == "" && jobTitleVar == "" {
            nextBtn.enabled = false
            
        }
        
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        self.view.endEditing(true)
        
        return true
        
    }
    
    func textChanged(sender: NSNotification) {
        if email.hasText() && phoneNumber.hasText() && jobTitleField.hasText() {
            nextBtn.enabled = true
        }
        else {
            nextBtn.enabled = false
        }
    }
    
    
    func keyboardWillShow(notification:NSNotification){
        
        var userInfo = notification.userInfo!
        var keyboardFrame:CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).CGRectValue()
        keyboardFrame = self.view.convertRect(keyboardFrame, fromView: nil)
        
        var contentInset:UIEdgeInsets = self.scrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height/1.5
        self.scrollView.contentInset = contentInset
    }
    
    func keyboardWillHide(notification:NSNotification){
        
        let contentInset:UIEdgeInsets = UIEdgeInsetsZero
        self.scrollView.contentInset = contentInset
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        emailVar = email.text!
        phoneNumberVar = phoneNumber.text!
        jobTitleVar = jobTitleField.text!
        clientNameVar = clientName.text!
        
        
    }


}