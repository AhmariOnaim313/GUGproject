//
//  DiscriminationTableViewController.swift
//  GUGproject
//
//  Created by Kiley Abbot on 7/16/20.
//  Copyright © 2020 MK, Nasrin, Kiley. All rights reserved.
//

import UIKit

class DiscriminationTableViewController: UITableViewController {
    var discArticles = ["ArticleHERE1", "ArticleHERE2", "ArticleHERE3", "ArticleHERE4", "ArticleHERE5"]
    
    @IBOutlet weak var discTV: UITableView!
    
    
    override func viewDidLoad()
        
    {
        super.viewDidLoad()
            
        discTV.delegate = self
        discTV.dataSource = self
        //SEPARATE LINES DISAPPEAR
            
        discTV.separatorStyle = .none
        discTV.showsVerticalScrollIndicator = false
            
        }
        
        func tableView(_tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
        {
            return 150
        }
        
        //counts the amount of articles/amt in array
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
            {
                return discArticles.count
            }
            
        //changes text to whichever cell & array it is
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
            {
            let cell = discTV.dequeueReusableCell(withIdentifier: "discriminationCell") as! DiscriminationTableViewCell
                            
            let discriminations = discArticles[indexPath.row]
                            
        cell.discLabel.text = discriminations
        //rounds the corner a lil
        cell.discView.layer.cornerRadius = cell.discView.frame.height / 4
                            
        return cell
        }
                    
}
        
