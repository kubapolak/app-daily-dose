//
//  PurchaseManager.swift
//  daily-dose
//
//  Created by Mac on 10/10/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import Foundation
import StoreKit

class PurchaseManager: NSObject, SKProductsRequestDelegate, SKPaymentTransactionObserver {
    
    static let instance = PurchaseManager()
    
    var productsRequest: SKProductsRequest!
    var products = [SKProduct]()
    
    func fetchProducts() {
        let productIds = NSSet(object: FAKE_IAP_REMOVE_ADS) as! Set<String>
        productsRequest = SKProductsRequest(productIdentifiers: productIds)
        productsRequest.delegate = self
        productsRequest.start()
    }
    
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        if response.products.count > 0 {
            products = response.products
        }
    }
    
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        <#code#>
    }
    
}
