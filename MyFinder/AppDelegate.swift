//
//  AppDelegate.swift
//  My Finder
//
//  Created by lbp on 2019/3/19.
//  Copyright © 2019年 lbp. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        redirectNSlogToDocumentFolder()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    
    private func redirectNSlogToDocumentFolder() {
        let filePath: String  =  NSHomeDirectory () + "/Documents/PrintfInfo.log"
        let defaultManager = FileManager.default
        try? defaultManager.removeItem(atPath: filePath)
        
        freopen(filePath.cString(using: String.Encoding.ascii), "a+", stdout)
        freopen(filePath.cString(using: String.Encoding.ascii), "a+", stderr)
    }

    
}
