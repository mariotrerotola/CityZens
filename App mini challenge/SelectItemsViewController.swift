//
//  SelectItemsViewController.swift
//  App mini challenge
//
//  Created by Drck on 28/01/2017.
//  Copyright © 2017 Mario Trerotola. All rights reserved.
//

import UIKit

class SelectItemsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

  
    let itemsData = ["Orange","Apple","Avocado","Pineapple","Banana","Pear","Strawberry","Dragonfruit","","Chico"]
    let identities = ["itemView", "b"]


    

    
    @IBOutlet weak var categoryCollection: UICollectionView!
    @IBOutlet weak var itemsCollection: UICollectionView!
    
    @IBOutlet weak var viewcartView: UIView!
    
    @IBOutlet weak var priceLabel: UILabel!

    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var viewCart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.backgroundColor = UIColor.brown
        
        self.categoryCollection.delegate = self
        self.categoryCollection.dataSource = self
        //cell items space in between
        
        var layout = UICollectionViewFlowLayout()
        
        let width = UIScreen.main.bounds.width
        
        layout.itemSize = CGSize(width: 122, height: 137)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 1, bottom: 0, right: 1)
        layout.minimumInteritemSpacing = 3
        layout.minimumLineSpacing = 3
        itemsCollection.collectionViewLayout = layout
        
        viewcartView.layer.cornerRadius = 10
        self.navigationItem.title = "Simply"
        

        // Do any additional setup after loading the view.
    }
    
    //start animations
        //end animations

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
      return  1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return itemsData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = itemsCollection.dequeueReusableCell(withReuseIdentifier: "items", for: indexPath)
        
        let categories = itemsData[indexPath.item]
        
        
        return cell
    }

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let vcName = identities[indexPath.item]
        
        
        animateIn()
        //let viewController = storyboard?.instantiateViewController(withIdentifier: vcName)
        
        
        
        //self.navigationController?.pushViewController(viewController!, animated: true)

    
    }
    
    func animateIn() {
        self.view.addSubview(viewcartView)
        viewcartView.center = self.view.center
        
        viewcartView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
        viewcartView.alpha = 0
        
        UIView.animate(withDuration: 0.4) {
                                 self.viewcartView.alpha = 1
            self.viewcartView.transform = CGAffineTransform.identity
        }
        
    }
    
    
    func animateOut () {
        UIView.animate(withDuration: 0.3, animations: {
            self.viewcartView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
            self.viewcartView.alpha = 0
            
          
            
        }) { (success:Bool) in
            self.viewcartView.removeFromSuperview()
        }
    }
    
    @IBAction func viewItemDismiss() {
        
        animateOut()
     
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
