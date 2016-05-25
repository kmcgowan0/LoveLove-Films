
import Foundation
import UIKit

var voiceoverVar = String()
var musicVar = String()
var liveSoundVar = String()

class StyleController: UIViewController{
    
    
    @IBOutlet weak var voiceoverSwitch: UISwitch!
    @IBOutlet weak var musicSwitch: UISwitch!
    @IBOutlet weak var liveSoundSwitch: UISwitch!
    
    
    
    
    
    
    @IBAction func voiceoverSwitchPressed(sender: AnyObject) {
        if voiceoverSwitch.on{
            voiceoverVar = "Voice Over, "
        }
    }
    
    @IBAction func musicSwitchPressed(sender: AnyObject) {
        if musicSwitch.on{
            musicVar = "Music, "
        }
    }
    
    @IBAction func liveSoundSwitchPressed(sender: AnyObject) {
        if liveSoundSwitch.on{
            liveSoundVar = "Live Sound"
        }
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if voiceoverVar == "Voice Over, " {
            voiceoverSwitch.on == true
            
        } else  if musicVar == "Music, " {
            musicSwitch.on == true
            
        } else  if liveSoundVar == "Live Sound, " {
            liveSoundSwitch.on == true
        }
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
       
    }
    
}
  