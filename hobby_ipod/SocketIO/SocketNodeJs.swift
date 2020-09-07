//
//  SocketNodeJs.swift
//  hobby_ipod
//
//  Created by Sota Saito on 2020/08/27.
//  Copyright © 2020 unwithdrawal. All rights reserved.
//

import UIKit
import SocketIO
import Foundation

class TestViewController: UIViewController,UITableViewDataSource, UITableViewDelegate{


    
    let manager = SocketManager(socketURL: URL(string:"http://localhost:8080/")!, config: [.log(true), .compress])
    var socket : SocketIOClient!
    var dataList :NSMutableArray! = []
    
    
    
    @IBOutlet weak var messageTextField: UITextField!
    var textFieldString = ""            //ここがインスタンスを入れる箱
    
    
    
    //今回使ってないループのやつ
    func roopSending(){
        tapButtonAction((Any).self)
    }
    
    func textFieldShouldReturn(_ messageTextField: UITextField) -> Bool {
              messageTextField.resignFirstResponder()
           return true
           
       }
    
    //別のクラスの関数を呼び出すクラス
    func catchingNumber() ->Int {
        let connection = RandomNumberForSocket()
        connection.sendings()
        return connection.sendings()
    }
    
    
    
    @objc func selector(){
        tapButtonAction((Any).self)
    }
    
    @IBOutlet weak var testTableView: UITableView!
    
    var flag:Bool = false
    @IBAction func switchToggleAction(_ sender: Any) {
        while true {
            
            flag = false
        }
        while false {
        }
        
    }
    
    @IBAction func tapButtonAction(_ sender: Any) {

        let aaaaa = catchingNumber()                        //catchingNumberを定数として宣言
        
        textFieldString = messageTextField.text!            //textFieldStringに代入
        
       // socket.emit("from_client", textFieldString)         //textFiledStringの中身をemit
        socket.emit("from_client", aaaaa)                   //他クラスから実行した関数の戻り値をemit
        
        
        messageTextField.text = ""                          //送信後、textFieldの中身を初期化
        messageTextField.endEditing(true)                   //キーボードをしまう
        //この下にも複数のメソッドを書くことでボタンの機能を拡充させることが可能
        
     
    }
    @IBAction func reconnectButtonAction(_ sender: Any) {
        socket.connect()
    }
    @IBAction func desconnectButtonAction(_ sender: Any) {
        socket.disconnect()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(selector), userInfo: nil, repeats: true)
        
        //テキストフィールドの設定（追記項目）
        messageTextField.returnKeyType = UIReturnKeyType.done //リターンキーにDoneを充てる
        
        testTableView.delegate = self
        testTableView.dataSource = self

        socket = manager.defaultSocket

        socket.on(clientEvent: .connect){ data, ack in
            print("socket connected!")
        }

        socket.on(clientEvent: .disconnect){data, ack in
            print("socket disconnected!")
        }

        socket.on("from_server"){data, ack in
            if let message = data as? [String]{
                print(message[0])
                self.dataList.insert(message[0],at: 0)
                self.testTableView.reloadData()
            }
        }
        socket.connect()
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = dataList[indexPath.row] as? String;
        return cell
    }
        
    
}
