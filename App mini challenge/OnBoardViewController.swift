//
//  OnBoardViewController.swift
//  App mini challenge
//
//  Created by Drck on 29/01/2017.
//  Copyright © 2017 Mario Trerotola. All rights reserved.
//

import UIKit
import PaperOnboarding

class OnBoardViewController: UIViewController, PaperOnboardingDelegate, PaperOnboardingDataSource {

    @IBOutlet weak var onBoardingView: OnboardingView!
    
   @IBOutlet weak var getStartedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        onBoardingView.dataSource = self
        onBoardingView.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func onboardingItemsCount() -> Int {
        return 3
    }
    
    func onboardingItemAtIndex(_ index: Int) -> OnboardingItemInfo {
        let backgroundColorOne = UIColor(red: 217/255, green: 72/255, blue: 89/255, alpha: 1)
        let backgroundColorTwo = UIColor(red: 106/255, green: 166/255, blue: 211/255, alpha: 1)
        let backgroundColorThree = UIColor(red: 168/255, green: 200/255, blue: 78/255, alpha: 1)
        
        let titleFont = UIFont(name: "AvenirNext-Bold", size: 24)!
        let descirptionFont = UIFont(name: "AvenirNext-Regular", size: 18)!
        
        return [("rocket", "A Great Rocket Start", "Caramels cheesecake bonbon bonbon topping. Candy halvah cotton candy chocolate bar cake. Fruitcake liquorice candy canes marshmallow topping powder.", "", backgroundColorOne, UIColor.white, UIColor.white, titleFont, descirptionFont),
                
                ("brush", "Shop your Experience", "Grocery, shop and relax. You're never gonna look at grocery shopping at the same way again", "", backgroundColorTwo, UIColor.white, UIColor.white, titleFont, descirptionFont),
                
                ("notification", "Stay Up To Date", "Get notified of important updates.", "", backgroundColorThree, UIColor.white, UIColor.white, titleFont, descirptionFont)][index]
        
        
        
    }
    
    
    
    func onboardingConfigurationItem(_ item: OnboardingContentViewItem, index: Int) {
        
    }
    
    
    
    func onboardingWillTransitonToIndex(_ index: Int) {
        if index == 1 {
            
            if self.getStartedButton.alpha == 1 {
                UIView.animate(withDuration: 0.2, animations: {
                    self.getStartedButton.alpha = 0
                })
            }
            
        }
    }
    
    func onboardingDidTransitonToIndex(_ index: Int) {
        if index == 2 {
            UIView.animate(withDuration: 0.4, animations: {
                self.getStartedButton.alpha = 1
            })
        }
    }
    
    
    

    @IBAction func gotStarted(_ sender: Any) {
        
        let userDefaults = UserDefaults.standard
        
        userDefaults.set(true, forKey: "onboardingComplete")
        
        userDefaults.synchronize()
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
