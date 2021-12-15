//
//  AlertManager.swift
//  TestingAsyncUsingExpectations
//
//  Created by Albert Pangestu on 15/12/21.
//  Copyright © 2021 Mohammad Azam. All rights reserved.
//

import Foundation

class AlertManager {
    
    func postAlert() {
        return NotificationCenter.default.post(name: Notification.Name.alertNotification, object: self)
    }
}
