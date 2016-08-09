//
//  ViewController.swift
//  AnimatedStackViews
//
//  Created by Ben Sullivan on 09/08/2016.
//  Copyright © 2016 Ben Sullivan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet var emojis: [UIButton]! {
    
    didSet {
      
      emojis.forEach {
        
        $0.hidden = true
        
      }
    }
  }
  
  @IBOutlet var horizontalEmojis: [UIButton]! {
    
    didSet {
      
      horizontalEmojis.forEach {
        
        return $0.hidden = true
      }
    }
  }
  
  @IBAction func happyEmojiPressed(sender: UIButton) {
    
    UIView.animateWithDuration(0.5) {
      
      self.horizontalEmojis.forEach {
        
        if $0.hidden {
          
          $0.hidden = false
          
        } else {
          
          $0.hidden = true
        }
      }
    }
  }
  
  @IBAction func settingsButtonTapped(sender: UIButton) {
    
    UIView.animateWithDuration(0.5) {
      
      self.emojis.forEach {
        
        if $0.hidden {
          
          $0.hidden = false
          
        } else {
          
          $0.hidden = true
        }
      }
    }
  }
}

