import UIKit
import MessageUI

class SummaryController: UIViewController, MFMailComposeViewControllerDelegate{
    

    
    @IBOutlet weak var clientText: UITextField!
    @IBOutlet weak var projectText: UITextField!
    @IBOutlet weak var videoTypeText: UITextField!
    @IBOutlet weak var videoNumberText: UITextField!
    @IBOutlet weak var runTimeText: UITextField!
    @IBOutlet weak var deadlineText: UITextField!
    @IBOutlet weak var descriptionText: UITextField!
    @IBOutlet weak var styleText: UITextField!
    @IBOutlet weak var typeText: UITextField!
    @IBOutlet weak var settingText: UITextField!
    @IBOutlet weak var charactersText: UITextField!
    @IBOutlet weak var platformText: UITextField!
    @IBOutlet weak var budgetText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var phoneNumberText: UITextField!
    @IBOutlet weak var jobTitleText: UITextField!
    
    
    @IBOutlet weak var ScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        ScrollView.contentSize.height = 525
        
        clientText.text! = clientNameVar
        projectText.text! = projectTitleVar
        videoTypeText.text! = videoTypeVar
        videoNumberText.text! = videoNumberVar
        runTimeText.text! = videoRunTimeVar
        deadlineText.text! = deadlineVar
        descriptionText.text! = descriptionVar
        styleText.text! = "\(voiceoverVar)\(musicVar)\(liveSoundVar)"
        typeText.text! = videoExampleVar
        settingText.text! = locationVar
        charactersText.text! = characterVar
        platformText.text! = platformVar
        budgetText.text! = budgetVar
        emailText.text! = emailVar
        phoneNumberText.text! = phoneNumberVar
        jobTitleText.text! = jobTitleVar
    
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
        projectTitleVar = projectText.text!
        clientNameVar = clientText.text!
        videoTypeVar =  videoTypeText.text!
        videoRunTimeVar = runTimeText.text!
        deadlineVar = deadlineText.text!
        descriptionVar = descriptionText.text!
        partVar = styleText.text!
        videoExampleVar = typeText.text!
        characterVar = charactersText.text!
        locationVar = settingText.text!
        platformVar = platformText.text!
        budgetVar = budgetText.text!
        emailVar = emailText.text!
        phoneNumberVar = phoneNumberText.text!
        jobTitleVar = jobTitleText.text!
    }
    
    //start email (email form wont work in simulator, you'll need a device to test  )
    @IBAction func sendEmailButtonTapped(_ sender: AnyObject) {
        
        projectTitleVar = projectText.text!
        clientNameVar = clientText.text!
        videoTypeVar =  videoTypeText.text!
        videoRunTimeVar = runTimeText.text!
        deadlineVar = deadlineText.text!
        descriptionVar = descriptionText.text!
        partVar = styleText.text!
        videoExampleVar = typeText.text!
        characterVar = charactersText.text!
        locationVar = settingText.text!
        platformVar = platformText.text!
        budgetVar = budgetText.text!
        emailVar = emailText.text!
        phoneNumberVar = phoneNumberText.text!
        jobTitleVar = jobTitleText.text!
        
        let mailComposeViewController = configuredMailComposeViewController()
        if MFMailComposeViewController.canSendMail() {
            self.present(mailComposeViewController, animated: true, completion: nil)
        } else {
            self.showSendMailErrorAlert()
        }
    }
    

    
    
    
    
    func configuredMailComposeViewController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self // Extremely important to set the --mailComposeDelegate-- property, NOT the --delegate-- property
        
        //touch only things in this block
        mailComposerVC.setToRecipients(["info@lovelovefilms.com", "\(emailVar)"])
        mailComposerVC.setSubject( "Request from \(clientNameVar)")
        mailComposerVC.setMessageBody("Client details are as follows \n Client Name: \(clientNameVar) \n Project Name: \(projectTitleVar) \n Position: \(videoTypeVar) \n Video Type: \(videoTypeVar) \n Number of Videos: \(videoNumberVar) \n Running Time: \(videoRunTimeVar) \n Deadline: \(deadlineVar) \n Description: \(descriptionVar) \n Part Production: \(voiceoverVar, musicVar, liveSoundVar) \n Type: \(videoExampleVar) \n Number of Characters: \(characterVar) \n Setting: \(locationVar) \n Platform: \(platformVar) \n Budget: \(budgetVar) \n Email: \(emailVar) \n Phone Number: \(phoneNumberVar) \n", isHTML: false)
        //end block
        return mailComposerVC
    }
    func showSendMailErrorAlert() {
        let sendMailErrorAlert = UIAlertView(title: "Could Not Send Email", message: "Your device could not send e-mail.  Please check e-mail configuration and try again.", delegate: self, cancelButtonTitle: "OK")
        sendMailErrorAlert.show()
    }
    
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
        
    }
    //end email
    
    
    
    
    
}
