//
//  CheckoutViewController.swift
//  App mini challenge
//
//  Created by Drck on 28/01/2017.
//  Copyright © 2017 Mario Trerotola. All rights reserved.
//

import UIKit

class CheckoutViewController: UIViewController {

    @IBOutlet weak var confirmButton: UIButton!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func confirmAction() {
        
        let alert = UIAlertController(title: "Order success!", message: "Congratulations!", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Go", style: .default) { (action) in
            
            let viewController = self.storyboard?.instantiateViewController(withIdentifier: "pad")
            
            self.navigationController?.pushViewController(viewController!, animated: true)

        }
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
    
        
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
