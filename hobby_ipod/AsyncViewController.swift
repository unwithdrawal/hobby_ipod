//
//  AsyncViewController.swift
//  hobby_ipod
//
//  Created by Sota Saito on 2020/09/04.
//  Copyright © 2020 unwithdrawal. All rights reserved.
//

import Foundation
import UIKit
import Dispatch
import SocketIO


let queue = DispatchQueue.main //メインディスパッチキューを取得

class AsyncViewController:UIViewController{
    let manager = SocketManager(socketURL: URL(string:"http://localhost:8080/")!, config: [.log(true), .compress])
    var socket : SocketIOClient!
    var dataList :NSMutableArray! = []
    
    
    override func viewDidLoad() {
        
    }
}

class SomeOparation:Operation{
    let number = Int()
    

}
