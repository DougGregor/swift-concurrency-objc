
extension NSFont {
  class var identityMatrix: UnsafePointer<CGFloat>
  class let antialiasThresholdChangedNotification: NSNotification.Name
  class let fontSetChangedNotification: NSNotification.Name
}
class NSFont : NSObject, NSCopying, NSSecureCoding {
  /*not inherited*/ init?(name fontName: String, size fontSize: CGFloat)
  /*not inherited*/ init?(name fontName: String, matrix fontMatrix: UnsafePointer<CGFloat>)
  /*not inherited*/ init?(descriptor fontDescriptor: NSFontDescriptor, size fontSize: CGFloat)
  /*not inherited*/ init?(descriptor fontDescriptor: NSFontDescriptor, textTransform: AffineTransform?)
  class func userFont(ofSize fontSize: CGFloat) -> NSFont?
  class func userFixedPitchFont(ofSize fontSize: CGFloat) -> NSFont?
  class func setUser(_ font: NSFont?)
  class func setUserFixedPitch(_ font: NSFont?)
  class func systemFont(ofSize fontSize: CGFloat) -> NSFont
  class func boldSystemFont(ofSize fontSize: CGFloat) -> NSFont
  class func labelFont(ofSize fontSize: CGFloat) -> NSFont
  class func titleBarFont(ofSize fontSize: CGFloat) -> NSFont
  class func menuFont(ofSize fontSize: CGFloat) -> NSFont
  class func menuBarFont(ofSize fontSize: CGFloat) -> NSFont
  class func messageFont(ofSize fontSize: CGFloat) -> NSFont
  class func paletteFont(ofSize fontSize: CGFloat) -> NSFont
  class func toolTipsFont(ofSize fontSize: CGFloat) -> NSFont
  class func controlContentFont(ofSize fontSize: CGFloat) -> NSFont
  @available(macOS 10.11, *)
  class func systemFont(ofSize fontSize: CGFloat, weight: NSFont.Weight) -> NSFont
  @available(macOS 10.11, *)
  class func monospacedDigitSystemFont(ofSize fontSize: CGFloat, weight: NSFont.Weight) -> NSFont
  @available(macOS 10.15, *)
  class func monospacedSystemFont(ofSize fontSize: CGFloat, weight: NSFont.Weight) -> NSFont
  class var systemFontSize: CGFloat { get }
  class var smallSystemFontSize: CGFloat { get }
  class var labelFontSize: CGFloat { get }
  class func systemFontSize(for controlSize: NSControl.ControlSize) -> CGFloat
  var fontName: String { get }
  var pointSize: CGFloat { get }
  var matrix: UnsafePointer<CGFloat> { get }
  var familyName: String? { get }
  var displayName: String? { get }
  var fontDescriptor: NSFontDescriptor { get }
  var textTransform: AffineTransform { get }
  var numberOfGlyphs: Int { get }
  var mostCompatibleStringEncoding: UInt { get }
  var coveredCharacterSet: CharacterSet { get }
  var boundingRectForFont: NSRect { get }
  var maximumAdvancement: NSSize { get }
  var ascender: CGFloat { get }
  var descender: CGFloat { get }
  var leading: CGFloat { get }
  var underlinePosition: CGFloat { get }
  var underlineThickness: CGFloat { get }
  var italicAngle: CGFloat { get }
  var capHeight: CGFloat { get }
  var xHeight: CGFloat { get }
  var isFixedPitch: Bool { get }
  @available(macOS 10.13, *)
  func boundingRect(forCGGlyph glyph: CGGlyph) -> NSRect
  @available(macOS 10.13, *)
  func advancement(forCGGlyph glyph: CGGlyph) -> NSSize
  @available(macOS 10.13, *)
  func getBoundingRects(_ bounds: NSRectArray, forCGGlyphs glyphs: UnsafePointer<CGGlyph>, count glyphCount: Int)
  @available(macOS 10.13, *)
  func getAdvancements(_ advancements: NSSizeArray, forCGGlyphs glyphs: UnsafePointer<CGGlyph>, count glyphCount: Int)
  func set()
  func set(in graphicsContext: NSGraphicsContext)
  @available(macOS 10.7, *)
  @NSCopying var vertical: NSFont { get }
  @available(macOS 10.7, *)
  var isVertical: Bool { get }
}
typealias NSGlyph = UInt32
var NSControlGlyph: Int { get }
var NSNullGlyph: Int { get }
enum NSFontRenderingMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case defaultRenderingMode
  case antialiasedRenderingMode
  case integerAdvancementsRenderingMode
  case antialiasedIntegerAdvancementsRenderingMode
}
@available(macOS, introduced: 10.0, deprecated: 10.13)
enum NSMultibyteGlyphPacking : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(macOS, introduced: 10.0, deprecated: 10.13)
  case nativeShortGlyphPacking
}
@available(macOS, introduced: 10.0, deprecated: 10.13)
func NSConvertGlyphsToPackedGlyphs(_ glBuf: UnsafeMutablePointer<NSGlyph>, _ count: Int, _ packing: NSMultibyteGlyphPacking, _ packedGlyphs: UnsafeMutablePointer<CChar>) -> Int
extension NSFont {
  func glyph(withName name: String) -> NSGlyph
  func boundingRect(forGlyph glyph: NSGlyph) -> NSRect
  func advancement(forGlyph glyph: NSGlyph) -> NSSize
  func getBoundingRects(_ bounds: NSRectArray, forGlyphs glyphs: UnsafePointer<NSGlyph>, count glyphCount: Int)
  func getAdvancements(_ advancements: NSSizeArray, forGlyphs glyphs: UnsafePointer<NSGlyph>, count glyphCount: Int)
  func getAdvancements(_ advancements: NSSizeArray, forPackedGlyphs packedGlyphs: UnsafeRawPointer, length: Int)
  @NSCopying var printer: NSFont { get }
  @NSCopying var screen: NSFont { get }
  func screenFont(with renderingMode: NSFontRenderingMode) -> NSFont
  var renderingMode: NSFontRenderingMode { get }
  func withSize(_ fontSize: CGFloat) -> NSFont
}
extension NSFont {
  @available(macOS 11.0, *)
  class func preferredFont(forTextStyle style: NSFont.TextStyle, options: [NSFont.TextStyleOptionKey : Any] = [:]) -> NSFont
}
