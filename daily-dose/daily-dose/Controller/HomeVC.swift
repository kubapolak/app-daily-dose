//
//  ViewController.swift
//  daily-dose
//
//  Created by Mac on 10/9/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit
import GoogleMobileAds

class HomeVC: UIViewController {

    //Outlets
    
    @IBOutlet weak var bannerView: GADBannerView!
    
    @IBOutlet weak var removeAdsButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserDefaults.standard.bool(forKey: FAKE_IAP_REMOVE_ADS) {
            removeAdsButton.removeFromSuperview()
            bannerView.removeFromSuperview()
        } else {
            bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
            bannerView.rootViewController = self
            bannerView.load(GADRequest())
        }
        
    }

    @IBAction func removeAdsPressed(_ sender: Any) {
        //show spinner
        PurchaseManager.instance.purchaseRemoveAds { success in
            //dismiss spinner
            if success {
            self.bannerView.removeFromSuperview()
            self.removeAdsButton.removeFromSuperview()
        } else {
            //message for the user
            }
        }
    }
}

