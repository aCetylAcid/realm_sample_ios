//
//  AddDataViewController.swift
//  RealmSampleApp
//
//  Created by aCetylAcid on 2015/06/21.
//  Copyright (c) 2015年 zrn-ns.com. All rights reserved.
//

import UIKit

class AddDataViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func addBtnTapped(sender: AnyObject) {
    }
    
    class func getVCWithUI() -> AddDataViewController {
        let storyboard = UIStoryboard(name: "DataCRUD", bundle: nil)
        let vc = storyboard
            .instantiateViewControllerWithIdentifier("AddDataViewController")
            as! AddDataViewController
        return vc
    }
    
}
