
class CTParagraphStyle : _CFObject {
}
@available(watchOS 2.0, *)
func CTParagraphStyleGetTypeID() -> CFTypeID
enum CTTextAlignment : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case left
  case right
  case center
  case justified
  case natural
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
@available(watchOS 2.0, *)
func CTParagraphStyleCreate(_ settings: UnsafePointer<CTParagraphStyleSetting>?, _ settingCount: Int) -> CTParagraphStyle
@available(watchOS 2.0, *)
func CTParagraphStyleCreateCopy(_ paragraphStyle: CTParagraphStyle) -> CTParagraphStyle
@available(watchOS 2.0, *)
func CTParagraphStyleGetValueForSpecifier(_ paragraphStyle: CTParagraphStyle, _ spec: CTParagraphStyleSpecifier, _ valueBufferSize: Int, _ valueBuffer: UnsafeMutableRawPointer) -> Bool
