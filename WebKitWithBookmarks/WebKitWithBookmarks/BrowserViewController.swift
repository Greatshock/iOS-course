//
//  ViewController.swift
//  Marinosyan_practice
//
//  Created by Nikita Marinosyan on 19.03.2018.
//  Copyright © 2018 Nikita Marinosyan. All rights reserved.
//

import UIKit
import WebKit

class BrowserViewController: UIViewController {

    @IBOutlet weak var webKitView: WKWebView!
    @IBOutlet weak var loadButton: UIButton!
    @IBOutlet weak var urlTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func loadButtonPressed(_ sender: Any) {
        
        if urlTextField.text == "" {
            popupAlert(title: "Error", message: "Please, provide a valid url")
            return
        }
        
        guard let url = URL(string: urlTextField.text!) else { return }
        
        let request = URLRequest(url: url)
        
        if (webKitView.load(request) != nil) {
            print("loaded")
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    @IBAction func bookMarkButtonPressed(_ sender: Any) {
        if urlTextField.text != "" {
            performSegue(withIdentifier: "showBookmarks", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.destination is BookmarksViewController else { return }
        if !bookmarks.contains(urlTextField.text!) {
            bookmarks.append(urlTextField.text!)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func popupAlert(title: String, message: String) {
        
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in alert.dismiss(animated: true, completion: nil)}))
            
            self.present(alert, animated: true, completion: nil)
        }
    }


}

