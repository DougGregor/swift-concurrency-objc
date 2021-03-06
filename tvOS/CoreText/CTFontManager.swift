
@available(tvOS 10.0, *)
func CTFontManagerCopyAvailablePostScriptNames() -> CFArray
@available(tvOS 10.0, *)
func CTFontManagerCopyAvailableFontFamilyNames() -> CFArray
@available(tvOS 9.0, *)
func CTFontManagerCreateFontDescriptorsFromURL(_ fileURL: CFURL) -> CFArray?
@available(tvOS 9.0, *)
func CTFontManagerCreateFontDescriptorFromData(_ data: CFData) -> CTFontDescriptor?
@available(tvOS 11.0, *)
func CTFontManagerCreateFontDescriptorsFromData(_ data: CFData) -> CFArray
enum CTFontManagerScope : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case none
  case process
  @available(tvOS 13.0, *)
  case persistent
  static var user: CTFontManagerScope { get }
}
@available(tvOS 9.0, *)
func CTFontManagerRegisterFontsForURL(_ fontURL: CFURL, _ scope: CTFontManagerScope, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> Bool
@available(tvOS 9.0, *)
func CTFontManagerUnregisterFontsForURL(_ fontURL: CFURL, _ scope: CTFontManagerScope, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> Bool
@available(tvOS 9.0, *)
func CTFontManagerRegisterGraphicsFont(_ font: CGFont, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> Bool
@available(tvOS 9.0, *)
func CTFontManagerUnregisterGraphicsFont(_ font: CGFont, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>?) -> Bool
@available(tvOS, introduced: 9.0, deprecated: 13.0, renamed: "CTFontManagerRegisterFontURLs(_:_:_:_:)")
func CTFontManagerRegisterFontsForURLs(_ fontURLs: CFArray, _ scope: CTFontManagerScope, _ errors: UnsafeMutablePointer<Unmanaged<CFArray>?>?) -> Bool
@available(tvOS, introduced: 9.0, deprecated: 13.0, renamed: "CTFontManagerUnregisterFontURLs(_:_:_:)")
func CTFontManagerUnregisterFontsForURLs(_ fontURLs: CFArray, _ scope: CTFontManagerScope, _ errors: UnsafeMutablePointer<Unmanaged<CFArray>?>?) -> Bool
@available(tvOS 13.0, *)
func CTFontManagerRegisterFontURLs(_ fontURLs: CFArray, _ scope: CTFontManagerScope, _ enabled: Bool, _ registrationHandler: ((CFArray, Bool) -> Bool)?)
@available(tvOS 13.0, *)
func CTFontManagerUnregisterFontURLs(_ fontURLs: CFArray, _ scope: CTFontManagerScope, _ registrationHandler: ((CFArray, Bool) -> Bool)?)
@available(tvOS 13.0, *)
func CTFontManagerRegisterFontDescriptors(_ fontDescriptors: CFArray, _ scope: CTFontManagerScope, _ enabled: Bool, _ registrationHandler: ((CFArray, Bool) -> Bool)?)
@available(tvOS 13.0, *)
func CTFontManagerUnregisterFontDescriptors(_ fontDescriptors: CFArray, _ scope: CTFontManagerScope, _ registrationHandler: ((CFArray, Bool) -> Bool)?)
enum CTFontManagerAutoActivationSetting : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case `default`
  case disabled
  case enabled
}
@available(tvOS 9.0, *)
let kCTFontManagerRegisteredFontsChangedNotification: CFString
