//
//  ViewController.swift
//  DraggingViewsTutorial
//
//  Created by andyron on 2017/3/26.
//  Copyright © 2017年 andyron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let halfSizeOfView = 25.0
        let maxViews = 25
        // insetBy方法返回一个中心在同一处，长和宽分别相差固定长度的矩形。此处是为了不让小矩形块跑出屏幕，
        let insetSize = self.view.bounds.insetBy(dx: CGFloat(Int(2 * halfSizeOfView)), dy: CGFloat(Int(2 * halfSizeOfView))).size
        print(self.view.bounds)
        print(insetSize)
        for _ in 0..<maxViews {
            let pointX = CGFloat(UInt(arc4random() % UInt32(UInt(insetSize.width))))
            let pointY = CGFloat(UInt(arc4random() % UInt32(UInt(insetSize.height))))
            
            let newView = MyView(frame: CGRect(x: pointX, y: pointY, width: 50, height: 50))
        
            self.view.addSubview(newView)
        }
    
    }




}

