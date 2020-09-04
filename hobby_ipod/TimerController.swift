//
//  TimerController.swift
//  hobby_ipod
//
//  Created by Sota Saito on 2020/08/26.
//  Copyright © 2020 unwithdrawal. All rights reserved.
//

import UIKit

class TimerViewController : UIViewController{
    
    var timer = Timer()
    var count = 0
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(dataSending), userInfo: nil, repeats: true)
        }
    @objc func dataSending(){
        print("プリントが呼ばれたよ")
    }
}
