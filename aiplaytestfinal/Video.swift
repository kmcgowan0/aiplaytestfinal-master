//
//  Video.swift
//  aiplaytestfinal
//
//  Created by Kathryn McGowan (i7673473) on 11/05/2016.
//  Copyright © 2016 katie mcgowan. All rights reserved.
//

import Foundation

class Video {

    var title: String!
    var description: String!
    var id: String!
    
}




func buildVideos() -> [Video] {
    var videos = [Video]()
 
    
    let videoOne = Video()
    videoOne.title = "CREDITPLUS TV COMMERCIAL"
    videoOne.description = "LoveLove were approached by Creditplus to produce a TV Commercial. Creditplus desired a TV commercial that would be a friendly and open introduction to their car finance services. Through concept meetings with the client, it was decided that a fun style of animation would suit the brand and through ‘Benny’s Story’ showcase their service."
    videoOne.id = "H4knXyVcxZU"
    videos.append(videoOne)
    
    let videoTwo = Video()
    videoTwo.title = "AUTISM WESSEX"
    videoTwo.description = "We were commissioned by Autism Wessex to create an advert for a national awareness campaign called “Connect to Autism”, that showcases the various thought processes that people with Autism go through as they enter social settings and situations. The client wanted a video that would play in cinemas and could be used in training activities that encourage services, such as banks, leisure facilities and shops, to make adaptations to the manner in which they work, and to encourage social change to the general populace."
    videoTwo.id = "LPBBAL_xHc8"
    videos.append(videoTwo)
    
    
    let videoThree = Video()
    videoThree.title = "LINSAR"
    videoThree.description = "LoveLove Films have continued their relationship with Linsar, which previously saw the creation of Loveloves’ Linsar film at the Euronics Showcase. Linsar needed help to produce a product demonstration video, which would throw their new Linsar product range into the world. The product demo needed to highlight the key benefits of their televisions including Smart TV, Freeview HD, Full HD 1080p, USB Pause/Record and their free five year guarantee. They also needed to increase brand awareness as well as promote their latest products; we needed to ensure that all of this was reflected in the product demonstration video."
    videoThree.id = "PZ_XYr_bkUc"
    videos.append(videoThree)
    
    let videoFour = Video()
    videoFour.title = "CISCO"
    videoFour.description = "LoveLove Films was approached by American technology company Cisco, and asked to produce a visually engaging corporate animation that aimed to showcase the crucial work the company does in helping set up networks and connect people in various regions across the globe. The video was to be used to convey a range of key projects that Cisco run throughout the world, including their NetHope disaster relief project that helped aid workers during the recent Ebola crisis in Africa, as well as their NetAcademy scheme which helps provide IT skills development and future job opportunities for those people who live in under-developed countries."
    videoFour.id = "CuQ7f-tP0uc"
    videos.append(videoFour)
    
    return videos
}