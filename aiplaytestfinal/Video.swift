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
    videoOne.title = "This is one video"
    videoOne.description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget erat sapien. Etiam efficitur risus libero, nec commodo lacus dictum quis. Morbi auctor ultricies elementum. Aliquam cursus sem erat, eget scelerisque nisl placerat a. Fusce sed blandit quam. In sed quam quis ipsum faucibus dapibus. Quisque volutpat hendrerit leo, sit amet porttitor nibh pellentesque vel. Suspendisse congue felis sit amet nunc facilisis, a vestibulum augue hendrerit. Aenean malesuada facilisis malesuada. Curabitur vel tincidunt ligula."
    videoOne.id = "cjkCSl7IAmQ"
    videos.append(videoOne)
    
    let videoTwo = Video()
    videoTwo.title = "This is Two video"
    videoTwo.description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget erat sapien. Etiam efficitur risus libero, nec commodo lacus dictum quis. Morbi auctor ultricies elementum. Aliquam cursus sem erat, eget scelerisque nisl placerat a. Fusce sed blandit quam. In sed quam quis ipsum faucibus dapibus. Quisque volutpat hendrerit leo, sit amet porttitor nibh pellentesque vel. Suspendisse congue felis sit amet nunc facilisis, a vestibulum augue hendrerit. Aenean malesuada facilisis malesuada. Curabitur vel tincidunt ligula."
    videoTwo.id = "sNx57atloH8"
    videos.append(videoTwo)
    
    
    let videoThree = Video()
    videoThree.title = "This is Three video"
    videoThree.description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget erat sapien. Etiam efficitur risus libero, nec commodo lacus dictum quis. Morbi auctor ultricies elementum. Aliquam cursus sem erat, eget scelerisque nisl placerat a. Fusce sed blandit quam. In sed quam quis ipsum faucibus dapibus. Quisque volutpat hendrerit leo, sit amet porttitor nibh pellentesque vel. Suspendisse congue felis sit amet nunc facilisis, a vestibulum augue hendrerit. Aenean malesuada facilisis malesuada. Curabitur vel tincidunt ligula."
    videoThree.id = "FZUcpVmEHuk"
    videos.append(videoThree)
    
    return videos
}