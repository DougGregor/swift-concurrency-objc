
@available(iOS, introduced: 4.0, deprecated: 9.0)
func CNSetSupportedSSIDs(_ ssidArray: CFArray) -> Bool
@available(iOS, introduced: 4.0, deprecated: 9.0)
func CNMarkPortalOnline(_ interfaceName: CFString) -> Bool
@available(iOS, introduced: 4.0, deprecated: 9.0)
func CNMarkPortalOffline(_ interfaceName: CFString) -> Bool
@available(iOS 4.1, *)
func CNCopySupportedInterfaces() -> CFArray?
@available(iOS 4.1, *)
let kCNNetworkInfoKeySSIDData: CFString
@available(iOS 4.1, *)
let kCNNetworkInfoKeySSID: CFString
@available(iOS 4.1, *)
let kCNNetworkInfoKeyBSSID: CFString
@available(iOS, introduced: 4.1, deprecated: 100000)
func CNCopyCurrentNetworkInfo(_ interfaceName: CFString) -> CFDictionary?
