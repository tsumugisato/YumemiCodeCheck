//
//  ViewController.swift
//  RealmTodo
//
//  Created by Koichi Muranaka on 2021/02/19.
//

import UIKit
import RealmSwift

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var todoTableView: UITableView!
    
    // RealmData型の変数を用意（まだ空っぽの配列）
    var todoList: Results<RealmData>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // TableViewの教材参照
        self.todoTableView.delegate = self
        self.todoTableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        // Realm使う宣言！
        let realm = try! Realm()
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        // Realmから受け取るデータをtodoList変数（配列）に突っ込む
    
        // tableViewを更新
        
        // Realmの中身を確認するためのprint文
    
    }
            
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // todoList変数（配列）に格納されてるデータ
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // TableViewの教材参照
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        // 取得したTodoリストのindexPath.row番目をeachData変数に代入
        
        // セルに反映
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // 画面遷移先を指定
        performSegue(withIdentifier: "toEditVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toEditVC" {
            
            let indexPath = todoTableView.indexPathForSelectedRow!
            
            let destination = segue.destination as? EditViewController
            
            destination?.passedNumber = indexPath.row
        }
    }
    
}
