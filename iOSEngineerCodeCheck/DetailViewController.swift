//
//  ViewController2.swift
//  iOSEngineerCodeCheck
//
//  Created by 史 翔新 on 2020/04/21.
//  Copyright © 2020 YUMEMI Inc. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var LanguageLabel: UILabel!
    @IBOutlet weak var StarsLabel: UILabel!
    @IBOutlet weak var WatchersLabel: UILabel!
    @IBOutlet weak var ForksLabel: UILabel!
    @IBOutlet weak var IssuesLabel: UILabel!
    
    var searchViewController: SearchViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let repository = searchViewController.repository[searchViewController.index!]
        
        LanguageLabel.text = "Written in \(repository["language"] as? String ?? "")"
        StarsLabel.text = "\(repository["stargazers_count"] as? Int ?? 0) stars"
        WatchersLabel.text = "\(repository["wachers_count"] as? Int ?? 0) watchers"
        ForksLabel.text = "\(repository["forks_count"] as? Int ?? 0) forks"
        IssuesLabel.text = "\(repository["open_issues_count"] as? Int ?? 0) open issues"
        getImage()
        
    }
    
    func getImage(){
        
        let repository = searchViewController.repository[searchViewController.index!]
        
        TitleLabel.text = repository["full_name"] as? String
        
        if let owner = repository["owner"] as? [String: Any],let imgURL = owner["avatar_url"] as? String{
            URLSession.shared.dataTask(with: URL(string: imgURL)!) { (data, res, err) in
                let img = UIImage(data: data!)!
                DispatchQueue.main.async {
                    self.ImageView.image = img
                }
            }.resume()
        }
    }
    
}
