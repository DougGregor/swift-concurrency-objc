
class CGFont : _CFObject {
}
typealias CGFontIndex = UInt16
typealias CGGlyph = CGFontIndex
enum CGFontPostScriptFormat : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case type1
  case type3
  case type42
}
let kCGFontIndexMax: CGFontIndex
let kCGFontIndexInvalid: CGFontIndex
let kCGGlyphMax: CGFontIndex
extension CGFont {
  @available(macOS 10.2, *)
  class var typeID: CFTypeID { get }
  @available(macOS 10.5, *)
  /*not inherited*/ init?(_ provider: CGDataProvider)
  @available(macOS 10.5, *)
  /*not inherited*/ init?(_ name: CFString)
  @available(macOS 10.4, *)
  func copy(withVariations variations: CFDictionary?) -> CGFont?
  @available(macOS 10.0, *)
  var numberOfGlyphs: Int { get }
  @available(macOS 10.0, *)
  var unitsPerEm: Int32 { get }
  @available(macOS 10.4, *)
  var postScriptName: CFString? { get }
  @available(macOS 10.5, *)
  var fullName: CFString? { get }
  @available(macOS 10.5, *)
  var ascent: Int32 { get }
  @available(macOS 10.5, *)
  var descent: Int32 { get }
  @available(macOS 10.5, *)
  var leading: Int32 { get }
  @available(macOS 10.5, *)
  var capHeight: Int32 { get }
  @available(macOS 10.5, *)
  var xHeight: Int32 { get }
  @available(macOS 10.5, *)
  var fontBBox: CGRect { get }
  @available(macOS 10.5, *)
  var italicAngle: CGFloat { get }
  @available(macOS 10.5, *)
  var stemV: CGFloat { get }
  @available(macOS 10.4, *)
  var variationAxes: CFArray? { get }
  @available(macOS 10.4, *)
  var variations: CFDictionary? { get }
  @available(macOS 10.0, *)
  func getGlyphAdvances(glyphs: UnsafePointer<CGGlyph>, count: Int, advances: UnsafeMutablePointer<Int32>) -> Bool
  @available(macOS 10.5, *)
  func getGlyphBBoxes(glyphs: UnsafePointer<CGGlyph>, count: Int, bboxes: UnsafeMutablePointer<CGRect>) -> Bool
  @available(macOS 10.5, *)
  func getGlyphWithGlyphName(name: CFString) -> CGGlyph
  @available(macOS 10.5, *)
  func name(for glyph: CGGlyph) -> CFString?
  @available(macOS 10.4, *)
  func canCreatePostScriptSubset(_ format: CGFontPostScriptFormat) -> Bool
  @available(macOS 10.4, *)
  func createPostScriptSubset(subsetName: CFString, format: CGFontPostScriptFormat, glyphs: UnsafePointer<CGGlyph>?, count: Int, encoding: UnsafePointer<CGGlyph>?) -> CFData?
  @available(macOS 10.4, *)
  func createPostScriptEncoding(encoding: UnsafePointer<CGGlyph>?) -> CFData?
  @available(macOS 10.5, *)
  var tableTags: CFArray? { get }
  @available(macOS 10.5, *)
  func table(for tag: UInt32) -> CFData?
  @available(macOS 10.4, *)
  class let variationAxisName: CFString
  @available(macOS 10.4, *)
  class let variationAxisMinValue: CFString
  @available(macOS 10.4, *)
  class let variationAxisMaxValue: CFString
  @available(macOS 10.4, *)
  class let variationAxisDefaultValue: CFString
}
enum CGGlyphDeprecatedEnum : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  @available(*, deprecated)
  case min
  @available(*, deprecated)
  case max
}
