//
//  ViewController.swift
//  DateFormatter
//
//  Created by Benedek Varga on 03/15 T 74.
//  Copyright © 2018. Benedek Varga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        print(Date().full)
        print(Date().date)
        print(Date().time)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

