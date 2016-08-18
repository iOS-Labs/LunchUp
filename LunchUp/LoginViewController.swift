//
//  LoginViewController.swift
//  LunchUp
//
//  Created by Karan Khurana on 8/16/16.
//  Copyright © 2016 Karan Khurana. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    let linkedinHelper = LinkedinSwiftHelper(configuration: LinkedinSwiftConfiguration(clientId: "75biesin7sa2qm", clientSecret: "E8uCyCFjOcWJMkPf", state: "DLKDJF46ikMMZADfdfds", permissions: ["r_basicprofile", "r_emailaddress"], redirectUrl: "https://www.lunchup.com"))
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onLogin(sender: UIButton) {
        loginWithLinkedIn()
        requestLinkedInProfile()
        myMethod()
        
    }
    func myMethod() {
        let user = PFUser()
        user.username = "123"
        user.password = "1234"
        user.email = "aaa@bbb.com"
        // other fields can be set just like with PFObject
        user["phone"] = "415-392-0202"
        
        user.signUpInBackgroundWithBlock {
            (succeeded: Bool, error: NSError?) -> Void in
            if let error = error {
                let errorString = error.userInfo["error"] as? NSString
                // Show the errorString somewhere and let the user try again.
            } else {
                // Hooray! Let them use the app now.
                print("success")
            }
        }
    }
    
    func requestLinkedInProfile() {
        
        linkedinHelper.requestURL("https://api.linkedin.com/v1/people/~:(id,first-name,last-name,email-address,picture-url,picture-urls::(original),positions,date-of-birth,phone-numbers,location)?format=json", requestType: LinkedinSwiftRequestGet, success: { (response) -> Void in
            
            self.writeConsoleLine("Request success with response: \(response)")
            
        }) { [unowned self] (error) -> Void in
            
            self.writeConsoleLine("Encounter error: \(error.localizedDescription)")
        }
    }
    
    func loginWithLinkedIn() {
    
    /**
     *  Yeah, Just this simple, try with Linkedin installed and without installed
     *
     *   Check installed if you want to do different UI: linkedinHelper.isLinkedinAppInstalled()
     *   Access token later after login: linkedinHelper.lsAccessToken
     */
    
    linkedinHelper.authorizeSuccess({ [unowned self] (lsToken) -> Void in
    
    self.writeConsoleLine("Login success lsToken: \(lsToken)")
    }, error: { [unowned self] (error) -> Void in
    
    self.writeConsoleLine("Encounter error: \(error.localizedDescription)")
    }, cancel: { [unowned self] () -> Void in
    
    self.writeConsoleLine("User Cancelled!")
    })
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
