//
//  Tasks.swift
//  To do app
//
//  Created by Carlos Caballero on 10/12/15.
//  Copyright © 2015 IOSDecal. All rights reserved.
//

import UIKit

class Tasks {
    // MARK: Properties
    var name: String
    var time: NSDate
    
    init?(name: String) {
        self.name = name
        self.time = NSDate()
    }
}
