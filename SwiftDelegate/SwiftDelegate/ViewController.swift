//
//  ViewController.swift
//  SwiftDelegate
//
//  Created by apple on 16/1/20.
//  Copyright © 2016年 www.ixx.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController, IXXTableVCDelegate {

    @IBOutlet weak var btnClick: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func btnClick(sender: UIButton) {
        
        let Vc = IXXTableVC()
        
        Vc.delegate = self
        
        self.presentViewController(Vc, animated: true, completion: nil)
        
        
    }

    func AddTitle(title: String) {
        
        self.btnClick.setTitle(title, forState: UIControlState.Normal)
        
        if (((title as NSString).integerValue)&1==0) {
            self.view.backgroundColor = UIColor.redColor()
        }else {
            self.view.backgroundColor = UIColor.greenColor()
        }
    }

}

