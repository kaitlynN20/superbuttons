//
//  ViewController.swift
//  superbuttons
//
//  Created by Kaitlyn Nunez on 2/13/18.
//  Copyright © 2018 Kaitlyn Nunez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var toggleFlag: Bool = true
    
    @IBOutlet weak var humansBttn: UIButton!
   
    @IBAction func humansFUN(_ sender: Any) {
        if (toggleFlag == true) {
            humansBttn.tintColor = UIColor.init(named: "forgrd")
            humansBttn.setBackgroundImage(UIImage(named:"People"), for: .normal)
            toggleFlag = false
        } else {
            humansBttn.tintColor = UIColor.init(named:"accent")
            humansBttn.setBackgroundImage(UIImage(named: "Two"), for: .normal)
            toggleFlag = true
        }
        
        let myAlert = UIAlertController(title: "Floor Prefernece", message: "My living room florr is?", preferredStyle: .alert)
        
        myAlert.addAction(UIAlertAction(title:"Carpet", style: .default,handler: nil))
        myAlert.addAction(UIAlertAction(title:"Wood", style: .cancel, handler: {
            
            ACTION in
            print ("User picked wood")
        }))
        
        self.present(myAlert, animated: true)
        
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

