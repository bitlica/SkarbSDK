//
//  SKBrokerData.swift
//  SkarbSDKExample
//
//  Created by Artem Hitrik on 4/7/20.
//  Copyright © 2020 Prodinfire. All rights reserved.
//

import Foundation

struct SKBrokerData: SKCodableStruct {
  let broker: String
  let featuresData: Data
  
  init(broker: String, features: [AnyHashable: Any]) {
    self.broker = broker
    do {
      featuresData = try JSONSerialization.data(withJSONObject: features, options: .fragmentsAllowed)
    } catch {
      featuresData = Data()
      SKLogger.logError("SKServerAPIImplementaton.sendSource: can't json serialization to Data")
    }
  }
  
  func getJSON() -> [String: Any] {
    let brokerJSON: Any
    do {
      brokerJSON = try JSONSerialization.jsonObject(with: featuresData, options: [])
    } catch {
      brokerJSON = [:]
      SKLogger.logError("SKServerAPIImplementaton.syncAllData: can't json serialization to Data for source")
    }
    
    return ["broker": broker,
            "group": brokerJSON]
  }
  
  func getData() -> Data? {
    let encoder = JSONEncoder()
    if let encoded = try? encoder.encode(self) {
      return encoded
    }
    
    return nil
  }
}