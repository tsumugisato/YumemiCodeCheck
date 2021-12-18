//
//  RealmData.swift
//  RealmTodo
//
//  Created by tomoki hoshikawa on 2021/02/20.
//

import UIKit
import RealmSwift

class RealmData: Object {
    @objc dynamic var memo: String? = ""
    @objc dynamic var todo: String? = ""
    //データには必ず @objc dynamic をつける
    
}
