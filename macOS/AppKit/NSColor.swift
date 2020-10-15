
extension NSAppKitVersion {
}
extension NSColor {
  enum ColorType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case componentBased
    case pattern
    case catalog
  }
  @available(macOS 10.14, *)
  enum SystemEffect : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case pressed
    case deepPressed
    case disabled
    case rollover
  }
  class let systemColorsDidChangeNotification: NSNotification.Name
}
class NSColor : NSObject, NSCopying, NSSecureCoding, NSPasteboardReading, NSPasteboardWriting {
  /*not inherited*/ init(colorSpace space: NSColorSpace, components: UnsafePointer<CGFloat>, count numberOfComponents: Int)
  @available(macOS 10.7, *)
  /*not inherited*/ init(srgbRed red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  @available(macOS 10.7, *)
  /*not inherited*/ init(genericGamma22White white: CGFloat, alpha: CGFloat)
  @available(macOS 10.12, *)
  /*not inherited*/ init(displayP3Red red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  @available(macOS 10.9, *)
  /*not inherited*/ init(white: CGFloat, alpha: CGFloat)
  @available(macOS 10.9, *)
  /*not inherited*/ init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  @available(macOS 10.9, *)
  /*not inherited*/ init(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
  @available(macOS 10.12, *)
  /*not inherited*/ init(colorSpace space: NSColorSpace, hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
  /*not inherited*/ init?(catalogName listName: NSColorList.Name, colorName: NSColor.Name)
  @available(macOS 10.13, *)
  /*not inherited*/ init?(named name: NSColor.Name, bundle: Bundle?)
  @available(macOS 10.13, *)
  /*not inherited*/ init?(named name: NSColor.Name)
  @available(macOS 10.15, *)
  /*not inherited*/ init(name colorName: NSColor.Name?, dynamicProvider: @escaping (NSAppearance) -> NSColor)
  /*not inherited*/ init(deviceWhite white: CGFloat, alpha: CGFloat)
  /*not inherited*/ init(deviceRed red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  /*not inherited*/ init(deviceHue hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
  /*not inherited*/ init(deviceCyan cyan: CGFloat, magenta: CGFloat, yellow: CGFloat, black: CGFloat, alpha: CGFloat)
  /*not inherited*/ init(calibratedWhite white: CGFloat, alpha: CGFloat)
  /*not inherited*/ init(calibratedRed red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  /*not inherited*/ init(calibratedHue hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
  /*not inherited*/ init(patternImage image: NSImage)
  @available(macOS 10.13, *)
  var type: NSColor.ColorType { get }
  @available(macOS 10.13, *)
  func usingType(_ type: NSColor.ColorType) -> NSColor?
  func usingColorSpace(_ space: NSColorSpace) -> NSColor?
  class var black: NSColor { get }
  class var darkGray: NSColor { get }
  class var lightGray: NSColor { get }
  class var white: NSColor { get }
  class var gray: NSColor { get }
  class var red: NSColor { get }
  class var green: NSColor { get }
  class var blue: NSColor { get }
  class var cyan: NSColor { get }
  class var yellow: NSColor { get }
  class var magenta: NSColor { get }
  class var orange: NSColor { get }
  class var purple: NSColor { get }
  class var brown: NSColor { get }
  class var clear: NSColor { get }
  @available(macOS 10.10, *)
  class var labelColor: NSColor { get }
  @available(macOS 10.10, *)
  class var secondaryLabelColor: NSColor { get }
  @available(macOS 10.10, *)
  class var tertiaryLabelColor: NSColor { get }
  @available(macOS 10.10, *)
  class var quaternaryLabelColor: NSColor { get }
  @available(macOS 10.10, *)
  class var linkColor: NSColor { get }
  @available(macOS 10.10, *)
  class var placeholderTextColor: NSColor { get }
  class var windowFrameTextColor: NSColor { get }
  class var selectedMenuItemTextColor: NSColor { get }
  class var alternateSelectedControlTextColor: NSColor { get }
  class var headerTextColor: NSColor { get }
  @available(macOS 10.14, *)
  class var separatorColor: NSColor { get }
  class var gridColor: NSColor { get }
  class var windowBackgroundColor: NSColor { get }
  @available(macOS 10.8, *)
  class var underPageBackgroundColor: NSColor { get }
  class var controlBackgroundColor: NSColor { get }
  @available(macOS 10.14, *)
  class var selectedContentBackgroundColor: NSColor { get }
  @available(macOS 10.14, *)
  class var unemphasizedSelectedContentBackgroundColor: NSColor { get }
  @available(macOS 10.14, *)
  class var alternatingContentBackgroundColors: [NSColor] { get }
  @available(macOS 10.13, *)
  class var findHighlightColor: NSColor { get }
  class var textColor: NSColor { get }
  class var textBackgroundColor: NSColor { get }
  class var selectedTextColor: NSColor { get }
  class var selectedTextBackgroundColor: NSColor { get }
  @available(macOS 10.14, *)
  class var unemphasizedSelectedTextBackgroundColor: NSColor { get }
  @available(macOS 10.14, *)
  class var unemphasizedSelectedTextColor: NSColor { get }
  class var controlColor: NSColor { get }
  class var controlTextColor: NSColor { get }
  class var selectedControlColor: NSColor { get }
  class var selectedControlTextColor: NSColor { get }
  class var disabledControlTextColor: NSColor { get }
  class var keyboardFocusIndicatorColor: NSColor { get }
  @available(macOS 10.12.2, *)
  class var scrubberTexturedBackground: NSColor { get }
  @available(macOS 10.10, *)
  class var systemRed: NSColor { get }
  @available(macOS 10.10, *)
  class var systemGreen: NSColor { get }
  @available(macOS 10.10, *)
  class var systemBlue: NSColor { get }
  @available(macOS 10.10, *)
  class var systemOrange: NSColor { get }
  @available(macOS 10.10, *)
  class var systemYellow: NSColor { get }
  @available(macOS 10.10, *)
  class var systemBrown: NSColor { get }
  @available(macOS 10.10, *)
  class var systemPink: NSColor { get }
  @available(macOS 10.10, *)
  class var systemPurple: NSColor { get }
  @available(macOS 10.10, *)
  class var systemGray: NSColor { get }
  @available(macOS 10.12, *)
  class var systemTeal: NSColor { get }
  @available(macOS 10.15, *)
  class var systemIndigo: NSColor { get }
  @available(macOS 10.14, *)
  class var controlAccentColor: NSColor { get }
  class var currentControlTint: NSControlTint { get }
  @available(macOS, introduced: 10.0, deprecated: 11.0, message: "NSControlTint does not describe the full range of available control accent colors. Use +[NSColor controlAccentColor] instead.")
  /*not inherited*/ init(for controlTint: NSControlTint)
  class var highlightColor: NSColor { get }
  class var shadowColor: NSColor { get }
  func highlight(withLevel val: CGFloat) -> NSColor?
  func shadow(withLevel val: CGFloat) -> NSColor?
  @available(macOS 10.14, *)
  func withSystemEffect(_ systemEffect: NSColor.SystemEffect) -> NSColor
  func set()
  func setFill()
  func setStroke()
  func blended(withFraction fraction: CGFloat, of color: NSColor) -> NSColor?
  func withAlphaComponent(_ alpha: CGFloat) -> NSColor
  var catalogNameComponent: NSColorList.Name { get }
  var colorNameComponent: NSColor.Name { get }
  var localizedCatalogNameComponent: String { get }
  var localizedColorNameComponent: String { get }
  var redComponent: CGFloat { get }
  var greenComponent: CGFloat { get }
  var blueComponent: CGFloat { get }
  func getRed(_ red: UnsafeMutablePointer<CGFloat>?, green: UnsafeMutablePointer<CGFloat>?, blue: UnsafeMutablePointer<CGFloat>?, alpha: UnsafeMutablePointer<CGFloat>?)
  var hueComponent: CGFloat { get }
  var saturationComponent: CGFloat { get }
  var brightnessComponent: CGFloat { get }
  func getHue(_ hue: UnsafeMutablePointer<CGFloat>?, saturation: UnsafeMutablePointer<CGFloat>?, brightness: UnsafeMutablePointer<CGFloat>?, alpha: UnsafeMutablePointer<CGFloat>?)
  var whiteComponent: CGFloat { get }
  func getWhite(_ white: UnsafeMutablePointer<CGFloat>?, alpha: UnsafeMutablePointer<CGFloat>?)
  var cyanComponent: CGFloat { get }
  var magentaComponent: CGFloat { get }
  var yellowComponent: CGFloat { get }
  var blackComponent: CGFloat { get }
  func getCyan(_ cyan: UnsafeMutablePointer<CGFloat>?, magenta: UnsafeMutablePointer<CGFloat>?, yellow: UnsafeMutablePointer<CGFloat>?, black: UnsafeMutablePointer<CGFloat>?, alpha: UnsafeMutablePointer<CGFloat>?)
  var colorSpace: NSColorSpace { get }
  var numberOfComponents: Int { get }
  func getComponents(_ components: UnsafeMutablePointer<CGFloat>)
  var patternImage: NSImage { get }
  var alphaComponent: CGFloat { get }
  /*not inherited*/ init?(from pasteBoard: NSPasteboard)
  func write(to pasteBoard: NSPasteboard)
  func drawSwatch(in rect: NSRect)
  @available(macOS 10.8, *)
  /*not inherited*/ init?(cgColor: CGColor)
  @available(macOS 10.8, *)
  var cgColor: CGColor { get }
  class var ignoresAlpha: Bool
}

extension NSColor : _ExpressibleByColorLiteral {
}
extension NSColor {
  @available(macOS, introduced: 10.0, deprecated: 11.0, message: "Use a color that matches the semantics being used, such as `separatorColor`")
  class var controlHighlightColor: NSColor { get }
  @available(macOS, introduced: 10.0, deprecated: 11.0, message: "Use a color that matches the semantics being used, such as `separatorColor`")
  class var controlLightHighlightColor: NSColor { get }
  @available(macOS, introduced: 10.0, deprecated: 11.0, message: "Use a color that matches the semantics being used, such as `separatorColor`")
  class var controlShadowColor: NSColor { get }
  @available(macOS, introduced: 10.0, deprecated: 11.0, message: "Use a color that matches the semantics being used, such as `separatorColor`")
  class var controlDarkShadowColor: NSColor { get }
  @available(macOS, introduced: 10.0, deprecated: 11.0, message: "Use NSScroller instead")
  class var scrollBarColor: NSColor { get }
  @available(macOS, introduced: 10.0, deprecated: 11.0, message: "Use NSScroller instead")
  class var knobColor: NSColor { get }
  @available(macOS, introduced: 10.0, deprecated: 11.0, message: "Use NSScroller instead")
  class var selectedKnobColor: NSColor { get }
  @available(macOS, introduced: 10.0, deprecated: 11.0, message: "Use NSVisualEffectMaterialTitlebar")
  class var windowFrameColor: NSColor { get }
  @available(macOS, introduced: 10.0, deprecated: 11.0, message: "Use NSVisualEffectMaterialSelection")
  class var selectedMenuItemColor: NSColor { get }
  @available(macOS, introduced: 10.0, deprecated: 11.0, message: "Use NSVisualEffectMaterialHeaderView")
  class var headerColor: NSColor { get }
  @available(macOS, introduced: 10.1, deprecated: 11.0)
  class var secondarySelectedControlColor: NSColor { get }
  @available(macOS, introduced: 10.2, deprecated: 11.0)
  class var alternateSelectedControlColor: NSColor { get }
  @available(macOS, introduced: 10.3, deprecated: 11.0)
  class var controlAlternatingRowBackgroundColors: [NSColor] { get }
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use -type and NSColorType instead")
  var colorSpaceName: NSColorSpaceName { get }
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use -colorUsingType: or -colorUsingColorSpace: instead")
  func usingColorSpaceName(_ name: NSColorSpaceName?, device deviceDescription: [NSDeviceDescriptionKey : Any]?) -> NSColor?
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use -colorUsingType: or -colorUsingColorSpace: instead")
  func usingColorSpaceName(_ name: NSColorSpaceName) -> NSColor?
}
extension NSColor {
  /*not inherited*/ init(ciColor color: CIColor)
}
extension CIColor {
  convenience init?(color: NSColor)
}
extension NSCoder {
}
