//
//  TweetListViewController.swift
//  pentagonTableView21
//
//  Created by Shin on 2021/01/11.
//

import UIKit

class TweetListViewController: UIViewController {

    @IBOutlet weak var tweetTableView: UITableView!
  
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
    }
}

//MARK: - UITableViewDelegate
    extension TweetListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }

}
//MARK: - UITableViewDataSource
extension TweetListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    
    
    
}
