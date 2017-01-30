//
//  OrderStatusViewController.swift
//  App mini challenge
//
//  Created by Drck on 30/01/2017.
//  Copyright © 2017 Mario Trerotola. All rights reserved.
//

import UIKit

class OrderStatusViewController: UIViewController {
    
    
    
    @IBOutlet weak var orderStatusView: UIView!
    


    override func viewDidLoad() {
        super.viewDidLoad()
       orderStatusView.layer.cornerRadius = 10

     
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
