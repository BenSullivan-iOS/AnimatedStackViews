//
//  ViewController.swift
//  AnimatedStackViews
//
//  Created by Ben Sullivan on 09/08/2016.
//  Copyright © 2016 Ben Sullivan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var stackViewWidth: NSLayoutConstraint!
  
  var compressed = true
  
  @IBAction func goAnimateButtonPressed(_ sender: UIButton) {
    
    UIView.animate(withDuration: 2.0,
                               delay: 0.0,
                               usingSpringWithDamping: 0.5,
                               initialSpringVelocity: 4.0,
                               options: .curveLinear,
                               animations: { () -> Void in
                                self.stackViewWidth.constant = (self.compressed == false) ? 100.0 : 200.0
                                self.compressed = !self.compressed
                                self.view.layoutIfNeeded()
      }, completion: nil)
  }
  
  
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

