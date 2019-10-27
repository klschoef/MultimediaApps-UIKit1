//
//  ViewController.swift
//  UIKit1
//
//  Created by Klaus Schoeffmann on 13.10.19.
//  Copyright © 2019 Klaus Schoeffmann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var innerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let outerView = innerView.superview {
            outerView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        }
    }

    @IBAction func changeBounds(_ sender: Any) {
        self.view.bounds = CGRect(x: -100,y: -200, width: self.view.bounds.width, height: self.view.bounds.height)
    }
    
    @IBAction func resetBounds(_ sender: Any) {
        self.view.bounds = CGRect(origin: CGPoint.zero, size: self.view.bounds.size)
    }
    
    @IBAction func changeBoundsToRight(_ sender: Any) {
        self.view.bounds = CGRect(origin: CGPoint(x: 50, y: 100), size: self.view.bounds.size)
    }
    
    @IBAction func changeFrame(_ sender: Any) {
        self.innerView.center.x += 50
    }
    
    @IBAction func layoutInnerView(_ sender: Any) {
        self.view.setNeedsLayout()
    }
}

