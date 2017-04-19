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
        
        nextBtn.isEnabled = true
        
        NotificationCenter.default.addObserver(self, selector: #selector(ContactController.textChanged(_:)), name: NSNotification.Name.UITextFieldTextDidChange, object: nil)
        NotificationCenter.default.addObserver(self, selector: Selector("keyboardWillShow:"), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(ContactController.keyboardWillHide(_:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        
        clientName.text! = clientNameVar
        email.text! = emailVar
        phoneNumber.text! = phoneNumberVar
        jobTitleField.text! = jobTitleVar
        
        if emailVar == "" && phoneNumberVar == "" && jobTitleVar == "" {
            nextBtn.isEnabled = false
            
        }
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        self.view.endEditing(true)
        
        return true
        
    }
    
    func textChanged(_ sender: Notification) {
        if email.hasText && phoneNumber.hasText && jobTitleField.hasText {
            nextBtn.isEnabled = true
        }
        else {
            nextBtn.isEnabled = false
        }
    }
    
    
    func keyboardWillShow(_ notification:Notification){
        
        var userInfo = notification.userInfo!
        var keyboardFrame:CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        keyboardFrame = self.view.convert(keyboardFrame, from: nil)
        
        var contentInset:UIEdgeInsets = self.scrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height/1.5
        self.scrollView.contentInset = contentInset
    }
    
    func keyboardWillHide(_ notification:Notification){
        
        let contentInset:UIEdgeInsets = UIEdgeInsets.zero
        self.scrollView.contentInset = contentInset
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        emailVar = email.text!
        phoneNumberVar = phoneNumber.text!
        jobTitleVar = jobTitleField.text!
        clientNameVar = clientName.text!
        
        
    }


}
