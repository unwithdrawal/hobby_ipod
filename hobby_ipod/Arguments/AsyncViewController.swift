//
//  AsyncViewController.swift
//  hobby_ipod
//
//  Created by Sota Saito on 2020/09/04.
//  Copyright © 2020 unwithdrawal. All rights reserved.
//

import UIKit
import Foundation

class tekitouClass:UIViewController{
    
    func sending(){
    let randomInt = UketoriViewController()
        randomInt.keisyou(rand:Int.random(in: 1...100))
    }
  
  
    @IBAction func buttonTapTap(_ sender: Any) {
        sending()
    }
    
    
}
