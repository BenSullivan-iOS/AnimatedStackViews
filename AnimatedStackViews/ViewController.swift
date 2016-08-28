//
//  ViewController.swift
//  AnimatedStackViews
//
//  Created by Ben Sullivan on 09/08/2016.
//  Copyright © 2016 Ben Sullivan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet var htest: [UIButton]! {
    
    didSet {
      
      htest.forEach {
        
        $0.isHidden = true
        
      }
    }
  }
  
  @IBAction func htestpushed(_ sender: UIButton) {
    
    
    UIView.animate(withDuration: 0.5) {
      
      self.htest.forEach {
        
        $0.isHidden = !$0.isHidden
      }
    }
  }

  
  
  @IBOutlet var emojis: [UIButton]! {
    
    didSet {
      
      emojis.forEach {
        
        $0.isHidden = true
        
      }
    }
  }
  
  @IBOutlet var horizontalEmojis: [UIButton]! {
    
    didSet {
      
      horizontalEmojis.forEach {
        
        return $0.isHidden = true
      }
    }
  }
  
  @IBAction func happyEmojiPressed(_ sender: UIButton) {
    
    UIView.animate(withDuration: 0.5) {
      
      self.horizontalEmojis.forEach {
        
        $0.isHidden = !$0.isHidden

      }
    }
  }
  
  @IBAction func settingsButtonTapped(_ sender: UIButton) {
    
    UIView.animate(withDuration: 0.5) {
      
      self.emojis.forEach {
        
        $0.isHidden = !$0.isHidden
      }
    }
  }
}

