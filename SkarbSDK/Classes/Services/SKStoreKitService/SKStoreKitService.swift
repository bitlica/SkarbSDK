//
//  SKStoreKitService.swift
//  ios
//
//  Created by Bitlica Inc. on 2/20/20.
//  Copyright © 2020 Ihnat Kandrashou. All rights reserved.
//

import Foundation
import StoreKit

protocol SKStoreKitService {
  func requestProductInfoAndSendPurchase(command: SKCommand)
  func purhase(product: SKProduct, completion: (Swift.Result<SKPaymentTransaction, SKSkarbError>) -> Void)
}
