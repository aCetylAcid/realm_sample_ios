//
//  TopViewController.swift
//  RealmSampleApp
//
//  Created by aCetylAcid on 2015/06/21.
//  Copyright (c) 2015年 zrn-ns.com. All rights reserved.
//

import UIKit

class TopViewController : UIViewController,
UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self;
        self.tableView.delegate = self;
    }
    
    @IBAction func addButtonTapped(sender: AnyObject) {
        var adVC:AddDataViewController = AddDataViewController.getVCWithUI()
        self.presentViewController(adVC, animated: true, completion: nil)
    }
    
    // UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int)
        -> Int {
            return 3
    }
    
    func tableView(tableView: UITableView,
        cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            
        let cell = UITableViewCell(style: .Default,
            reuseIdentifier: "DefaultCell")
        cell.textLabel?.text = String(indexPath.row)
        
        return cell
    }
    
    func tableView(tableView: UITableView,
        commitEditingStyle editingStyle: UITableViewCellEditingStyle,
        forRowAtIndexPath indexPath: NSIndexPath) {
            
            // Do Nothing here.
            
    }
    
    func tableView(tableView: UITableView,
                   editActionsForRowAtIndexPath indexPath: NSIndexPath)
                   -> [AnyObject]?
    {
        // 削除
        let del = UITableViewRowAction(style: .Default, title: "Delete")
            {(action, indexPath) in
//                self.itemArray.removeAtIndex(indexPath.row)
//                tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            }
        
        del.backgroundColor = UIColor.redColor()
        
        return [del]
    }
    
    func tableView(tableView: UITableView,
                   didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        // Show DataEditViewController
        let edVC = EditDataViewController.getVCWithUI()
        self.presentViewController(edVC, animated: true, completion: nil)
    }
    
    
    // Other methods
    
    
}
