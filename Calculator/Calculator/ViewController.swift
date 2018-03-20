//
//  ViewController.swift
//  Calculator
//
//  Created by Данил Нечай on 25.09.17.
//  Copyright © 2017 Данил Нечай. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var newValue : Bool = false
    var oper : Int  = 0 // 0 - нет операции 1)+2)-3)*4)\
    var ans : Int = 0;
    @IBOutlet weak var lAns: UILabel!
    func check()
    {
        if(newValue)
        {
            if(oper != 0)
            {
                ans = Int (lAns.text!)!
            }
            else
            {
                ans = 0
            }
            lAns.text = ""
            newValue = false
        }
    }
    func operDo()
    {
        if(oper != 0 && !newValue)
        {
            if (oper == 1)
            {
                ans =  ans + Int(lAns.text!)!
                lAns.text = String (ans)
            }
            if (oper == 2)
            {
                ans =  ans - Int(lAns.text!)!
                lAns.text = String (ans)
            }
            if (oper == 3)
            {
                ans =  ans * Int(lAns.text!)!
                lAns.text = String (ans)
            }
            if (oper == 4)
            {
                ans =  ans / Int(lAns.text!)!
                lAns.text = String (ans)
            }
        }
        
    }
    @IBAction func touchDivide(_ sender: Any) {
       operDo()
        
        oper = 4
        newValue = true
    }
    @IBAction func touchMultiply(_ sender: Any) {
        
        operDo()
       
            oper = 3
            newValue = true
        
        
        
    }
    @IBAction func touchSame(_ sender: Any) {
        
        if (oper == 1)
        {
            ans =  ans + Int(lAns.text!)!
            lAns.text = String (ans)
        }
        if (oper == 2)
        {
            ans =  ans - Int(lAns.text!)!
            lAns.text = String (ans)
        }
        if (oper == 3)
        {
            ans =  ans * Int(lAns.text!)!
            lAns.text = String (ans)
        }
        if (oper == 4)
        {
            ans =  ans / Int(lAns.text!)!
            lAns.text = String (ans)
        }
     
        oper = 0
        newValue = true
        lAns.text = String(ans)
    }
    @IBAction func touchM(_ sender: Any) {
        operDo()
        
        
        oper = 2
        newValue = true
    }
    @IBAction func touchP(_ sender: Any) {
        
          operDo()
        
        oper = 1
        newValue = true
    }
    @IBAction func touch9(_ sender: Any) {
       check()
        lAns.text! += "9"
    }
    @IBAction func touch8(_ sender: Any) {
        check()
        lAns.text! += "8"
    }
    @IBAction func touch7(_ sender: Any) {
       check()
        lAns.text! += "7"
    }
    @IBAction func touch6(_ sender: Any) {
       check()
        lAns.text! += "6"
    }
    @IBAction func touch5(_ sender: Any) {
        check()
        lAns.text! += "5"
    }
    @IBAction func touch4(_ sender: Any) {
        check()
        lAns.text! += "4"
    }
    @IBAction func touch3(_ sender: Any) {
        check()
        lAns.text! += "3"
    }
    @IBAction func touch2(_ sender: Any) {
        check()
        lAns.text! += "2"
    }
    @IBAction func touch1(_ sender: Any) {
        check()
         lAns.text! += "1"
    }
   
    @IBAction func touch0(_ sender: Any) {
        
        if(lAns.text?.count != 0 && !newValue)
        {
            check()
            lAns.text! += "0"
        }
    }
    
    @IBAction func touchDeleteAll(_ sender: Any) {
        ans = 0
        oper = 0
        lAns.text = ""
        newValue = false
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


