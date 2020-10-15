
class CGColorConversionInfo : _CFObject {
}
extension CGColorConversionInfo {
  class var typeID: CFTypeID { get }
  @available(tvOS 10.0, *)
  /*not inherited*/ init?(src: CGColorSpace, dst: CGColorSpace)
  @available(tvOS 13, *)
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
  @available(tvOS 10.0, *)
  class let conversionBlackPointCompensation: CFString
  @available(tvOS 11.0, *)
  class let conversionTRCSize: CFString
}
