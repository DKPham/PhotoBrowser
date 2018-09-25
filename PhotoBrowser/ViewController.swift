//
//  ViewController.swift
//  PhotoBrowser
//
//  Created by Duy Pham on 4/26/18.
//  Copyright © 2018 Duy Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var photos = Photo.downloadAllPhotos()
    
    struct Storyboard {
        static let photoCell = "PhotoCell"
        static let defaultRowHeight: CGFloat = 250.0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.rowHeight = Storyboard.defaultRowHeight
    }

}

extension ViewController : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Storyboard.photoCell) as! PhotoTableViewCell
        let photo = self.photos[indexPath.row]
        cell.photo = photo
        return cell
    }
}









































