//
//  TableViewController.swift
//  AnimatedStackViews
//
//  Created by Ben Sullivan on 09/08/2016.
//  Copyright © 2016 Ben Sullivan. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
  func numberOfSections(in tableView: UITableView) -> Int {
    return 3
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    switch section {
      
    case 0:
      return 1
    case 1:
      return 1
    case 2:
      return 50
    default:
      return 0
    }
  }
  
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    switch (indexPath as NSIndexPath).section {
    case 0:
      
      let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
      
      cell.textLabel?.text = "yo!"
      cell.backgroundColor = UIColor.yellow
      return cell
      
    case 1:
      let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)
      
      cell.textLabel?.text = "Hello there"
      cell.backgroundColor = UIColor.blue

      return cell
      
    case 2:
      let cell = tableView.dequeueReusableCell(withIdentifier: "cell3", for: indexPath)
      
      cell.textLabel?.text = "Yep :)"
      return cell
      
    default: return UITableViewCell()
    }
  }
}
