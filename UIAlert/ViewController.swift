//
//  ViewController.swift
//  UIAlert
//
//  Created by mstcode on 08/12/15.
//  Copyright © 2015 mstcode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func showAlert(sender: AnyObject) {
        let alertController = UIAlertController(title: "My App", message: "Hey", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default) {
          UIAlertAction in
            self.alertOk()
            
        })
        
        alertController.addAction(UIAlertAction(title: "Delete", style: UIAlertActionStyle.Destructive) {
            UIAlertAction in
            self.alertDelete()
            
            })
        
        alertController.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
        
    }
    
    func alertOk() {
        print("alert OK")
    }
    
    func alertDelete() {
        print("alert DELETE")
    }
}

