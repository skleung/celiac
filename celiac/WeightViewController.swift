//
//  WeightViewController.swift
//  celiac
//
//  Created by Sherman Leung on 2/2/16.
//  Copyright © 2016 Sherman Leung. All rights reserved.
//

import UIKit
import HealthKit

class WeightViewController: UIViewController {
    let healthKitStore:HKHealthStore = HKHealthStore()

    func authorizeHealthKit(completion: ((success:Bool, error:NSError!) -> Void)!)
    {
        // 1. Set the types you want to read from HK Store
        
        let healthKitTypesToRead: Set = [HKObjectType.quantityTypeForIdentifier(HKQuantityTypeIdentifierBodyMass)!]
        
        // 2. Set the types you want to write to HK Store
        let healthKitTypesToWrite: Set = [HKObjectType.quantityTypeForIdentifier(HKQuantityTypeIdentifierBodyMass)!]
        
        // 3. If the store is not available (for instance, iPad) return an error and don't go on.
        if !HKHealthStore.isHealthDataAvailable()
        {
            let error = NSError(domain: "me.cellscan.celiac", code: 2, userInfo: [NSLocalizedDescriptionKey:"HealthKit is not available in this Device"])
            if( completion != nil )
            {
                completion(success:false, error:error)
            }
            return;
        }
        
        // 4.  Request HealthKit authorization
        healthKitStore.requestAuthorizationToShareTypes(healthKitTypesToWrite, readTypes: healthKitTypesToRead) { (success, error) -> Void in
            if( completion != nil )
            {
                completion(success:success,error:error)
            }
        }
    }
}
