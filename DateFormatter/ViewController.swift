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

        let date = Date()

        print(date.full)
        print(date.date)
        print(date.dateReversed)
        print(date.time)
        print(date.iso8601)
        print(date.custom(format: "yyyy/MM/dd hh:mm:ss:SSSS"))
    }
}
