
@available(iOS 8.0, *)
class UITraitCollection : NSObject, NSCopying, NSSecureCoding {
  func containsTraits(in trait: UITraitCollection?) -> Bool
  /*not inherited*/ init(traitsFrom traitCollections: [UITraitCollection])
  /*not inherited*/ init(userInterfaceIdiom idiom: UIUserInterfaceIdiom)
  var userInterfaceIdiom: UIUserInterfaceIdiom { get }
  @available(iOS 12.0, *)
  /*not inherited*/ init(userInterfaceStyle: UIUserInterfaceStyle)
  @available(iOS 12.0, *)
  var userInterfaceStyle: UIUserInterfaceStyle { get }
  @available(iOS 10.0, *)
  /*not inherited*/ init(layoutDirection: UITraitEnvironmentLayoutDirection)
  @available(iOS 10.0, *)
  var layoutDirection: UITraitEnvironmentLayoutDirection { get }
  /*not inherited*/ init(displayScale scale: CGFloat)
  var displayScale: CGFloat { get }
  /*not inherited*/ init(horizontalSizeClass: UIUserInterfaceSizeClass)
  var horizontalSizeClass: UIUserInterfaceSizeClass { get }
  /*not inherited*/ init(verticalSizeClass: UIUserInterfaceSizeClass)
  var verticalSizeClass: UIUserInterfaceSizeClass { get }
  @available(iOS 9.0, *)
  /*not inherited*/ init(forceTouchCapability capability: UIForceTouchCapability)
  @available(iOS 9.0, *)
  var forceTouchCapability: UIForceTouchCapability { get }
  @available(iOS 10.0, *)
  /*not inherited*/ init(preferredContentSizeCategory: UIContentSizeCategory)
  @available(iOS 10.0, *)
  var preferredContentSizeCategory: UIContentSizeCategory { get }
  @available(iOS 10.0, *)
  /*not inherited*/ init(displayGamut: UIDisplayGamut)
  @available(iOS 10.0, *)
  var displayGamut: UIDisplayGamut { get }
  @available(iOS 13.0, *)
  /*not inherited*/ init(accessibilityContrast: UIAccessibilityContrast)
  @available(iOS 13.0, *)
  var accessibilityContrast: UIAccessibilityContrast { get }
  @available(iOS 13.0, *)
  /*not inherited*/ init(userInterfaceLevel: UIUserInterfaceLevel)
  @available(iOS 13.0, *)
  var userInterfaceLevel: UIUserInterfaceLevel { get }
  @available(iOS 13.0, *)
  /*not inherited*/ init(legibilityWeight: UILegibilityWeight)
  @available(iOS 13.0, *)
  var legibilityWeight: UILegibilityWeight { get }
  @available(iOS 14.0, *)
  /*not inherited*/ init(activeAppearance userInterfaceActiveAppearance: UIUserInterfaceActiveAppearance)
  @available(iOS 14.0, *)
  var activeAppearance: UIUserInterfaceActiveAppearance { get }
}
protocol UITraitEnvironment : NSObjectProtocol {
  @available(iOS 8.0, *)
  var traitCollection: UITraitCollection { get }
  @available(iOS 8.0, *)
  func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?)
}
extension UITraitCollection {
  @available(iOS 13.0, *)
  class var current: UITraitCollection
  @available(iOS 13.0, *)
  func performAsCurrent(_ actions: () -> Void)
}
extension UITraitCollection {
  @available(iOS 13.0, *)
  func hasDifferentColorAppearance(comparedTo traitCollection: UITraitCollection?) -> Bool
}
extension UITraitCollection {
  @available(iOS 13.0, *)
  var imageConfiguration: UIImage.Configuration { get }
}
