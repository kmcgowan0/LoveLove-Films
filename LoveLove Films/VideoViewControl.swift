import UIKit
import MediaPlayer
import YouTubePlayer



class VideoViewController: UIViewController {
    
    let videos = buildVideos()
    var selectedVideo = 0
    
    
    @IBAction func videoButton(sender: AnyObject) {
        selectedVideo = sender.tag!
        performSegueWithIdentifier("VideoDetail", sender: videos[sender.tag!])
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "VideoDetail" {
            let vc = segue.destinationViewController as! VideoView
            vc.video = videos[selectedVideo]
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}
