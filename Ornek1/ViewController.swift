//
//  ViewController.swift
//  Ornek1
//
//  Created by Furkan Sabaz on 4.06.2019.
//  Copyright © 2019 Furkan Sabaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let view1 : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.frame = CGRect(x: 150, y: 100, width: 20, height: 20)
        view.backgroundColor = .red
        return view
    }()
    let view2 : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.frame = CGRect(x: 150, y: 100, width: 20, height: 20)
        view.backgroundColor = .blue
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(view1)
        view.addSubview(view2)
        constraintView1()
        constraintView2()
    }

    
    func constraintView1() {
        
        NSLayoutConstraint(item: view1,
                           attribute: .centerX,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .centerX,
                           multiplier: 1,
                           constant: 0).isActive = true
        NSLayoutConstraint(item: view1,
                           attribute: .centerY,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .centerY,
                           multiplier: 1,
                           constant: 0).isActive = true
        
        NSLayoutConstraint(item: view1,
                           attribute: .width,
                           relatedBy: .equal,
                           toItem: nil,
                           attribute: .notAnAttribute,
                           multiplier: 1,
                           constant: 210).isActive = true
        
        NSLayoutConstraint(item: view1,
                           attribute: .height,
                           relatedBy: .equal,
                           toItem: nil,
                           attribute: .notAnAttribute,
                           multiplier: 1,
                           constant: 210).isActive = true
        
    }
    
    func constraintView2() {
        NSLayoutConstraint(item: view2,
                           attribute: .centerX,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .centerX,
                           multiplier: 1,
                           constant: 0).isActive = true
        NSLayoutConstraint(item: view2,
                           attribute: .bottom,
                           relatedBy: .equal,
                           toItem: view1,
                           attribute: .top,
                           multiplier: 1,
                           constant: 10).isActive = true
        NSLayoutConstraint(item: view2,
                           attribute: .width,
                           relatedBy: .equal,
                           toItem: nil,
                           attribute: .notAnAttribute,
                           multiplier: 1,
                           constant: 110).isActive = true
        NSLayoutConstraint(item: view2,
                           attribute: .height,
                           relatedBy: .equal,
                           toItem: nil,
                           attribute: .notAnAttribute,
                           multiplier: 1,
                           constant: 110).isActive = true
        
    }
    

}

