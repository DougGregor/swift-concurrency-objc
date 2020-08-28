
var __NSTEXT_SHARED_SECTION__: Int32 { get }
@available(tvOS 9.0, *)
enum NSTextAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case left
  case center
  case right
  case justified
  case natural
}
@available(tvOS 9.0, *)
enum NSWritingDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case natural
  case leftToRight
  case rightToLeft
}
extension CTTextAlignment {
  @available(tvOS 6.0, *)
  /*not inherited*/ init(_ nsTextAlignment: NSTextAlignment)
}
extension NSTextAlignment {
  @available(tvOS 6.0, *)
  /*not inherited*/ init(_ ctTextAlignment: CTTextAlignment)
}
