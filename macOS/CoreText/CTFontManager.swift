
@available(macOS 10.6, *)
func CTFontManagerCopyAvailablePostScriptNames() -> CFArray
@available(macOS 10.6, *)
func CTFontManagerCopyAvailableFontFamilyNames() -> CFArray
@available(macOS 10.6, *)
func CTFontManagerCopyAvailableFontURLs() -> CFArray
@available(macOS 10.6, *)
func CTFontManagerCompareFontFamilyNames(_ family1: UnsafeRawPointer, _ family2: UnsafeRawPointer, _ context: UnsafeMutableRawPointer?) -> CFComparisonResult
@available(macOS 10.6, *)
func CTFontManagerCreateFontDescriptorsFromURL(_ fileURL: CFURL) -> CFArray?
@available(macOS 10.7, *)
func CTFontManagerCreateFontDescriptorFromData(_ data: CFData) -> CTFontDescriptor?
@available(macOS 10.13, *)
func CTFontManagerCreateFontDescriptorsFromData(_ data: CFData) -> CFArray
enum CTFontManagerScope : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case none
  case process
  @available(macOS 10.6, *)
  case persistent
  @available(macOS 10.6, *)
  case session
  static var user: CTFontManagerScope { get }
}
@available(macOS 10.6, *)
func CTFontManagerRegisterFontsForURL(_ fontURL: CFURL, _ scope: CTFontManagerScope, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> Bool
@available(macOS 10.6, *)
func CTFontManagerUnregisterFontsForURL(_ fontURL: CFURL, _ scope: CTFontManagerScope, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> Bool
@available(macOS 10.8, *)
func CTFontManagerRegisterGraphicsFont(_ font: CGFont, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> Bool
@available(macOS 10.8, *)
func CTFontManagerUnregisterGraphicsFont(_ font: CGFont, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> Bool
@available(macOS, introduced: 10.6, deprecated: 10.15, renamed: "CTFontManagerRegisterFontURLs(_:_:_:_:)")
func CTFontManagerRegisterFontsForURLs(_ fontURLs: CFArray, _ scope: CTFontManagerScope, _ errors: UnsafeMutablePointer<Unmanaged<CFArray>?>?) -> Bool
@available(macOS, introduced: 10.6, deprecated: 10.15, renamed: "CTFontManagerUnregisterFontURLs(_:_:_:)")
func CTFontManagerUnregisterFontsForURLs(_ fontURLs: CFArray, _ scope: CTFontManagerScope, _ errors: UnsafeMutablePointer<Unmanaged<CFArray>?>?) -> Bool
@available(macOS 10.15, *)
func CTFontManagerRegisterFontURLs(_ fontURLs: CFArray, _ scope: CTFontManagerScope, _ enabled: Bool, _ registrationHandler: ((CFArray, Bool) -> Bool)?)
@available(macOS 10.15, *)
func CTFontManagerUnregisterFontURLs(_ fontURLs: CFArray, _ scope: CTFontManagerScope, _ registrationHandler: ((CFArray, Bool) -> Bool)?)
@available(macOS 10.15, *)
func CTFontManagerRegisterFontDescriptors(_ fontDescriptors: CFArray, _ scope: CTFontManagerScope, _ enabled: Bool, _ registrationHandler: ((CFArray, Bool) -> Bool)?)
@available(macOS 10.15, *)
func CTFontManagerUnregisterFontDescriptors(_ fontDescriptors: CFArray, _ scope: CTFontManagerScope, _ registrationHandler: ((CFArray, Bool) -> Bool)?)
@available(macOS 10.6, *)
func CTFontManagerEnableFontDescriptors(_ descriptors: CFArray, _ enable: Bool)
@available(macOS 10.6, *)
func CTFontManagerGetScopeForURL(_ fontURL: CFURL) -> CTFontManagerScope
@available(macOS 10.6, *)
func CTFontManagerIsSupportedFont(_ fontURL: CFURL) -> Bool
@available(macOS, introduced: 10.6, deprecated: 11.0, message: "This functionality will be removed in a future release")
func CTFontManagerCreateFontRequestRunLoopSource(_ sourceOrder: CFIndex, _ createMatchesCallback: @escaping (CFDictionary, pid_t) -> Unmanaged<CFArray>) -> CFRunLoopSource?
@available(macOS 10.6, *)
let kCTFontManagerBundleIdentifier: CFString
enum CTFontManagerAutoActivationSetting : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case `default`
  case disabled
  case enabled
  @available(macOS, introduced: 10.6, deprecated: 10.13, message: "Deprecated")
  case promptUser
}
@available(macOS 10.6, *)
func CTFontManagerSetAutoActivationSetting(_ bundleIdentifier: CFString?, _ setting: CTFontManagerAutoActivationSetting)
@available(macOS 10.6, *)
func CTFontManagerGetAutoActivationSetting(_ bundleIdentifier: CFString?) -> CTFontManagerAutoActivationSetting
@available(macOS 10.6, *)
let kCTFontManagerRegisteredFontsChangedNotification: CFString
