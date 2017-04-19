
//  Created by apple on 29/04/2016.
//  Copyright (c) 2016 katie mcgowan. All rights reserved.
//

import UIKit
import MediaPlayer
import YouTubePlayer

class VideoView: UIViewController {
    
    var video: Video!
    var currentScreens = 0
    
    
    @IBOutlet var videoPlayer: YouTubePlayerView!
    
    @IBOutlet weak var videoTitle2: UILabel!
    
    @IBOutlet weak var videoDescription2: UITextView!
    
    
    @IBAction func videoPlay(_ sender: AnyObject) {
        if videoPlayer.ready {
            videoPlayer.play()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videoPlayer.loadVideoID(video.id)
        
        videoTitle2.text = video.title
        videoDescription2.text = video.description
        
    }
}
