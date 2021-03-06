/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 * @generated by an internal plugin build system
 */

#ifndef ABI40_0_0RN_DISABLE_OSS_PLUGIN_HEADER

// OSS-compatibility layer

#import "ABI40_0_0CoreModulesPlugins.h"

#import <string>
#import <unordered_map>

Class ABI40_0_0RCTCoreModulesClassProvider(const char *name) {
  static std::unordered_map<std::string, Class (*)(void)> sCoreModuleClassMap = {
    {"AccessibilityManager", ABI40_0_0RCTAccessibilityManagerCls},
    {"Appearance", ABI40_0_0RCTAppearanceCls},
    {"DeviceInfo", ABI40_0_0RCTDeviceInfoCls},
    {"ExceptionsManager", ABI40_0_0RCTExceptionsManagerCls},
    {"PlatformConstants", ABI40_0_0RCTPlatformCls},
    {"Clipboard", ABI40_0_0RCTClipboardCls},
    {"I18nManager", ABI40_0_0RCTI18nManagerCls},
    {"SourceCode", ABI40_0_0RCTSourceCodeCls},
    {"ActionSheetManager", ABI40_0_0RCTActionSheetManagerCls},
    {"AlertManager", ABI40_0_0RCTAlertManagerCls},
    {"AsyncLocalStorage", ABI40_0_0RCTAsyncLocalStorageCls},
    {"Timing", ABI40_0_0RCTTimingCls},
    {"StatusBarManager", ABI40_0_0RCTStatusBarManagerCls},
    {"KeyboardObserver", ABI40_0_0RCTKeyboardObserverCls},
    {"AppState", ABI40_0_0RCTAppStateCls},
    {"PerfMonitor", ABI40_0_0RCTPerfMonitorCls},
    {"DevMenu", ABI40_0_0RCTDevMenuCls},
    {"DevSettings", ABI40_0_0RCTDevSettingsCls},
    {"RedBox", ABI40_0_0RCTRedBoxCls},
    {"LogBox", ABI40_0_0RCTLogBoxCls},
    {"TVNavigationEventEmitter", ABI40_0_0RCTTVNavigationEventEmitterCls},
    {"WebSocketExecutor", ABI40_0_0RCTWebSocketExecutorCls},
    {"WebSocketModule", ABI40_0_0RCTWebSocketModuleCls},
    {"DevLoadingView", ABI40_0_0RCTDevLoadingViewCls},
  };

  auto p = sCoreModuleClassMap.find(name);
  if (p != sCoreModuleClassMap.end()) {
    auto classFunc = p->second;
    return classFunc();
  }
  return nil;
}

#endif // ABI40_0_0RN_DISABLE_OSS_PLUGIN_HEADER
