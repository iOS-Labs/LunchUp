//
//  Filter.swift
//  LunchUp
//
//  Created by Dinesh Gunda on 8/17/16.
//  Copyright © 2016 Karan Khurana. All rights reserved.
//

import UIKit

class Filter: NSObject {
    
    var radius: Double?
    var gender: Bool?
    var profession: NSString?
    var selectedDay: NSDate?
    var dict: NSDictionary!
    init(dict: NSDictionary) {
        self.dict = dict
        radius = dict["radius"] as? Double
        gender = (dict["gender"] as? Bool)!
        profession = dict["profession"] as? NSString
        selectedDay = dict["selectedDay"] as? NSDate
    }

}
