//
//  ViewController.swift
//  ShowMe
//
//  Created by Miron on 25.09.17.
//  Copyright © 2017 Miron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textToSendField: UITextField!
    @IBAction func showMe(_ sender: Any) {
        NSLog("User Wrote: %@", textToSendField.text!)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let messageController = segue.destination as! MessageViewController
        messageController.messageData = textToSendField.text
    }

}

