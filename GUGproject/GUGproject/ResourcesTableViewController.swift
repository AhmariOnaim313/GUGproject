//
//  ResourcesTableViewController.swift
//  GUGproject
//
//  Created by Kiley Abbot on 7/16/20.
//  Copyright © 2020 MK, Nasrin, Kiley. All rights reserved.
//

import UIKit

class ResourcesTableViewController: UITableViewController

{
    
    var resArticles = ["ArticleHERE1", "ArticleHERE2", "ArticleHERE3", "ArticleHERE4", "ArticleHERE5"]
    
    @IBOutlet weak var resourcesTV: UITableView!
    
    
    override func viewDidLoad()
        
    {
        super.viewDidLoad()
            
        resourcesTV.delegate = self
        resourcesTV.dataSource = self
        //SEPARATE LINES DISAPPEAR
            
        resourcesTV.separatorStyle = .none
        resourcesTV.showsVerticalScrollIndicator = false
            
        }
        
        func tableView(_tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
        {
            return 150
        }
        
        //counts the amount of articles/amt in array
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
            {
                return resArticles.count
            }
            
        //changes text to whichever cell & array it is
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
            {
                let cell = resourcesTV.dequeueReusableCell(withIdentifier: "resourcesCell") as! ResourcesTableViewCell
                
                let resources_string = resArticles[indexPath.row]
                
                cell.resourcesLabel.text = resources_string
                //rounds the corner a lil
                cell.resourcesView.layer.cornerRadius = cell.resourcesView.frame.height / 4
                
                return cell
            }
        
    }
