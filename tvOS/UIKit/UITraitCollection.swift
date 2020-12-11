
@available(tvOS 8.0, *)
class UITraitCollection : NSObject, NSCopying, NSSecureCoding {
  func containsTraits(in trait: UITraitCollection?) -> Bool
  /*not inherited*/ init(traitsFrom traitCollections: [UITraitCollection])
  /*not inherited*/ init(userInterfaceIdiom idiom: UIUserInterfaceIdiom)
  var userInterfaceIdiom: UIUserInterfaceIdiom { get }
  @available(tvOS 10.0, *)
  /*not inherited*/ init(userInterfaceStyle: UIUserInterfaceStyle)
  @available(tvOS 10.0, *)
  var userInterfaceStyle: UIUserInterfaceStyle { get }
  @available(tvOS 10.0, *)
  /*not inherited*/ init(layoutDirection: UITraitEnvironmentLayoutDirection)
  @available(tvOS 10.0, *)
  var layoutDirection: UITraitEnvironmentLayoutDirection { get }
  /*not inherited*/ init(displayScale scale: CGFloat)
  var displayScale: CGFloat { get }
  /*not inherited*/ init(horizontalSizeClass: UIUserInterfaceSizeClass)
  var horizontalSizeClass: UIUserInterfaceSizeClass { get }
  /*not inherited*/ init(verticalSizeClass: UIUserInterfaceSizeClass)
  var verticalSizeClass: UIUserInterfaceSizeClass { get }
  @available(tvOS 9.0, *)
  /*not inherited*/ init(forceTouchCapability capability: UIForceTouchCapability)
  @available(tvOS 9.0, *)
  var forceTouchCapability: UIForceTouchCapability { get }
  @available(tvOS 10.0, *)
  /*not inherited*/ init(preferredContentSizeCategory: UIContentSizeCategory)
  @available(tvOS 10.0, *)
  var preferredContentSizeCategory: UIContentSizeCategory { get }
  @available(tvOS 10.0, *)
  /*not inherited*/ init(displayGamut: UIDisplayGamut)
  @available(tvOS 10.0, *)
  var displayGamut: UIDisplayGamut { get }
  @available(tvOS 13.0, *)
  /*not inherited*/ init(accessibilityContrast: UIAccessibilityContrast)
  @available(tvOS 13.0, *)
  var accessibilityContrast: UIAccessibilityContrast { get }
  @available(tvOS 13.0, *)
  /*not inherited*/ init(legibilityWeight: UILegibilityWeight)
  @available(tvOS 13.0, *)
  var legibilityWeight: UILegibilityWeight { get }
  @available(tvOS 14.0, *)
  /*not inherited*/ init(activeAppearance userInterfaceActiveAppearance: UIUserInterfaceActiveAppearance)
  @available(tvOS 14.0, *)
  var activeAppearance: UIUserInterfaceActiveAppearance { get }
}
protocol UITraitEnvironment : NSObjectProtocol {
  @available(tvOS 8.0, *)
  var traitCollection: UITraitCollection { get }
  @available(tvOS 8.0, *)
  func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?)
}
extension UITraitCollection {
  @available(tvOS 13.0, *)
  class var current: UITraitCollection
  @available(tvOS 13.0, *)
  func performAsCurrent(_ actions: () -> Void)
}
extension UITraitCollection {
  @available(tvOS 13.0, *)
  func hasDifferentColorAppearance(comparedTo traitCollection: UITraitCollection?) -> Bool
}
extension UITraitCollection {
  @available(tvOS 13.0, *)
  var imageConfiguration: UIImage.Configuration { get }
}
