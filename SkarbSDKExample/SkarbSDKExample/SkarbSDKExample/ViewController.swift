//
//  ViewController.swift
//  SkarbSDKExample
//
//  Created by Bitlica Inc. on 1/21/20.
//  Copyright © 2020 Bitlica Inc. All rights reserved.
//

import UIKit
import SkarbSDK

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    view.backgroundColor = .red

    SkarbSDK.initialize(clientId: "YOUR_CLIENT_ID", isObservable: true)
    SkarbSDK.useAutomaticAppleSearchAdsAttributionCollection(false)
  } 
}

