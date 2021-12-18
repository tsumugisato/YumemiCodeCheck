//
//  AddViewController.swift
//  RealmTodo
//
//  Created by Koichi Muranaka on 2021/02/19.
//

import UIKit
import RealmSwift

class AddViewController: UIViewController {

    @IBOutlet var todoTextField: UITextField!
    @IBOutlet var memoTextView: UITextView!
    @IBOutlet var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ボタンを丸くする
        saveButton.layer.cornerRadius = saveButton.bounds.height/2
        saveButton.layer.masksToBounds = true
    }
    
    @IBAction func save() {
        //Realm拡張子のデータベースをローカルに作成
        let realm = try! Realm()
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        //RealmDataのクラスをインスタンス化
        let object = RealmData()
        //保存のコード(DataBaseに書き込み)
        object.memo = memoTextView.text
        object.todo = todoTextField.text
        
        try! realm.write{
            realm.add(RealmData(value: object))
            // Realmの中身を確認するためのprint文 
        }
        navigationController?.popViewController(animated: true)
    }

    

}
