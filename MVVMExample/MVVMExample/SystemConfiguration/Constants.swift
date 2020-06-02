//
//  Constants.swift
//  MVVMExample
//
//  Created by pham.minh.tien on 5/24/20.
//  Copyright © 2020 Sun*. All rights reserved.
//

import Foundation

enum SystemConfiguration {
    static let name     = Bundle.main.object(forInfoDictionaryKey: kCFBundleNameKey as String) as! String
    static let version  = (Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString" as String) ?? "1.0") as! String
    static let buildIndex   = (Bundle.main.object(forInfoDictionaryKey: kCFBundleVersionKey as String) ?? "1") as! String
    static let bundleID     = Bundle.main.bundleIdentifier
    static let requestTimeOut = 60
}

func logD(_ message: String, function: String = #function) {
    #if !NDEBUG
    let formatter = DateFormatter()
    formatter.dateFormat = "HH:mm:ss"
    let date = formatter.string(from: NSDate() as Date)
    print("\(date) Func: \(function) : \(message)")
    #endif
}