//
//  SecondViewController.swift
//  grocerylistie
//
//  Created by Cube Whidden on 9/28/18.
//  Copyright © 2018 Cube Whidden. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func clickHere(_ sender: Any) {
        
        // create the alert
        let alert = UIAlertController(title: "UIAlertController", message: "Would you like to continue learning how to use iOS alerts?", preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            switch action.style{
            case .default:
                print("default")
                
            case .cancel:
                print("cancel")
                
            case .destructive:
                print("destructive")
                
                
            }}))
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

