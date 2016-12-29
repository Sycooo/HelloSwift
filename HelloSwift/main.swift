//
//  main.swift
//  HelloSwift
//
//  Created by Sycooo on 2016/12/28.
//  Copyright © 2016年 Sycooo. All rights reserved.
//

import Foundation
import UIKit

//UIApplicationMain(CommandLine.argc, CommandLine.unsafeArgv, NSStringFromClass(AppDelegate), NSStringFromClass(AppDelegate))


let args = UnsafeMutableRawPointer(CommandLine.unsafeArgv).bindMemory(to: UnsafeMutablePointer<Int8>.self, capacity: Int(CommandLine.argc))

UIApplicationMain(CommandLine.argc, args, NSStringFromClass(AppDelegate.self), NSStringFromClass(AppDelegate.self))




