//
//  AboutUsTableViewController.swift
//  GUGproject
//
//  Created by Kiley Abbot on 7/16/20.
//  Copyright © 2020 MK, Nasrin, Kiley. All rights reserved.
//

import UIKit

class AboutUsTableViewController: UITableViewController

{
    var auArticles = ["ArticleHERE1", "ArticleHERE2", "ArticleHERE3"]
    
    
    @IBOutlet weak var aboutUsTV: UITableView!
    
    override func viewDidLoad()
        
    {
        super.viewDidLoad()
            
        aboutUsTV.delegate = self
        aboutUsTV.dataSource = self
        //SEPARATE LINES DISAPPEAR
            
        aboutUsTV.separatorStyle = .none
        aboutUsTV.showsVerticalScrollIndicator = false
            
        }
        
        func tableView(_tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
        {
            return 150
        }
        
        //counts the amount of articles/amt in array
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
            {
                return auArticles.count
            }
            
        //changes text to whichever cell & array it is
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
            {
                let cell = aboutUsTV.dequeueReusableCell(withIdentifier: "aboutUsCell") as! AboutUsTableViewCell
                
                let aboutus_string = auArticles[indexPath.row]
                
                cell.aboutUsLabel.text = aboutus_string
                //rounds the corner a lil
                cell.aboutUsView.layer.cornerRadius = cell.aboutUsView.frame.height / 4
                
                return cell
            }
        
    }
