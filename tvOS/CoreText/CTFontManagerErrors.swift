
@available(tvOS 9.0, *)
let kCTFontManagerErrorDomain: CFString
@available(tvOS 9.0, *)
let kCTFontManagerErrorFontURLsKey: CFString
@available(tvOS 13.0, *)
let kCTFontManagerErrorFontDescriptorsKey: CFString
@available(tvOS 13.0, *)
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
