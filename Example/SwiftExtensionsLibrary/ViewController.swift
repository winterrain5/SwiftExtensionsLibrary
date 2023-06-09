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
        testDateTimestamp()
        
        let view = UIView().frame(CGRect(x: 100, y: 100, width: 100, height: 100)).backgroundColor(.blue)
        self.view.addSubview(view)
//        view.sk.addBorder(borderWidth: 2, borderColor: .red)
        view.sk.addShadow(shadowColor: .yellow, shadowOffset: CGSize(width: 10, height: 5), shadowOpacity: 1)
        
        print(UIDevice.sk.currentDeviceName)
        
        print(UIViewController.sk.getTopVC())
     
        UIColor.init(hexString: "333333")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

// Foundation
extension ViewController {
    func testBoolToInt() {
        print("test bool to int: \(false.sk.toInt)")
    }
    func testDateTimestamp() {
        print("second timestamp: \(Date.sk.secondStamp)")
        print("play time style: \(Date.sk.getFormatPlayTime(seconds: 123431,type: .hour))")
    }
    func testDictionary() {
        let dict:[String : Any] = ["name":"张三", "age": 18]
        
        print("has key:\(dict.has("name"))")
        
        let jsonStr = "{\"id\":\"849743\",\"status\":\"6\",\"remark\":\"\",\"service_name\":\"Wellness Tuina 保健\"}"
      
    }
}

