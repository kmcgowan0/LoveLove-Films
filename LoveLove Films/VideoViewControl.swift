import UIKit
import MediaPlayer
import YouTubePlayer



class VideoViewController: UIViewController {
    
    let videos = buildVideos()
    var selectedVideo = 0
    
    
    @IBAction func videoButton(_ sender: AnyObject) {
        selectedVideo = sender.tag!
        performSegue(withIdentifier: "VideoDetail", sender: videos[sender.tag!])
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "VideoDetail" {
            let vc = segue.destination as! VideoView
            vc.video = videos[selectedVideo]
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}
