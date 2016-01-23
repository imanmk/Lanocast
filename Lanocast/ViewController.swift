//
//  ViewController.swift
//  test
//
//  Created by Iman Mk R on 12/4/15.
//  Copyright © 2015 Lanocast. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet var signupButton: UIButton!    //connect!
    @IBOutlet var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "initialView.png")!)
        super.viewDidLoad()
        
        self.navigationController?.navigationBarHidden = true
        // Status bar white font
       
        
        // Do any additional setup after loading the view, typically from a nib.
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


/*------------------------------------------------------------------------------------------------------------------
    Beta version

override func viewDidLoad() {
super.viewDidLoad()
// Do any additional setup after loading the view, typically from a nib.
}

override func didReceiveMemoryWarning() {
super.didReceiveMemoryWarning()
// Dispose of any resources that can be recreated.
}

override func viewDidAppear(animated: Bool)
{
let isUserLoggedIn = NSUserDefaults.standardUserDefaults().boolForKey("isUserLoggedIn");

if(!isUserLoggedIn)
{
self.performSegueWithIdentifier( "startpage" , sender: self);
}

}

@IBOutlet weak var logoutButtonTapped: UIButton!{


NSUserDefaults.standardUserDefaults().setBool(false, forKey:"isUserLoggedIn");
NSUserDefaults.standardUserDefaults().synchronize();
self.performSegueWithIdentifier( "startpage" , sender: self);

}


--------------------------------------------------------------------------------------------------------------------
*/