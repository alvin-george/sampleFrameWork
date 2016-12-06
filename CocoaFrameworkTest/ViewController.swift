//
//  ViewController.swift
//  CocoaFrameworkTest

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

