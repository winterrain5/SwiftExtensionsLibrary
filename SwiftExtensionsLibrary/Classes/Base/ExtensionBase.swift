//
//  ExtensionBase.swift
//  SwiftExtensionsLibrary_Example
//
//  Created by chengquan zhou on 2023/6/2.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import Foundation

public struct ExtensionBase<Base> {
    let base:Base
    init(_ base: Base) {
        self.base = base
    }
}

public protocol ExtensionCompatible {}

public extension ExtensionCompatible {
    static var se: ExtensionBase<Self>.Type {
        get { ExtensionBase<Self>.self }
        set {}
    }
    
    var se: ExtensionBase<Self> {
        get { ExtensionBase(self) }
        set {}
    }
}
