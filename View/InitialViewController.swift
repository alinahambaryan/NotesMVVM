//
//  View.swift
//  Notes
//
//  Created by Alina Hambaryan on 5/11/16.
//  Copyright © 2016 Alina Hambaryan. All rights reserved.
//

import Foundation

public class InitialViewController:UIViewController {

    public class func instantiate(window:UIWindow) {

        let myBundle = NSBundle.init(forClass: InitialViewController.self)
        let storyboard = UIStoryboard(name: "Main", bundle: myBundle)
        let vc = storyboard.instantiateViewControllerWithIdentifier("NotesViewControllerIdentifier")
        window.rootViewController = vc
        window.makeKeyAndVisible()
    }
}