// Copyright 2015-present 650 Industries. All rights reserved.

import Foundation

class DevMenuPackagerConnectionHandler {
  weak var manager: DevMenuManager?
  
  init(manager: DevMenuManager) {
    self.manager = manager
  }
  
  func setup() {
    RCTPackagerConnection
      .shared()
      .addNotificationHandler(
        self.sendDevCommandNotificationHandler,
        queue: DispatchQueue.main,
        forMethod: "sendDevCommand"
      )
    
    RCTPackagerConnection
      .shared()
      .addNotificationHandler(
        self.devMenuNotificationHanlder,
        queue: DispatchQueue.main,
        forMethod: "devMenu"
      )
  }
  
  @objc
  func sendDevCommandNotificationHandler(_ params: [String: Any]) {
    guard let manager = manager,
          let command = params["name"] as? String,
          let bridge = manager.delegate?.appBridge?(forDevMenuManager: manager) as? RCTBridge
    else {
      return
    }
    
    let devDelegate = DevMenuDevOptionsDelegate(forBridge: bridge)
  
    switch command {
    case "reload":
      devDelegate.reload()
    case "toggleDevMenu":
      self.manager?.toggleMenu()
    case "toggleRemoteDebugging":
      devDelegate.toggleRemoteDebugging()
    case "toggleElementInspector":
      devDelegate.toggleElementInsector()
    case "togglePerformanceMonitor":
      devDelegate.togglePerformanceMonitor()
    default:
      NSLog("Unknow command: %@", command);
    }
  }
  
  @objc
  func devMenuNotificationHanlder(_ parames: [String: Any]) {
    self.manager?.toggleMenu()
  }
}
