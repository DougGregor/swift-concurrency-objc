
extension NSAppearance {
  struct Name : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
@available(macOS 10.9, *)
class NSAppearance : NSObject, NSSecureCoding {
  @available(macOS 10.9, *)
  var name: NSAppearance.Name { get }
  @available(macOS, introduced: 10.9, deprecated: 100000, message: "Use -performAsCurrentDrawingAppearance: to temporarily set the drawing appearance, or +currentDrawingAppearance to access the currently drawing appearance.")
  class var current: NSAppearance!
  @available(macOS 11.0, *)
  func performAsCurrentDrawingAppearance(_ block: () -> Void)
  /*not inherited*/ init?(named name: NSAppearance.Name)
  init?(appearanceNamed name: NSAppearance.Name, bundle: Bundle?)
  @available(macOS 10.10, *)
  var allowsVibrancy: Bool { get }
  @available(macOS 10.14, *)
  func bestMatch(from appearances: [NSAppearance.Name]) -> NSAppearance.Name?
  @available(macOS 11.0, *)
  class func currentDrawing() -> NSAppearance
}
extension NSAppearance.Name {
  @available(macOS 10.9, *)
  static let aqua: NSAppearance.Name
  @available(macOS 10.14, *)
  static let darkAqua: NSAppearance.Name
  @available(macOS, introduced: 10.9, deprecated: 10.10, message: "Light content should use the default Aqua apppearance.")
  static let lightContent: NSAppearance.Name
  @available(macOS 10.10, *)
  static let vibrantDark: NSAppearance.Name
  @available(macOS 10.10, *)
  static let vibrantLight: NSAppearance.Name
  @available(macOS 10.14, *)
  static let accessibilityHighContrastAqua: NSAppearance.Name
  @available(macOS 10.14, *)
  static let accessibilityHighContrastDarkAqua: NSAppearance.Name
  @available(macOS 10.14, *)
  static let accessibilityHighContrastVibrantLight: NSAppearance.Name
  @available(macOS 10.14, *)
  static let accessibilityHighContrastVibrantDark: NSAppearance.Name
}
protocol NSAppearanceCustomization : NSObjectProtocol {
  @available(macOS 10.9, *)
  var appearance: NSAppearance? { get set }
  @available(macOS 10.9, *)
  var effectiveAppearance: NSAppearance { get }
}
