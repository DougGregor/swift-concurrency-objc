
enum UIBarStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case black
  @available(tvOS, introduced: 2.0, deprecated: 13.0, message: "Use UIBarStyleBlack instead.")
  static var blackOpaque: UIBarStyle { get }
  @available(tvOS, introduced: 2.0, deprecated: 13.0, message: "Use UIBarStyleBlack and set the translucent property to YES instead.")
  case blackTranslucent
}
@available(tvOS 8.0, *)
enum UIUserInterfaceSizeClass : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case compact
  case regular
}
@available(tvOS 10.0, *)
enum UIUserInterfaceStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case light
  case dark
}
@available(tvOS 5.0, *)
enum UIUserInterfaceLayoutDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case leftToRight
  case rightToLeft
}
@available(tvOS 10.0, *)
enum UITraitEnvironmentLayoutDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case leftToRight
  case rightToLeft
}
@available(tvOS 10.0, *)
enum UIDisplayGamut : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case SRGB
  case P3
}
@available(tvOS 13.0, *)
enum UIAccessibilityContrast : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case normal
  case high
}
@available(tvOS 13.0, *)
enum UILegibilityWeight : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case regular
  case bold
}
@available(tvOS 13.0, *)
enum UIUserInterfaceLevel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case base
  case elevated
}
@available(tvOS 14.0, *)
enum UIUserInterfaceActiveAppearance : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case inactive
  case active
}
extension UIColor {
  @available(tvOS 9.0, *)
  class var systemRed: UIColor { get }
  @available(tvOS 9.0, *)
  class var systemGreen: UIColor { get }
  @available(tvOS 9.0, *)
  class var systemBlue: UIColor { get }
  @available(tvOS 9.0, *)
  class var systemOrange: UIColor { get }
  @available(tvOS 9.0, *)
  class var systemYellow: UIColor { get }
  @available(tvOS 9.0, *)
  class var systemPink: UIColor { get }
  @available(tvOS 9.0, *)
  class var systemPurple: UIColor { get }
  @available(tvOS 9.0, *)
  class var systemTeal: UIColor { get }
  @available(tvOS 13.0, *)
  class var systemIndigo: UIColor { get }
  @available(tvOS 9.0, *)
  class var systemGray: UIColor { get }
  @available(tvOS 13.0, *)
  class var systemGray2: UIColor { get }
  @available(tvOS 13.0, *)
  class var systemGray3: UIColor { get }
  @available(tvOS 13.0, *)
  class var systemGray4: UIColor { get }
  @available(tvOS 13.0, *)
  class var systemGray5: UIColor { get }
  @available(tvOS 13.0, *)
  class var systemGray6: UIColor { get }
  @available(tvOS 13.0, *)
  class var label: UIColor { get }
  @available(tvOS 13.0, *)
  class var secondaryLabel: UIColor { get }
  @available(tvOS 13.0, *)
  class var tertiaryLabel: UIColor { get }
  @available(tvOS 13.0, *)
  class var quaternaryLabel: UIColor { get }
  @available(tvOS 13.0, *)
  class var link: UIColor { get }
  @available(tvOS 13.0, *)
  class var placeholderText: UIColor { get }
  @available(tvOS 13.0, *)
  class var separator: UIColor { get }
  @available(tvOS 13.0, *)
  class var opaqueSeparator: UIColor { get }
  @available(tvOS 13.0, *)
  class var systemBackground: UIColor { get }
  @available(tvOS 13.0, *)
  class var secondarySystemBackground: UIColor { get }
  @available(tvOS 13.0, *)
  class var tertiarySystemBackground: UIColor { get }
  @available(tvOS 13.0, *)
  class var systemGroupedBackground: UIColor { get }
  @available(tvOS 13.0, *)
  class var secondarySystemGroupedBackground: UIColor { get }
  @available(tvOS 13.0, *)
  class var tertiarySystemGroupedBackground: UIColor { get }
  @available(tvOS 13.0, *)
  class var systemFill: UIColor { get }
  @available(tvOS 13.0, *)
  class var secondarySystemFill: UIColor { get }
  @available(tvOS 13.0, *)
  class var tertiarySystemFill: UIColor { get }
  @available(tvOS 13.0, *)
  class var quaternarySystemFill: UIColor { get }
  class var lightText: UIColor { get }
  class var darkText: UIColor { get }
  @available(tvOS, introduced: 13.0, deprecated: 13.0)
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
