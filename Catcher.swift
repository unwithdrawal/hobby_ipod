//
//  Catcher.swift
//  hobby_ipod
//
//  Created by Sota Saito on 2020/09/04.
//  Copyright © 2020 unwithdrawal. All rights reserved.
//

import Foundation
import UIKit

class Catcher:UIViewController{
    //こっちが変数受け取るクラス
    func catchings(){
        let connect = Sender()
        connect.sendings()
    }
    
    @IBAction func buttonofCatcher(_ sender: Any) {
        catchings()
    }
    
}
