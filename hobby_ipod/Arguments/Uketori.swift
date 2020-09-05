//
//  Uketori.swift
//  hobby_ipod
//
//  Created by Sota Saito on 2020/09/04.
//  Copyright © 2020 unwithdrawal. All rights reserved.
//

import Foundation
import UIKit

class UketoriViewController{
    
    func keisyou(rand:Int){
           print("ランダムな数字はこちら",rand)
    }
    @IBAction func buttonbutton(_ sender: Any) {
        keisyou(rand: Int())
        
        }
}
