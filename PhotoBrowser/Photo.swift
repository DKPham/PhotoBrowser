//
//  Photo.swift
//  PhotoBrowser
//
//  Created by Duy Pham on 4/26/18.
//  Copyright © 2018 Duy Pham. All rights reserved.
//

import Foundation

struct Photo {
    var name: String = ""
    var photographerProfileImageName: String = ""
    var caption: String = ""
    var thumbnailImageName: String = ""
    
    static func downloadAllPhotos() -> [Photo] {
        var photos = [Photo]()
        for i in 1...10 {
            let photo = Photo(name: "\(i)", photographerProfileImageName: "p\(i)", caption: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nisl elit, suscipit vitae aliquet non, viverra quis odio. Aenean sem dui, tincidunt ac justo ac, pharetra consectetur urna. Integer tincidunt iaculis nisl, eu efficitur magna semper varius.", thumbnailImageName: "t\(i)")
            photos.append(photo)
        }
        return photos
    }
}
