
typealias CGWindowID = UInt32
enum CGWindowSharingType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case none
  case readOnly
  case readWrite
}
enum CGWindowBackingType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case backingStoreRetained
  case backingStoreNonretained
  case backingStoreBuffered
}
var kCGNullWindowID: CGWindowID { get }
@available(macOS 10.5, *)
let kCGWindowNumber: CFString
@available(macOS 10.5, *)
let kCGWindowStoreType: CFString
@available(macOS 10.5, *)
let kCGWindowLayer: CFString
@available(macOS 10.5, *)
let kCGWindowBounds: CFString
@available(macOS 10.5, *)
let kCGWindowSharingState: CFString
@available(macOS 10.5, *)
let kCGWindowAlpha: CFString
@available(macOS 10.5, *)
let kCGWindowOwnerPID: CFString
@available(macOS 10.5, *)
let kCGWindowMemoryUsage: CFString
@available(macOS 10.5, *)
let kCGWindowOwnerName: CFString
@available(macOS 10.5, *)
let kCGWindowName: CFString
@available(macOS 10.5, *)
let kCGWindowIsOnscreen: CFString
@available(macOS 10.5, *)
let kCGWindowBackingLocationVideoMemory: CFString
struct CGWindowListOption : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var optionAll: CGWindowListOption { get }
  static var optionOnScreenOnly: CGWindowListOption { get }
  static var optionOnScreenAboveWindow: CGWindowListOption { get }
  static var optionOnScreenBelowWindow: CGWindowListOption { get }
  static var optionIncludingWindow: CGWindowListOption { get }
  static var excludeDesktopElements: CGWindowListOption { get }
}
@available(macOS 10.5, *)
func CGWindowListCopyWindowInfo(_ option: CGWindowListOption, _ relativeToWindow: CGWindowID) -> CFArray?
@available(macOS 10.5, *)
func CGWindowListCreateDescriptionFromArray(_ windowArray: CFArray?) -> CFArray?
struct CGWindowImageOption : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var boundsIgnoreFraming: CGWindowImageOption { get }
  static var shouldBeOpaque: CGWindowImageOption { get }
  static var onlyShadows: CGWindowImageOption { get }
  static var bestResolution: CGWindowImageOption { get }
  static var nominalResolution: CGWindowImageOption { get }
}
@available(macOS 10.5, *)
func CGWindowListCreateImage(_ screenBounds: CGRect, _ listOption: CGWindowListOption, _ windowID: CGWindowID, _ imageOption: CGWindowImageOption) -> CGImage?
extension CGImage {
  @available(macOS 10.5, *)
  /*not inherited*/ init?(windowListFromArrayScreenBounds screenBounds: CGRect, windowArray: CFArray, imageOption: CGWindowImageOption)
}
@available(macOS 10.15, *)
func CGPreflightScreenCaptureAccess() -> Bool
@available(macOS 10.15, *)
func CGRequestScreenCaptureAccess() -> Bool
