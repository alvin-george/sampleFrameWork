//
//  ViewController.swift
//  CocoaFrameworkTest
//
//  Created by FTS-MAC-014 on 06/12/16.
//  Copyright © 2016 FTS-MAC-014. All rights reserved.
//

import UIKit
import sampleCocoaFramework


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let frameworkObject =  openCocoaClass.init()
        frameworkObject.samplePublicFunction()
        print(frameworkObject.samplePublicVariable)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

