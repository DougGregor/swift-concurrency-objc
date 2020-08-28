
var __NSTEXT_SHARED_SECTION__: Int32 { get }
@available(iOS 6.0, *)
enum NSTextAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case left
  case center
  case right
  case justified
  case natural
}
@available(iOS 6.0, *)
enum NSWritingDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case natural
  case leftToRight
  case rightToLeft
}
extension CTTextAlignment {
  @available(iOS 6.0, *)
  /*not inherited*/ init(_ nsTextAlignment: NSTextAlignment)
}
extension NSTextAlignment {
  @available(iOS 6.0, *)
  /*not inherited*/ init(_ ctTextAlignment: CTTextAlignment)
}
