//
//  AlamofireTestVC.swift
//  App mini challenge
//
//  Created by Vitali Karabchuk on 30/01/2017.
//  Copyright © 2017 Mario Trerotola. All rights reserved.
//

import UIKit

class AlamofireTestVC: UIViewController {

    @IBOutlet weak var console: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        console.text = "Working"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
