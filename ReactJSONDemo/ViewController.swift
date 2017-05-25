//
//  ViewController.swift
//  ReactJSONDemo
//
//  Created by computer on 5/23/17.
//  Copyright © 2017 computer. All rights reserved.
//

import UIKit
import ReactiveCocoa
import ReactiveJSON
import Result

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        GW2API.request(endpoint: "colors", method: .Get, parameters: ["ids":"all"])
            .startWithResult {
                $0.value?.forEach {
                    print($0["name"])
                }
        }
    }

}
