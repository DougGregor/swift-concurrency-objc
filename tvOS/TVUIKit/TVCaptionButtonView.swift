
@available(tvOS 12.0, *)
enum TVCaptionButtonViewMotionDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case horizontal
  case vertical
  case all
}
@available(tvOS 12.0, *)
class TVCaptionButtonView : TVLockupView {
  var motionDirection: TVCaptionButtonViewMotionDirection
  var contentImage: UIImage?
  var contentText: String?
  var title: String?
  var subtitle: String?
}
