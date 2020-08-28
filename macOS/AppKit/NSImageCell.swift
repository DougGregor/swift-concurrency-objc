
enum NSImageAlignment : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case alignCenter
  case alignTop
  case alignTopLeft
  case alignTopRight
  case alignLeft
  case alignBottom
  case alignBottomLeft
  case alignBottomRight
  case alignRight
}
extension NSImageView {
  enum FrameStyle : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case none
    case photo
    case grayBezel
    case groove
    case button
  }
}
class NSImageCell : NSCell, NSCopying, NSCoding {
  var imageAlignment: NSImageAlignment
  var imageScaling: NSImageScaling
  var imageFrameStyle: NSImageView.FrameStyle
}
