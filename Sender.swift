//
//  Sender.swift
//  hobby_ipod
//
//  Created by Sota Saito on 2020/09/04.
//  Copyright © 2020 unwithdrawal. All rights reserved.
//

import Foundation
import UIKit

class Sender:UIViewController{
    //こっちが変数を作って渡すクラス

    func sendings() {
        let randomInt = Int.random(in: 1..<101)
        let randomIntString:String = String(randomInt)
        print("ランダム数値をprintするよ",randomIntString)
    }
  
    
}


