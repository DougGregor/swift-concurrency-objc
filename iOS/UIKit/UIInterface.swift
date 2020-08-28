
enum UIBarStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case black
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use UIBarStyleBlack instead.")
  static var blackOpaque: UIBarStyle { get }
  @available(iOS, introduced: 2.0, deprecated: 13.0, message: "Use UIBarStyleBlack and set the translucent property to YES instead.")
  case blackTranslucent
}
@available(iOS 8.0, *)
enum UIUserInterfaceSizeClass : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case compact
  case regular
}
@available(iOS 12.0, *)
enum UIUserInterfaceStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case light
  case dark
}
@available(iOS 5.0, *)
enum UIUserInterfaceLayoutDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case leftToRight
  case rightToLeft
}
@available(iOS 10.0, *)
enum UITraitEnvironmentLayoutDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case leftToRight
  case rightToLeft
}
@available(iOS 10.0, *)
enum UIDisplayGamut : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case SRGB
  case P3
}
@available(iOS 13.0, *)
enum UIAccessibilityContrast : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case normal
  case high
}
@available(iOS 13.0, *)
enum UILegibilityWeight : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case regular
  case bold
}
@available(iOS 13.0, *)
enum UIUserInterfaceLevel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case base
  case elevated
}
@available(iOS 14.0, *)
enum UIUserInterfaceActiveAppearance : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case inactive
  case active
}
extension UIColor {
  @available(iOS 7.0, *)
  class var systemRed: UIColor { get }
  @available(iOS 7.0, *)
  class var systemGreen: UIColor { get }
  @available(iOS 7.0, *)
  class var systemBlue: UIColor { get }
  @available(iOS 7.0, *)
  class var systemOrange: UIColor { get }
  @available(iOS 7.0, *)
  class var systemYellow: UIColor { get }
  @available(iOS 7.0, *)
  class var systemPink: UIColor { get }
  @available(iOS 9.0, *)
  class var systemPurple: UIColor { get }
  @available(iOS 7.0, *)
  class var systemTeal: UIColor { get }
  @available(iOS 13.0, *)
  class var systemIndigo: UIColor { get }
  @available(iOS 7.0, *)
  class var systemGray: UIColor { get }
  @available(iOS 13.0, *)
  class var systemGray2: UIColor { get }
  @available(iOS 13.0, *)
  class var systemGray3: UIColor { get }
  @available(iOS 13.0, *)
  class var systemGray4: UIColor { get }
  @available(iOS 13.0, *)
  class var systemGray5: UIColor { get }
  @available(iOS 13.0, *)
  class var systemGray6: UIColor { get }
  @available(iOS 13.0, *)
  class var label: UIColor { get }
  @available(iOS 13.0, *)
  class var secondaryLabel: UIColor { get }
  @available(iOS 13.0, *)
  class var tertiaryLabel: UIColor { get }
  @available(iOS 13.0, *)
  class var quaternaryLabel: UIColor { get }
  @available(iOS 13.0, *)
  class var link: UIColor { get }
  @available(iOS 13.0, *)
  class var placeholderText: UIColor { get }
  @available(iOS 13.0, *)
  class var separator: UIColor { get }
  @available(iOS 13.0, *)
  class var opaqueSeparator: UIColor { get }
  @available(iOS 13.0, *)
  class var systemBackground: UIColor { get }
  @available(iOS 13.0, *)
  class var secondarySystemBackground: UIColor { get }
  @available(iOS 13.0, *)
  class var tertiarySystemBackground: UIColor { get }
  @available(iOS 13.0, *)
  class var systemGroupedBackground: UIColor { get }
  @available(iOS 13.0, *)
  class var secondarySystemGroupedBackground: UIColor { get }
  @available(iOS 13.0, *)
  class var tertiarySystemGroupedBackground: UIColor { get }
  @available(iOS 13.0, *)
  class var systemFill: UIColor { get }
  @available(iOS 13.0, *)
  class var secondarySystemFill: UIColor { get }
  @available(iOS 13.0, *)
  class var tertiarySystemFill: UIColor { get }
  @available(iOS 13.0, *)
  class var quaternarySystemFill: UIColor { get }
  class var lightText: UIColor { get }
  class var darkText: UIColor { get }
  @available(iOS, introduced: 2.0, deprecated: 13.0)
  class var groupTableViewBackground: UIColor { get }
}
extension UIFont {
  class var labelFontSize: CGFloat { get }
  class var buttonFontSize: CGFloat { get }
  class var smallSystemFontSize: CGFloat { get }
  class var systemFontSize: CGFloat { get }
  class var defaultFontSize: CGFloat { get }
  class var systemMinimumFontSize: CGFloat { get }
}
