//
//  ViewController.swift
//  FirstDemo
//
//  Created by DemoCI on 03.22.18.
//  Copyright © 2018 DemoCI. All rights reserved.
//This is from tester branch - should monitor changes  ViewController
//This is second change from tester changes again to!
//chnage 3 from unittestmodel
//chenage from unittestmodel2

//
//new change from unit test model

//chenage4 from unittestmodel2
//this is change after git atrributes addition to test model2


import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func numberOfVowels(in string: String) -> Int {
    let vowels: [Character] = ["a", "e", "i", "o", "u",
                               "A", "E", "I", "O", "U"]
    
    return string.characters.reduce(0) {
      $0 + (vowels.contains($1) ? 1 : 0)
    }
  }
  
  func makeHeadline(from string: String) -> String {
    let words = string.components(separatedBy: " ")
    
    
    let headlineWords = words.map { (word) -> String in
      var mutableWord = word
      let first = mutableWord.remove(at: mutableWord.startIndex)
      
      return String(first).uppercased() + mutableWord
    }
    
    
    return headlineWords.joined(separator: " ")
  }
}

