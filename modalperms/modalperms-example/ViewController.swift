//
//  ViewController.swift
//  modalperms-example
//
//  Created by Nick O'Neill on 4/5/15.
//  Copyright (c) 2015 That Thing in Swift. All rights reserved.
//

import UIKit
import modalperms

class ViewController: UIViewController {
    let modal = ModalPerms()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doAThing() {
        modal.addPermission(PermissionConfig(type: .Contacts, message: "We use this to show you\r\n a list of your contacts"))
        modal.addPermission(PermissionConfig(type: .Notifications, message: "We use this to send you\r\nspam and love notes"))
        modal.addPermission(PermissionConfig(type: .Location, message: "We use this to send you\r\nspam and love notes"))

        modal.show()
    }
}

