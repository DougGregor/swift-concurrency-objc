
class CGColorConversionInfo : _CFObject {
}
extension CGColorConversionInfo {
  class var typeID: CFTypeID { get }
  @available(macOS 10.12, *)
  /*not inherited*/ init?(src: CGColorSpace, dst: CGColorSpace)
  @available(macOS 10.14.6, *)
  /*not inherited*/ init?(optionsSrc src: CGColorSpace, dst: CGColorSpace, options: CFDictionary?)
}
enum CGColorConversionInfoTransformType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case transformFromSpace
  case transformToSpace
  case transformApplySpace
}
extension CGColor {
  @available(macOS 10.12, *)
  class let conversionBlackPointCompensation: CFString
  @available(macOS 10.13, *)
  class let conversionTRCSize: CFString
}
