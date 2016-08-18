//
//  User.swift
//  LunchUp
//
//  Created by Dinesh Gunda on 8/17/16.
//  Copyright © 2016 Karan Khurana. All rights reserved.
//

import UIKit
import Parse
class User: NSObject {
    
    
    var firstName: NSString?
    var lastName: NSString?
    var industry: NSString?
    var numConnections: NSString?
    var summary: NSString?
    var positions: NSDictionary?
    var currentTitle: NSString?
    var pictureURL: NSURL?
    var publicProfileURL: NSURL?
    var skills: NSDictionary?
    var email: NSString?

    var existingUser: Bool = false
    var currentLocation: NSArray?
    var discardedUsers: NSArray?
    var requestedUsers: NSArray?
    var yetToGoUsers: NSArray?
    var haveGoneUsers: NSArray?
    var userBio: NSString?
    var websiteURL: NSString?
    var filters: Filter?
    var dict: PFUser?
    
    init(dict: PFUser) {
        self.dict = dict
        firstName = dict["firstName"] as? NSString
        lastName = dict["lastName"] as? NSString
        industry = dict["industry"] as? NSString
        numConnections = dict["numConnections"] as? NSString
        summary = dict["summary"] as? NSString
        positions = dict["positions"] as? NSDictionary
        pictureURL = dict["pictureURL"] as? NSURL
        publicProfileURL = dict["publicProfileURL"] as? NSURL
        skills = dict["skills"] as? NSDictionary
        email = dict["email"] as? NSString
        
        existingUser = (dict["existingUser"] as? Bool)!
        currentLocation = dict["currentLocation"] as? NSArray
        discardedUsers = dict["discardedUsers"] as? NSArray
        yetToGoUsers = dict["yetToGoUsers"] as? NSArray
        haveGoneUsers = dict["haveGoneUsers"] as? NSArray
        userBio = dict["userBio"] as? NSString
        websiteURL = dict["websiteURL"] as? NSString
        filters = dict["filter"] as? Filter
        
    }
    
    static var _currentUser: User?
    class var currentUser: User?
        {
        let currentParseUser = PFUser.currentUser()
        if currentParseUser != nil {
            _currentUser = User(dict: currentParseUser!)
            return _currentUser
        } else {
            return nil
        }
    }

}
