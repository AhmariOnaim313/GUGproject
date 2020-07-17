//
//  WomensHealthTableViewController.swift
//  GUGproject
//
//  Created by Kiley Abbot on 7/16/20.
//  Copyright © 2020 MK, Nasrin, Kiley. All rights reserved.
//

import UIKit

class WomensHealthTableViewController: UITableViewController {

    var whArticles = ["ArticleHERE1", "ArticleHERE2", "ArticleHERE3", "ArticleHERE4", "ArticleHERE5"]
    
    @IBOutlet weak var womensHealthTV: UITableView!
    
    override func viewDidLoad()
        
    {
        super.viewDidLoad()
            
        womensHealthTV.delegate = self
        womensHealthTV.dataSource = self
        //SEPARATE LINES DISAPPEAR
            
        womensHealthTV.separatorStyle = .none
        womensHealthTV.showsVerticalScrollIndicator = false
            
        }
        
        func tableView(_tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
        {
            return 150
        }
        
        //counts the amount of articles/amt in array
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
            {
                return whArticles.count
            }
            
        //changes text to whichever cell & array it is
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
            {
                let cell = womensHealthTV.dequeueReusableCell(withIdentifier: "womensHealthCell") as! WomensHealthTableViewCell
                
                let womenshealth = whArticles[indexPath.row]
                
                cell.womensHealthLabel.text = womenshealth
                //rounds the corner a lil
                cell.womensHealthView.layer.cornerRadius = cell.womensHealthView.frame.height / 4
                
                return cell
            }
        
    }
