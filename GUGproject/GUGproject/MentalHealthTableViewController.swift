//
//  MentalHealthTableViewController.swift
//  GUGproject
//
//  Created by Kiley Abbot on 7/16/20.
//  Copyright © 2020 MK, Nasrin, Kiley. All rights reserved.
//

import UIKit

class MentalHealthTableViewController: UITableViewController
{
    var mhArticles = ["ArticleHERE1", "ArticleHERE2", "ArticleHERE3", "ArticleHERE4", "ArticleHERE5"]
    
    
    @IBOutlet weak var mentalHealthVC: UITableView!
    
    override func viewDidLoad()
        
    {
        super.viewDidLoad()
            
        mentalHealthVC.delegate = self
        mentalHealthVC.dataSource = self
        //SEPARATE LINES DISAPPEAR
            
        mentalHealthVC.separatorStyle = .none
        mentalHealthVC.showsVerticalScrollIndicator = false
            
        }
        
        func tableView(_tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
        {
            return 150
        }
        
        //counts the amount of articles/amt in array
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
            {
                return mhArticles.count
            }
            
        //changes text to whichever cell & array it is
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
            {
                let cell = mentalHealthVC.dequeueReusableCell(withIdentifier: "mentalHealthCell") as! MentalHealthTableViewCell
                
                let mentalhealths = mhArticles[indexPath.row]
                
                cell.mentalHealthLabel.text = mentalhealths
                //rounds the corner a lil
                cell.mentalHealthView.layer.cornerRadius = cell.mentalHealthView.frame.height / 4
                
                return cell
            }
        
    }

