//
//  RandomNumberForSocket.swift
//  hobby_ipod
//
//  Created by Sota Saito on 2020/09/04.
//  Copyright © 2020 unwithdrawal. All rights reserved.
//

import Foundation
import UIKit

class RandomNumberForSocket:UIViewController{
//こっちが変数を作って渡すクラス
    
   
    
    func sendings(randomInt:Int)->Int  {
    let randomInt = Int.random(in: 1..<101)
    return randomInt
        
    }
}
