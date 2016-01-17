//
//  ViewController.swift
//  myo connect
//
//  Created by Evan Hopkins on 1/16/16.
//  Copyright © 2016 dragonhacks. All rights reserved.
//

import UIKit
import TwitterKit

class HomeViewController: UIViewController {
    @IBOutlet weak var likeButton: UIButton?
    @IBAction func likedThis(sender: UIButton) {
        let url = NSURL(string: "http://dev.hopk.xyz/rebu/hi5")
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
            print(NSString(data: data!, encoding: NSUTF8StringEncoding))
        }
        
        task.resume()

        print("hi5")
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}