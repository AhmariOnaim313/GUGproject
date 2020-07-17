//
//  BeautyTableViewController.swift
//  GUGproject
//
//  Created by Kiley Abbot on 7/16/20.
//  Copyright © 2020 MK, Nasrin, Kiley. All rights reserved.
//

import UIKit

class BeautyTableViewController: UITableViewController {
    var byArticles = ["ArticleHERE1", "ArticleHERE2", "ArticleHERE3", "ArticleHERE4", "ArticleHERE5"]
    
    @IBOutlet weak var beautyView: UITableView!
    
    override func viewDidLoad()
        
    {
        super.viewDidLoad()
            
        beautyView.delegate = self
        beautyView.dataSource = self
        //SEPARATE LINES DISAPPEAR
            
        beautyView.separatorStyle = .none
        beautyView.showsVerticalScrollIndicator = false
            
        }
        
        func tableView(_tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
        {
            return 150
        }
        
        //counts the amount of articles/amt in array
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
            {
                return byArticles.count
            }
            
        //changes text to whichever cell & array it is
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
            {
                let cell = beautyView.dequeueReusableCell(withIdentifier: "beautyCell") as! BeautyTableViewCell
                
                let beautys = byArticles[indexPath.row]
                
                cell.beautyLabel.text = beautys
                //rounds the corner a lil
                cell.beautyView.layer.cornerRadius = cell.beautyLabel.frame.height / 4
                
                return cell
            }
        
    }
