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



var secondWindow : UIWindow?
var secondScreenView : UIView?
var externalLabel = UILabel()
var videoPlayer = YouTubePlayerView(frame: UIScreen.screens()[1].bounds)
var currentScreens = 0
var loadImage = UIImage()
//var playerEnd = YouTubePlayerState.Ended






class ViewController: UIViewController {
    
    
    var moviePlayer : MPMoviePlayerController?
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadScreen()
        
//        if videoPlayer.stop() {
//            loadScreen()
//        }
        
        
    }
     
    @IBAction func play(sender: AnyObject) {
        setupScreen()
        registerForScreenNotifications()
        currentScreens = 0
        playvideo()
        
        
    }
    
    @IBAction func video2(sender: AnyObject) {
        setupScreen()
        registerForScreenNotifications()
        currentScreens = 1
        playvideo()

    }
    
    @IBAction func video3(sender: AnyObject) {
        setupScreen()
        registerForScreenNotifications()
        currentScreens = 2
        playvideo()

    }
    
    let youtubeUrl = [
        "cjkCSl7IAmQ",
        "sNx57atloH8",
        "FZUcpVmEHuk"
        
    ]
    
    
    let airplay = [
        "https://www.youtube.com/embed/cjkCSl7IAmQ",
        "https://www.youtube.com/embed/sNx57atloH8",
        "https://www.youtube.com/embed/FZUcpVmEHuk"
    ]
    

    func loadScreen(){
        //before a video is selected
        
        if UIScreen.screens().count > 1 {
            //find the second screen (the 'as! UIScreen' is not needed in Xcode 7 and above)
            let secondScreen = UIScreen.screens()[1]
            
            //set up a window for the screen using the screens pixel dimensions
            secondWindow = UIWindow(frame: secondScreen.bounds)
            
            //tell the window which screen to use
            secondWindow?.screen = secondScreen
            
            //set the dimensions for the view for the external screen so it fills the screen
            secondScreenView = UIView(frame: secondWindow!.frame)
            
            //add the view to the second screens window
            secondWindow?.addSubview(secondScreenView!)
            
            //unhide the window
            secondWindow?.hidden = false
            //
            //            //customised the view
            secondScreenView!.backgroundColor = UIColor.whiteColor()
            //            //configure the label
                        externalLabel.textAlignment = NSTextAlignment.Center
                        externalLabel.font = UIFont(name: "Helvetica", size: 50.0)
                        externalLabel.frame = secondScreenView!.bounds
                        externalLabel.text = ""
            externalLabel.backgroundColor = UIColor(patternImage: UIImage(named: "3182172")!)
            

            
            //add the label to the view
            secondScreenView!.addSubview(externalLabel)
            
            
            
        } else {
            //            playVideo()
        }
    }

    
    
    func setupScreen(){
        
        
        if UIScreen.screens().count > 1 {
            //find the second screen (the 'as! UIScreen' is not needed in Xcode 7 and above)
            let secondScreen = UIScreen.screens()[1] 
            
            //set up a window for the screen using the screens pixel dimensions
            secondWindow = UIWindow(frame: secondScreen.bounds)
            
            //tell the window which screen to use
            secondWindow?.screen = secondScreen
            
            //set the dimensions for the view for the external screen so it fills the screen
            secondScreenView = UIView(frame: secondWindow!.frame)
            
            //add the view to the second screens window
            secondWindow?.addSubview(secondScreenView!)
            
            //unhide the window
            secondWindow?.hidden = false
//            
//            //customised the view
            secondScreenView!.backgroundColor = UIColor.blackColor()
//            //configure the label
//            externalLabel.textAlignment = NSTextAlignment.Center
//            externalLabel.font = UIFont(name: "Helvetica", size: 50.0)
//            externalLabel.frame = secondScreenView!.bounds
//            externalLabel.text = airplay[currentScreens]

            
            videoPlayer.frame = secondScreenView!.bounds
            
//            videoView.loadHTMLString("<iframe width=\"720\" height=\"480\" src=\"\(airplay[currentScreens])?rel=0&autoplay=1\" frameborder=\"0\" allowfullscreen></iframe>", baseURL: nil)
            videoPlayer.loadVideoID(youtubeUrl[currentScreens])
      
            
            
//            playVideo()
            
            //add the label to the view
            secondScreenView!.addSubview(videoPlayer)

            //lovelove logo when its finished
            

            //            if YouTubePlayerState.Ended = true{
//                loadScreen()
//            }
            
        } else {
//            playVideo()
        }
    }
    
 
    
    
    func registerForScreenNotifications(){
        let notificationCentre = NSNotificationCenter.defaultCenter()
        notificationCentre.addObserver(self, selector: Selector("setupScreen"), name: UIScreenDidConnectNotification, object: nil)
    }
    
    func playvideo() {
        if videoPlayer.ready {
            videoPlayer.play()
        }
    }
    
//    func playVideo() {
//        
//        
//        let path = NSBundle.mainBundle().pathForResource(screens[currentScreens], ofType:"m4v")
//        let url = NSURL.fileURLWithPath(path!)
//        moviePlayer = MPMoviePlayerController(contentURL: url)
//        if let player = moviePlayer {
//            player.view.frame = self.view.bounds
//            player.prepareToPlay()
//            player.scalingMode = .None
//            self.view.addSubview(player.view)
//        
//        }
//    }
    
    }


