//
//  ArticleTableViewController.swift
//  TableCellAnimation
//
//  Created by andyron on 2017/5/15.
//  Copyright © 2017年 andyron. All rights reserved.
//

import UIKit

class ArticleTableViewController: UITableViewController {
    
    let postTitles = ["Use Background Transfer Service To Download File in Background",
                      "Face Detection in iOS Using Core Image",
                      "Building a Speech-to-Text App Using Speech Framework in iOS 10",
                      "Building Your First Web App in Swift Using Vapor",
                      "Creating Gradient Colors Using CAGradientLayer",
                      "A Beginner's Guide to CALayer"];
    let postImages = ["imessage-sticker-pack", "face-detection-featured", "speech-kit-featured", "vapor-web-framework", "cagradientlayer-demo", "calayer-featured"];

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.estimatedRowHeight = 258.0
        tableView.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postTitles.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ArticleTableViewCell
        
        // Configure the cell...
        cell.titleLabel.text = postTitles[(indexPath as NSIndexPath).row]
        cell.postImageView.image = UIImage(named: postImages[(indexPath as NSIndexPath).row])

        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        // 透明到显示效果
//        cell.alpha = 0
//        UIView.animate(withDuration: 1.0, animations: { cell.alpha = 1 })
        
        // 转动显示效果
//        let rotationAngleInRadians = 90.0 * CGFloat(M_PI/180.0)
//        let rotationTransform = CATransform3DMakeRotation(rotationAngleInRadians, 0, 0, 1)
//        cell.layer.transform = rotationTransform
//        UIView.animate(withDuration: 1.0, animations: { cell.layer.transform = CATransform3DIdentity })
        
        //
        let rotationTransform = CATransform3DTranslate(CATransform3DIdentity, -500, 100, 0)
        cell.layer.transform = rotationTransform
        UIView.animate(withDuration: 1.0, animations: { cell.layer.transform = CATransform3DIdentity })
        
    }
    
    
    

}
