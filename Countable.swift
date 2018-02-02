//
//  Countable.swift
//  Rynly.Driver.iOS
//
//  Created by N A Shashank on 1/24/18.
//  Copyright © 2018 N A Shashank. All rights reserved.
//

import UIKit

public protocol Countable {
    static func count() -> Int
}

extension Countable where Self:RawRepresentable, Self.RawValue == Int {
    
    public static func count() -> Int {
        var count = 0
        while let _ = self.init(rawValue: count)
        {
            count = count + 1
        }
        return count
    }
    
    public static func allCases() -> [Countable] {
        var flag = 0
        var arrResult = [Countable]()
        while let temp = Self.init(rawValue:flag)
        {
            arrResult.append(temp)
            flag = flag + 1
        }
        return arrResult
    }
    
    public func stringValue() -> String {
        return "\(self)".capitalized
    }
    
}
