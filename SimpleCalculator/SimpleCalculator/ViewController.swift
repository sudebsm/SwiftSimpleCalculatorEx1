//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Sudeb Sarkar on 23/07/17.
//  Copyright © 2017 test ss. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var value1 : Int = 0
    var value2 : Int = 0
    var opType : Character = "a"
    @IBOutlet var txtFld : UITextField?
    
    
    @IBAction func btnPressed (_ sender:UIButton ){
        txtFld?.textAlignment = NSTextAlignment.right
        let btnName = sender.currentTitle
        print("Item Pressed"+btnName!)
        print("Item Pressed"+(txtFld?.text)!)

        if btnName?.lowercased().range(of:"+") != nil {
            print("exists")
        }
        
        if (txtFld?.text=="") {
             txtFld?.text = btnName
           
        }else if (btnName=="+") || (btnName=="-") || (btnName=="/") || (btnName=="*") || (btnName=="=") {
            
           calculation(UserGivenNo: btnName!)
        }
        else {
            let a:Int? = Int((txtFld?.text!)!)!*10
            let b:Int? = Int(btnName!)
            txtFld?.text = String(a!+b!)
        }
    }
    
    
    
    
    
    
// For calculation 
    
    func calculation(UserGivenNo digitVal:String) {
        let Op : String = digitVal
        
        
        switch Op {
        case "+":
            opType = Character(Op)
            value1 = Int((txtFld?.text!)!)!
            txtFld?.text = "0"
            break
        case "-":
            opType = Character(Op)
            value1 = Int((txtFld?.text!)!)!
            txtFld?.text = "0"
            break
        case "*":
            opType = Character(Op)
            value1 = Int((txtFld?.text!)!)!
            txtFld?.text = "0"
            break
        case "/":
            opType = Character(Op)
            value1 = Int((txtFld?.text!)!)!
            txtFld?.text = "0"
            break
        case "=":
            value2 = Int((txtFld?.text!)!)!
            if opType=="+" {
                value2 = value1 + value2
            }else if opType=="-" {
                value2 = value1 - value2
            }else if opType=="*" {
                value2 = value1 * value2
            }else if opType=="/" {
                value2 = value1 / value2
            }
            
            txtFld?.text = String(value2)
            break
        default: break
            
        }
        //print("")
    }
    
    
    
    
    
    
    
    
    
    
    
    
}

