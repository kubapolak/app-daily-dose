//
//  ViewController.swift
//  daily-dose
//
//  Created by Mac on 10/9/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {

    //Outlets
    
    @IBOutlet weak var bannerView: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
    }


}

