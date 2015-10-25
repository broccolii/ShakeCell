//
//  ViewController.swift
//  ShakeCell
//
//  Created by Broccoli on 15/10/25.
//  Copyright © 2015年 Broccoli. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

private let CellIdentifier = "ShakeTableViewCell"
extension ViewController {
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier, forIndexPath: indexPath) as! ShakeTableViewCell
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        cell.lblNum.text = "这只是个随机数:\(arc4random() % 100)"
        
        return cell
    }
}

extension ViewController {
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let cell = tableView.cellForRowAtIndexPath(indexPath) as! ShakeTableViewCell
        cell.setSelected(true, animated: true)
    }
}

