
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
  @available(watchOS 2.0, *)
  class var typeID: CFTypeID { get }
  @available(watchOS 2.0, *)
  /*not inherited*/ init?(_ provider: CGDataProvider)
  @available(watchOS 2.0, *)
  /*not inherited*/ init?(_ name: CFString)
  @available(watchOS 2.0, *)
  func copy(withVariations variations: CFDictionary?) -> CGFont?
  @available(watchOS 2.0, *)
  var numberOfGlyphs: Int { get }
  @available(watchOS 2.0, *)
  var unitsPerEm: Int32 { get }
  @available(watchOS 2.0, *)
  var postScriptName: CFString? { get }
  @available(watchOS 2.0, *)
  var fullName: CFString? { get }
  @available(watchOS 2.0, *)
  var ascent: Int32 { get }
  @available(watchOS 2.0, *)
  var descent: Int32 { get }
  @available(watchOS 2.0, *)
  var leading: Int32 { get }
  @available(watchOS 2.0, *)
  var capHeight: Int32 { get }
  @available(watchOS 2.0, *)
  var xHeight: Int32 { get }
  @available(watchOS 2.0, *)
  var fontBBox: CGRect { get }
  @available(watchOS 2.0, *)
  var italicAngle: CGFloat { get }
  @available(watchOS 2.0, *)
  var stemV: CGFloat { get }
  @available(watchOS 2.0, *)
  var variationAxes: CFArray? { get }
  @available(watchOS 2.0, *)
  var variations: CFDictionary? { get }
  @available(watchOS 2.0, *)
  func getGlyphAdvances(glyphs: UnsafePointer<CGGlyph>, count: Int, advances: UnsafeMutablePointer<Int32>) -> Bool
  @available(watchOS 2.0, *)
  func getGlyphBBoxes(glyphs: UnsafePointer<CGGlyph>, count: Int, bboxes: UnsafeMutablePointer<CGRect>) -> Bool
  @available(watchOS 2.0, *)
  func getGlyphWithGlyphName(name: CFString) -> CGGlyph
  @available(watchOS 2.0, *)
  func name(for glyph: CGGlyph) -> CFString?
  @available(watchOS 2.0, *)
  func canCreatePostScriptSubset(_ format: CGFontPostScriptFormat) -> Bool
  @available(watchOS 2.0, *)
  func createPostScriptSubset(subsetName: CFString, format: CGFontPostScriptFormat, glyphs: UnsafePointer<CGGlyph>?, count: Int, encoding: UnsafePointer<CGGlyph>?) -> CFData?
  @available(watchOS 2.0, *)
  func createPostScriptEncoding(encoding: UnsafePointer<CGGlyph>?) -> CFData?
  @available(watchOS 2.0, *)
  var tableTags: CFArray? { get }
  @available(watchOS 2.0, *)
  func table(for tag: UInt32) -> CFData?
  @available(watchOS 2.0, *)
  class let variationAxisName: CFString
  @available(watchOS 2.0, *)
  class let variationAxisMinValue: CFString
  @available(watchOS 2.0, *)
  class let variationAxisMaxValue: CFString
  @available(watchOS 2.0, *)
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
