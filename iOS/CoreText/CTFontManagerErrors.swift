
@available(iOS 3.2, *)
let kCTFontManagerErrorDomain: CFString
@available(iOS 3.2, *)
let kCTFontManagerErrorFontURLsKey: CFString
@available(iOS 13.0, *)
let kCTFontManagerErrorFontDescriptorsKey: CFString
@available(iOS 13.0, *)
let kCTFontManagerErrorFontAssetNameKey: CFString
enum CTFontManagerError : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case fileNotFound
  case insufficientPermissions
  case unrecognizedFormat
  case invalidFontData
  case alreadyRegistered
  case exceededResourceLimit
  case assetNotFound
  case notRegistered
  case inUse
  case systemRequired
  case registrationFailed
  case missingEntitlement
  case insufficientInfo
  case cancelledByUser
  case duplicatedName
  case invalidFilePath
  case unsupportedScope
}
