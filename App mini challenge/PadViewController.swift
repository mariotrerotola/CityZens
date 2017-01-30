//
//  PadViewController.swift
//  App mini challenge
//
//  Created by Drck on 28/01/2017.
//  Copyright © 2017 Mario Trerotola. All rights reserved.
//

import UIKit

class PadViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var storeButton: UIButton!
    @IBOutlet weak var orderNow: UIButton!
    @IBOutlet weak var padTable: UITableView!
    @IBOutlet weak var imageHolder: UIView!
    @IBOutlet weak var imageViewHolder: UIImageView!
    
    let padData = ["Current order status","My shoplist","My orders","Options"]
    
    let padSegues = ["statusVC","checklistsVC","VC3","VC4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
        imageHolder.clipsToBounds = true

        
    var alertPad = 0
        
        if alertPad == 0 {
            
        let alert = UIAlertController(title: "This is your pad", message: "Here you can find \nyour orders and shoplist", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Go", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
            
           
        }
        
        
      imageViewHolder.isUserInteractionEnabled = true
        imageHolder.isUserInteractionEnabled = true
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(PadViewController.addPulse))
        tapGestureRecognizer.numberOfTapsRequired = 1
        imageViewHolder.addGestureRecognizer(tapGestureRecognizer)
        
        imageHolder.addGestureRecognizer(tapGestureRecognizer)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        imageHolder.layer.cornerRadius = imageViewHolder.frame.height / 2
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return padData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = padTable.dequeueReusableCell(withIdentifier: "padcell")
        
        let datacell = padData[indexPath.row]
        
        cell?.textLabel?.text = datacell
        
        cell?.detailTextLabel?.text = "Hello"
        
        cell?.backgroundColor = UIColor.clear
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vcName = padSegues[indexPath.row]
        
        let viewController = storyboard?.instantiateViewController(withIdentifier: vcName)
        
        self.navigationController?.pushViewController(viewController!, animated: true)
        
        
        

    }
    
    func addPulse(){
        let pulse = Pulsing(numberOfPulses: 3, radius: 220, position: imageViewHolder.center)
        pulse.animationDuration = 2.0
        pulse.backgroundColor = UIColor.orange.cgColor
        
           let pulse2 = Pulsing(numberOfPulses: 3, radius: 220, position: imageHolder.center)
        pulse2.animationDuration = 2.0
        pulse2.backgroundColor = UIColor.orange.cgColor

        
        self.view.layer.insertSublayer(pulse, below: imageViewHolder.layer)
        self.view.layer.insertSublayer(pulse2, below: imageHolder.layer)
        
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
