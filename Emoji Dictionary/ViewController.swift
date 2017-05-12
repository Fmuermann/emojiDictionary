//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Fred Muermann on 5/7/17.
//  Copyright © 2017 Fred Muermann. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var dacoolTableView: UITableView!
    var emojis = ["🕋","🕍","🕌","🤓","💩","⛩"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       dacoolTableView.dataSource = self
        dacoolTableView.delegate = self
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
      let cell = UITableViewCell()
        cell.textLabel?.text  = emojis[indexPath.row]
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

