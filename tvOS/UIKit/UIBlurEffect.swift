
extension UIBlurEffect {
  @available(tvOS 8.0, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case extraLight
    case light
    case dark
    @available(tvOS 10.0, *)
    case extraDark
    @available(tvOS 10.0, *)
    case regular
    @available(tvOS 10.0, *)
    case prominent
  }
}
@available(tvOS 8.0, *)
class UIBlurEffect : UIVisualEffect {
  /*not inherited*/ init(style: UIBlurEffect.Style)
}
