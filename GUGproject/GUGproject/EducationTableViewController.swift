//
//  EducationTableViewController.swift
//  GUGproject
//
//  Created by Kiley Abbot on 7/16/20.
//  Copyright © 2020 MK, Nasrin, Kiley. All rights reserved.
//

import UIKit

class EducationTableViewController: UITableViewController
{
    
    var eduArticles = ["ArticleHERE1", "ArticleHERE2", "ArticleHERE3", "ArticleHERE4", "ArticleHERE5"]
    
    
    @IBOutlet weak var educationTV: UITableView!
    
    override func viewDidLoad()
        
    {
        super.viewDidLoad()
            
        educationTV.delegate = self
        educationTV.dataSource = self
        //SEPARATE LINES DISAPPEAR
            
        educationTV.separatorStyle = .none
        educationTV.showsVerticalScrollIndicator = false
            
        }
        
        func tableView(_tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
        {
            return 150
        }
        
        //counts the amount of articles/amt in array
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
            {
                return eduArticles.count
            }
            
        //changes text to whichever cell & array it is
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
            {
                let cell = educationTV.dequeueReusableCell(withIdentifier: "educationCell") as! EducationTableViewCell
                
                let educations = eduArticles[indexPath.row]
                
                cell.educationLabel.text = educations
                //rounds the corner a lil
                cell.educationView.layer.cornerRadius = cell.educationView.frame.height / 4
                
                return cell
            }
        
    }
