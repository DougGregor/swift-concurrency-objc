
@available(iOS 8.0, *)
class UIVibrancyEffect : UIVisualEffect {
  /*not inherited*/ init(blurEffect: UIBlurEffect)
}
@available(iOS 13.0, *)
enum UIVibrancyEffectStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case label
  case secondaryLabel
  case tertiaryLabel
  case quaternaryLabel
  case fill
  case secondaryFill
  case tertiaryFill
  case separator
}
extension UIVibrancyEffect {
  @available(iOS 13.0, *)
  /*not inherited*/ init(blurEffect: UIBlurEffect, style: UIVibrancyEffectStyle)
}
