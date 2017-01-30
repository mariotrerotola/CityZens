//
//  SecondCheckViewController.swift
//  App mini challenge
//
//  Created by Drck on 30/01/2017.
//  Copyright © 2017 Mario Trerotola. All rights reserved.
//

import UIKit

class SecondCheckViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var customTableView: UITableView!

    let chechklistItems = ["Salame Piccante","Prosciutto cotto","1 kg Mela","1kg Banana","Yogurt Strawberry","2 pack of condoms","Lubrificante"]
    
    
    let chechklistItemsDetail = ["2","3","4","5","6","7","8"]


    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.navigationController?.navigationItem.title = "Your beautiful shoplist"
        customTableView.clipsToBounds = true
        customTableView.layer.cornerRadius = 10
        
        self.customTableView.delegate = self
        self.customTableView.dataSource = self
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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chechklistItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = customTableView.dequeueReusableCell(withIdentifier: "checkCells")
        
        let nothingless = chechklistItems[indexPath.row]
        let nothinless2 = chechklistItemsDetail[indexPath.row]
        cell?.tintColor = UIColor.red
        cell?.detailTextLabel?.text = nothinless2
        cell?.textLabel?.text = nothingless
        
        return cell!
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .checkmark {
                cell.accessoryType = .none
                
            } else {
                cell.accessoryType = .checkmark
            }
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }

    }
    


