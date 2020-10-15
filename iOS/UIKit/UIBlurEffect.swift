
extension UIBlurEffect {
  @available(iOS 8.0, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case extraLight
    case light
    case dark
    @available(iOS 10.0, *)
    case regular
    @available(iOS 10.0, *)
    case prominent
    @available(iOS 13.0, *)
    case systemUltraThinMaterial
    @available(iOS 13.0, *)
    case systemThinMaterial
    @available(iOS 13.0, *)
    case systemMaterial
    @available(iOS 13.0, *)
    case systemThickMaterial
    @available(iOS 13.0, *)
    case systemChromeMaterial
    @available(iOS 13.0, *)
    case systemUltraThinMaterialLight
    @available(iOS 13.0, *)
    case systemThinMaterialLight
    @available(iOS 13.0, *)
    case systemMaterialLight
    @available(iOS 13.0, *)
    case systemThickMaterialLight
    @available(iOS 13.0, *)
    case systemChromeMaterialLight
    @available(iOS 13.0, *)
    case systemUltraThinMaterialDark
    @available(iOS 13.0, *)
    case systemThinMaterialDark
    @available(iOS 13.0, *)
    case systemMaterialDark
    @available(iOS 13.0, *)
    case systemThickMaterialDark
    @available(iOS 13.0, *)
    case systemChromeMaterialDark
  }
}
@available(iOS 8.0, *)
class UIBlurEffect : UIVisualEffect {
  /*not inherited*/ init(style: UIBlurEffect.Style)
}
