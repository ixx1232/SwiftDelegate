//
//  IXXTableVC.swift
//  SwiftDelegate
//
//  Created by apple on 16/1/20.
//  Copyright © 2016年 www.ixx.com. All rights reserved.
//

import UIKit
// 1.指定协议
protocol IXXTableVCDelegate {
    
    func AddTitle(title: String)
}

class IXXTableVC: UITableViewController {

    // 2.设置代理属性
    var delegate: IXXTableVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell")
        
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        }
        
        cell?.textLabel?.text = (indexPath.row).description
        
        return cell!
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        // 3.给代理发消息
        self.delegate?.AddTitle((indexPath.row).description)
        
        // 销毁控制器
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}


