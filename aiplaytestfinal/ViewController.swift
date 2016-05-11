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

var videoPlayer = YouTubePlayerView(frame: UIScreen.screens()[1].bounds)

class ViewController: UIViewController {
    
    var secondWindow : UIWindow?
    var secondScreenView : UIView?
    var externalLabel = UILabel()
    var currentScreens = 0
    var loadImage = UIImage()
    
    var moviePlayer : MPMoviePlayerController?
    
    let videos = buildVideos()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
//        loadScreen()
        
        setupScreen()
    }
     
    @IBAction func play(sender: AnyObject) {
        currentScreens = sender.tag!
        playvideo()
        performSegueWithIdentifier("VideoDetail", sender: videos[sender.tag!])
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "VideoDetail" {
            let vc = segue.destinationViewController as! SecondViewController
            vc.video = sender as! Video
        }
    }

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
     
//            //customised the view
            secondScreenView!.backgroundColor = UIColor.blackColor()

            
            videoPlayer.frame = secondScreenView!.bounds
            
            //            //configure the label
            externalLabel.textAlignment = NSTextAlignment.Center
            externalLabel.font = UIFont(name: "Helvetica", size: 50.0)
            externalLabel.frame = secondScreenView!.bounds
            externalLabel.text = ""
            externalLabel.backgroundColor = UIColor(patternImage: UIImage(named: "3182172")!)
            
            if videoPlayer.ready == false {
                secondScreenView!.addSubview(videoPlayer)
            }
            videoPlayer.loadVideoID(videos[currentScreens].id)
            
            //add the label to the view
            secondScreenView!.addSubview(videoPlayer)
            
            
            
        }
    }
    
    func registerForScreenNotifications(){
        let notificationCentre = NSNotificationCenter.defaultCenter()
        notificationCentre.addObserver(self, selector: Selector("setupScreen"), name: UIScreenDidConnectNotification, object: nil)
    }
    
    func playvideo() {
        videoPlayer.loadVideoID(videos[currentScreens].id)
        if videoPlayer.ready {
            videoPlayer.play()
        }
    }
    
    func logo() {
        if videoPlayer.ready == false {
            loadScreen()
        }
    }

    
}


