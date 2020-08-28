
extension UIAccessibility {
  @available(iOS 5.0, *)
  enum ZoomType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case insertionPoint
  }
  @available(iOS 5.0, *)
  static func zoomFocusChanged(zoomType type: UIAccessibility.ZoomType, toFrame frame: CGRect, in view: UIView)
  @available(iOS 5.0, *)
  static func registerGestureConflictWithZoom()
}
