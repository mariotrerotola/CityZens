//
//  ViewController.swift
//  App mini challenge
//
//  Created by Mario Trerotola on 26/01/2017.
//  Copyright © 2017 Mario Trerotola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var underView: UIView!
    @IBOutlet weak var searchButton: UIView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textView: UIView!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
                
        searchButton.clipsToBounds = true
        searchButton.layer.cornerRadius = 8
        
        textView.clipsToBounds = true
        textView.layer.cornerRadius = 8
        
    
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}

