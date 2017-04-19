
import Foundation
import UIKit

var voiceoverVar = String()
var musicVar = String()
var liveSoundVar = String()

class StyleController: UIViewController{
    
    
    @IBOutlet weak var voiceoverSwitch: UISwitch!
    @IBOutlet weak var musicSwitch: UISwitch!
    @IBOutlet weak var liveSoundSwitch: UISwitch!
    
    
    
    
    
    
    @IBAction func voiceoverSwitchPressed(_ sender: AnyObject) {
        if voiceoverSwitch.isOn{
            voiceoverVar = "Voice Over, "
        }
    }
    
    @IBAction func musicSwitchPressed(_ sender: AnyObject) {
        if musicSwitch.isOn{
            musicVar = "Music, "
        }
    }
    
    @IBAction func liveSoundSwitchPressed(_ sender: AnyObject) {
        if liveSoundSwitch.isOn{
            liveSoundVar = "Live Sound"
        }
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if voiceoverVar == "Voice Over, " {
            voiceoverSwitch.isOn == true
            
        } else  if musicVar == "Music, " {
            musicSwitch.isOn == true
            
        } else  if liveSoundVar == "Live Sound, " {
            liveSoundSwitch.isOn == true
        }
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
       
    }
    
}
  
