//
//  ViewController.swift
//  SwiftExtensionsLibrary
//
//  Created by winterrain5 on 06/02/2023.
//  Copyright (c) 2023 winterrain5. All rights reserved.
//

import UIKit
import SwiftExtensionsLibrary
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        testBoolToInt()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

// Foundation
extension ViewController {
    func testBoolToInt() {
        print("test bool to int: \(false.se.toInt)")
    }
}

