
@available(watchOS 3.0, *)
func CTFontManagerCopyAvailablePostScriptNames() -> CFArray
@available(watchOS 3.0, *)
func CTFontManagerCopyAvailableFontFamilyNames() -> CFArray
func CTFontManagerCompareFontFamilyNames(_ family1: UnsafeRawPointer, _ family2: UnsafeRawPointer, _ context: UnsafeMutableRawPointer?) -> CFComparisonResult
@available(watchOS 2.0, *)
func CTFontManagerCreateFontDescriptorsFromURL(_ fileURL: CFURL) -> CFArray?
@available(watchOS 2.0, *)
func CTFontManagerCreateFontDescriptorFromData(_ data: CFData) -> CTFontDescriptor?
@available(watchOS 4.0, *)
func CTFontManagerCreateFontDescriptorsFromData(_ data: CFData) -> CFArray
enum CTFontManagerScope : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case none
  case process
  @available(watchOS 6.0, *)
  case persistent
  static var user: CTFontManagerScope { get }
}
@available(watchOS 6.0, *)
let kCTFontRegistrationUserInfoAttribute: CFString
@available(watchOS 2.0, *)
func CTFontManagerRegisterFontsForURL(_ fontURL: CFURL, _ scope: CTFontManagerScope, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> Bool
@available(watchOS 2.0, *)
func CTFontManagerUnregisterFontsForURL(_ fontURL: CFURL, _ scope: CTFontManagerScope, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> Bool
@available(watchOS 2.0, *)
func CTFontManagerRegisterGraphicsFont(_ font: CGFont, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> Bool
@available(watchOS 2.0, *)
func CTFontManagerUnregisterGraphicsFont(_ font: CGFont, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> Bool
@available(watchOS, introduced: 2.0, deprecated: 6.0, renamed: "CTFontManagerRegisterFontURLs(_:_:_:_:)")
func CTFontManagerRegisterFontsForURLs(_ fontURLs: CFArray, _ scope: CTFontManagerScope, _ errors: UnsafeMutablePointer<Unmanaged<CFArray>?>?) -> Bool
@available(watchOS, introduced: 2.0, deprecated: 6.0, renamed: "CTFontManagerUnregisterFontURLs(_:_:_:)")
func CTFontManagerUnregisterFontsForURLs(_ fontURLs: CFArray, _ scope: CTFontManagerScope, _ errors: UnsafeMutablePointer<Unmanaged<CFArray>?>?) -> Bool
@available(watchOS 6.0, *)
func CTFontManagerRegisterFontURLs(_ fontURLs: CFArray, _ scope: CTFontManagerScope, _ enabled: Bool, _ registrationHandler: ((CFArray, Bool) -> Bool)?)
@available(watchOS 6.0, *)
func CTFontManagerUnregisterFontURLs(_ fontURLs: CFArray, _ scope: CTFontManagerScope, _ registrationHandler: ((CFArray, Bool) -> Bool)?)
@available(watchOS 6.0, *)
func CTFontManagerRegisterFontDescriptors(_ fontDescriptors: CFArray, _ scope: CTFontManagerScope, _ enabled: Bool, _ registrationHandler: ((CFArray, Bool) -> Bool)?)
@available(watchOS 6.0, *)
func CTFontManagerUnregisterFontDescriptors(_ fontDescriptors: CFArray, _ scope: CTFontManagerScope, _ registrationHandler: ((CFArray, Bool) -> Bool)?)
@available(watchOS 6.0, *)
func CTFontManagerRegisterFontsWithAssetNames(_ fontAssetNames: CFArray, _ bundle: CFBundle?, _ scope: CTFontManagerScope, _ enabled: Bool, _ registrationHandler: ((CFArray, Bool) -> Bool)?)
@available(watchOS 6.0, *)
func CTFontManagerCopyRegisteredFontDescriptors(_ scope: CTFontManagerScope, _ enabled: Bool) -> CFArray
@available(watchOS 6.0, *)
func CTFontManagerRequestFonts(_ fontDescriptors: CFArray, _ completionHandler: @escaping (CFArray) -> Void)
enum CTFontManagerAutoActivationSetting : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case `default`
  case disabled
  case enabled
}
@available(watchOS 2.0, *)
let kCTFontManagerRegisteredFontsChangedNotification: CFString
