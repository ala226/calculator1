//
//  ViewController.swift
//  calculator1
//
//  Created by Eng.lolla on 11/20/18.
//  Copyright © 2018 Eng.lolla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 var perviuosnum = 0
    var numoscreen = 0
    var operationum = 0
    var performInMath = false
    @IBOutlet weak var Result: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func numbers(_ sender: UIButton) {
        if(performInMath==true)
        {
            Result.text = String(sender.tag - 1)
            numoscreen = Int(Result.text!)!
            performInMath=false
            
        }
        else{
        Result.text = Result.text! + String(sender.tag - 1)
        
              numoscreen = Int(Result.text!)!
            
        }
        
    }
    
    @IBAction func operation(_ sender: UIButton)
    {
        
        
        if(sender.tag != 15  && Result.text != "" && sender.tag != 20)
        {
            perviuosnum = Int(Result.text!)!
           
            if(sender.tag == 11)
            {
            Result.text = "*"
        }
        else if (sender.tag == 12)
        {
            Result.text = "+"
        }
        else if (sender.tag == 13)
        {
            Result.text = "-"
        }
        else if (sender.tag == 14)
        {
            Result.text = "/"
        }
            
            
        operationum = sender.tag
            performInMath = true
        }
        
       else if(sender.tag == 15)
        {
           
            if(operationum == 11)
            {
           Result.text = String (numoscreen * perviuosnum)
            }
            else if(operationum == 12)
            {
                Result.text = String(numoscreen + perviuosnum)
              
            }
            else if(operationum==13)
            {
                Result.text = String(numoscreen - perviuosnum)
              
            }
            else if(operationum==14)
            {
                Result.text = String(numoscreen / perviuosnum)
               
            }
          
        }
        if sender.tag == 20
        {
            operationum = 0
            perviuosnum = 0
            numoscreen = 0
            Result.text = ""
        }
       
        
    }
    
}

