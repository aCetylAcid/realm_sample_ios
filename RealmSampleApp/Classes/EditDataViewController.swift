//
//  EditDataViewController.swift
//  RealmSampleApp
//
//  Created by aCetylAcid on 2015/06/21.
//  Copyright (c) 2015年 zrn-ns.com. All rights reserved.
//

import UIKit

class EditDataViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func updateBtnTapped(sender: AnyObject) {
    }
    
    class func getVCWithUI() -> EditDataViewController {
        let storyboard = UIStoryboard(name: "DataCRUD", bundle: nil)
        let vc = storyboard
            .instantiateViewControllerWithIdentifier("EditDataViewController")
            as! EditDataViewController
        return vc
    }
    
}