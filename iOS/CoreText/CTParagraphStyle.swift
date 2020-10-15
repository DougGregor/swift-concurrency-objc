
class CTParagraphStyle : _CFObject {
}
@available(iOS 3.2, *)
func CTParagraphStyleGetTypeID() -> CFTypeID
enum CTTextAlignment : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case left
  case right
  case center
  case justified
  case natural
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Deprecated")
  static var kCTLeftTextAlignment: CTTextAlignment { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Deprecated")
  static var kCTRightTextAlignment: CTTextAlignment { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Deprecated")
  static var kCTCenterTextAlignment: CTTextAlignment { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Deprecated")
  static var kCTJustifiedTextAlignment: CTTextAlignment { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Deprecated")
  static var kCTNaturalTextAlignment: CTTextAlignment { get }
}
enum CTLineBreakMode : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case byWordWrapping
  case byCharWrapping
  case byClipping
  case byTruncatingHead
  case byTruncatingTail
  case byTruncatingMiddle
}
enum CTWritingDirection : Int8 {
  init?(rawValue: Int8)
  var rawValue: Int8 { get }
  case natural
  case leftToRight
  case rightToLeft
}
enum CTParagraphStyleSpecifier : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case alignment
  case firstLineHeadIndent
  case headIndent
  case tailIndent
  case tabStops
  case defaultTabInterval
  case lineBreakMode
  case lineHeightMultiple
  case maximumLineHeight
  case minimumLineHeight
  case paragraphSpacing
  case paragraphSpacingBefore
  case baseWritingDirection
  case maximumLineSpacing
  case minimumLineSpacing
  case lineSpacingAdjustment
  case lineBoundsOptions
  case count
}
struct CTParagraphStyleSetting {
  var spec: CTParagraphStyleSpecifier
  var valueSize: Int
  var value: UnsafeRawPointer
  init(spec: CTParagraphStyleSpecifier, valueSize: Int, value: UnsafeRawPointer)
}
@available(iOS 3.2, *)
func CTParagraphStyleCreate(_ settings: UnsafePointer<CTParagraphStyleSetting>?, _ settingCount: Int) -> CTParagraphStyle
@available(iOS 3.2, *)
func CTParagraphStyleCreateCopy(_ paragraphStyle: CTParagraphStyle) -> CTParagraphStyle
@available(iOS 3.2, *)
func CTParagraphStyleGetValueForSpecifier(_ paragraphStyle: CTParagraphStyle, _ spec: CTParagraphStyleSpecifier, _ valueBufferSize: Int, _ valueBuffer: UnsafeMutableRawPointer) -> Bool
