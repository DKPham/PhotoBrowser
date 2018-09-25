//
//  PhotoTableViewCell.swift
//  PhotoBrowser
//
//  Created by Duy Pham on 4/26/18.
//  Copyright © 2018 Duy Pham. All rights reserved.
//

import UIKit

class PhotoTableViewCell: UITableViewCell {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    
    var photo: Photo! {
        didSet {
            self.updateUI()
        }
    }
    
    private func updateUI() {
        photoImageView.image = UIImage(named: photo.name)
        profileImageView.image = UIImage(named: photo.photographerProfileImageName)
        captionLabel.text = photo.caption
        
        //Cosmetics - make our UI look better
        profileImageView.layer.cornerRadius = profileImageView.bounds.width / 2.0
        profileImageView.layer.masksToBounds = true
        profileImageView.layer.borderWidth = 1.0
        profileImageView.layer.borderColor = UIColor.lightGray.withAlphaComponent(0.6).cgColor
        profileImageView.layer.shadowOffset = CGSize(width: 0, height: 0)
        profileImageView.layer.shadowOpacity = 1
        profileImageView.layer.shadowRadius = 6
        
        captionLabel.layer.shadowOffset = CGSize(width: 0, height: 0)
        captionLabel.layer.shadowOpacity = 1
        captionLabel.layer.shadowRadius = 6
        
    }
}
