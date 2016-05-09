//
//  ViewController.swift
//  airplaytest
//
//  Created by apple on 29/04/2016.
//  Copyright (c) 2016 katie mcgowan. All rights reserved.
//

import UIKit
import MediaPlayer
import YouTubePlayer

//var secondView = UIViewController()

//let screens = [
//    "help",
//    "vid2",
//]

let youtubeUrl = [
    "https://www.youtube.com/embed/cjkCSl7IAmQ?rel=0&autoplay=1",
    "https://www.youtube.com/embed/sNx57atloH8?rel=0&autoplay=1",
    "https://www.youtube.com/embed/FZUcpVmEHuk?rel=0&autoplay=1"
    
]

let videoTitleArray = [
    "This is one video",
    "This is another video",
    "This is the third video"
    
]

let videoDescriptionArray = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget erat sapien. Etiam efficitur risus libero, nec commodo lacus dictum quis. Morbi auctor ultricies elementum. Aliquam cursus sem erat, eget scelerisque nisl placerat a. Fusce sed blandit quam. In sed quam quis ipsum faucibus dapibus. Quisque volutpat hendrerit leo, sit amet porttitor nibh pellentesque vel. Suspendisse congue felis sit amet nunc facilisis, a vestibulum augue hendrerit. Aenean malesuada facilisis malesuada. Curabitur vel tincidunt ligula.",
    "Nullam euismod leo at lectus aliquet dictum. Donec ex sapien, suscipit et nisl ac, tincidunt elementum dolor. Pellentesque eget nunc urna. Etiam sed ornare magna, vel laoreet erat. Pellentesque pulvinar non odio a sollicitudin. Integer ut aliquet orci. Aenean consectetur est sed est pellentesque porta. Donec nec bibendum ante, sit amet egestas sapien. Aenean augue justo, venenatis ac magna ac, venenatis facilisis arcu. Praesent semper ex tellus, venenatis vestibulum elit placerat in. Morbi condimentum eget arcu eget dignissim. Nulla congue mi eu venenatis fringilla. Pellentesque in ligula pharetra, interdum justo vitae, euismod leo.",
    "Vestibulum augue quam, vestibulum imperdiet tortor ac, malesuada lacinia mi. Pellentesque sollicitudin urna non mauris viverra, ut malesuada metus laoreet. Curabitur sagittis ex vitae vehicula dictum. Aliquam ut pretium odio. Ut in augue ac elit ultrices luctus nec sit amet eros. Sed vulputate, mi at volutpat faucibus, eros ipsum sollicitudin erat, non tristique leo felis eget nisl. Nullam in eros nec ex dapibus dictum at ac massa."
    
]


class SecondViewController: UIViewController {
    
    var moviePlayer : MPMoviePlayerController?
    
    @IBOutlet weak var videoView: UIWebView!

    @IBOutlet weak var videoTitle: UILabel!
    
    @IBOutlet weak var videoDescription: UITextView!
    
    @IBAction func videoPlay(sender: AnyObject) {
        if videoPlayer.ready {
            videoPlayer.play()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videoTitle.text = videoTitleArray[currentScreens]
        
        videoDescription.text = videoDescriptionArray[currentScreens]
        
                   
        
    }


    
//    func playVideo() {
//        let path = NSBundle.mainBundle().pathForResource(screens[currentScreens], ofType:"m4v")
//        let url = NSURL.fileURLWithPath(path!)
//        moviePlayer = MPMoviePlayerController(contentURL: url)
//        if let player = moviePlayer {
//            player.view.frame = self.view.bounds
//            player.prepareToPlay()
//            player.scalingMode = .AspectFill
//            self.view.addSubview(player.view)
//        }
//    }
}
    
