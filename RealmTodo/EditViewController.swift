//
//  EditViewController.swift
//  RealmTodo
//
//  Created by Koichi Muranaka on 2021/02/19.
//

import UIKit
import RealmSwift

class EditViewController: UIViewController {
    
    // ViewControllerから渡されたindexPath.row
    var passedNumber = 0
    
    // RealmData型の変数を用意（まだ空っぽの配列）
    var todoList: Results<RealmData>!
    
    @IBOutlet var editTextField: UITextField!
    @IBOutlet var editTextView: UITextView!
    @IBOutlet var updateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ボタンを丸くする
        updateButton.layer.cornerRadius = updateButton.bounds.height/2
        updateButton.layer.masksToBounds = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // Realm使う宣言！
        let realm = try! Realm
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        // Realmから受け取るデータをtodoList変数（配列）に突っ込む
        
        // 取得したTodoリストのPassedNumber番目をeditData変数に代入
        
        // TextFieldとTextViewに値をだいにゅ〜
        
        // Realmの中身を確認するためのprint文
    }
    
    @IBAction func update() {
        // Realm使う宣言！
        
        // 更新のコード(データベースに上書き)
        
        navigationController?.popViewController(animated: true)
        
        // Realmの中身を確認するためのprint文
    }
    
    @IBAction func delete() {
        // Realm使う宣言！
        
        // 取得したTodoリストのPassedNumber番目をeditData変数に代入
        // 削除のコード（番号を指定）
        
        navigationController?.popViewController(animated: true)
    }
    // 
    
    
}
