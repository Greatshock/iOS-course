//
//  ViewController.swift
//  BlurApp
//
//  Created by Nikita Marinosyan on 20.03.2018.
//  Copyright © 2018 Nikita Marinosyan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!
    
    var blurEffectView: UIVisualEffectView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Apply blurring effect
        backgroundImageView.image = UIImage(named: "Image")
        
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.light);
        blurEffectView = UIVisualEffectView(effect: blurEffect);
        blurEffectView?.frame = view.bounds;
        
        backgroundImageView.addSubview(blurEffectView!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

