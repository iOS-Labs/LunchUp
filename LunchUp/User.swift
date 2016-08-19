//
//  User.swift
//  LunchUp
//
//  Created by Dinesh Gunda on 8/17/16.
//  Copyright © 2016 Karan Khurana. All rights reserved.
//

import UIKit
import Parse

class User: PFUser {
    
    @NSManaged var firstName: NSString?
    @NSManaged var lastName: NSString?
    @NSManaged var industry: NSString?
    @NSManaged var numConnections: NSString?
    @NSManaged var summary: NSString?
    @NSManaged var positions: NSDictionary?
    @NSManaged var currentTitle: NSString?
    @NSManaged var pictureURL: NSURL?
    @NSManaged var publicProfileURL: NSURL?
    @NSManaged var skills: NSDictionary?

    @NSManaged var existingUser: Bool
//    @NSManaged var currentLocation: NSArray?
    @NSManaged var discardedUsers: [User]
    @NSManaged var requestedUsers: [User]
    @NSManaged var yetToGoUsers: [User]
    @NSManaged var haveGoneUsers: [User]
    @NSManaged var userBio: NSString?
    @NSManaged var websiteURL: NSString?
    
    var filters: Filter?
    
//    init(dict: PFUser) {
//        self.dict = dict
//        firstName = dict["firstName"] as? NSString
//        lastName = dict["lastName"] as? NSString
//        industry = dict["industry"] as? NSString
//        numConnections = dict["numConnections"] as? NSString
//        summary = dict["summary"] as? NSString
//        positions = dict["positions"] as? NSDictionary
//        pictureURL = dict["pictureURL"] as? NSURL
//        publicProfileURL = dict["publicProfileURL"] as? NSURL
//        skills = dict["skills"] as? NSDictionary
//        email = dict["email"] as? NSString
//        
//        existingUser = (dict["existingUser"] as? Bool)!
//        currentLocation = dict["currentLocation"] as? NSArray
//        discardedUsers = dict["discardedUsers"] as? NSArray
//        yetToGoUsers = dict["yetToGoUsers"] as? NSArray
//        haveGoneUsers = dict["haveGoneUsers"] as? NSArray
//        userBio = dict["userBio"] as? NSString
//        websiteURL = dict["websiteURL"] as? NSString
//        filters = dict["filter"] as? Filter
//        
//    }
    
//    static var _currentUser: User?
//    class var currentUser: User?
//        {
//        let currentParseUser = PFUser.currentUser()
//        if currentParseUser != nil {
//            _currentUser = User(dict: currentParseUser!)
//            return _currentUser
//        } else {
//            return nil
//        }
//    }

}
