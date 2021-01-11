//
//  TweetListViewController.swift
//  pentagonTableView21
//
//  Created by Shin on 2021/01/11.
//

import UIKit

class TweetListViewController: UIViewController {

    @IBOutlet weak var tweetTableView: UITableView!
  
     let array = [0, 1, 2, 3, 4, 5, 6]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
}


//MARK: - private extension
private extension TweetListViewController {

    
     //tableVIewの設定
    func setupTableView() {
        tweetTableView.delegate = self
        tweetTableView.dataSource = self
        tweetTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
}

//MARK: - UITableViewDelegate
    extension TweetListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
  //      indexPath.section
  //      indexPath.row
      
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = "\(array[indexPath.row])"
        return cell
    }

        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print("\(#function) \(array[indexPath.row])")
        }
    }
        
        
//MARK: - UITableViewDataSource
extension TweetListViewController: UITableViewDataSource {
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    
    
    
}
