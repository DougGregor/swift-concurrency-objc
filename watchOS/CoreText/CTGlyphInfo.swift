
class CTGlyphInfo : _CFObject {
}
@available(watchOS 2.0, *)
func CTGlyphInfoGetTypeID() -> CFTypeID
enum CTCharacterCollection : UInt16 {
  init?(rawValue: UInt16)
  var rawValue: UInt16 { get }
  case identityMapping
  case adobeCNS1
  case adobeGB1
  case adobeJapan1
  case adobeJapan2
  case adobeKorea1
}
@available(watchOS 2.0, *)
func CTGlyphInfoCreateWithGlyphName(_ glyphName: CFString, _ font: CTFont, _ baseString: CFString) -> CTGlyphInfo?
@available(watchOS 2.0, *)
func CTGlyphInfoCreateWithGlyph(_ glyph: CGGlyph, _ font: CTFont, _ baseString: CFString) -> CTGlyphInfo?
@available(watchOS 2.0, *)
func CTGlyphInfoCreateWithCharacterIdentifier(_ cid: CGFontIndex, _ collection: CTCharacterCollection, _ baseString: CFString) -> CTGlyphInfo?
@available(watchOS 2.0, *)
func CTGlyphInfoGetGlyphName(_ glyphInfo: CTGlyphInfo) -> CFString?
@available(watchOS 6.0, *)
func CTGlyphInfoGetGlyph(_ glyphInfo: CTGlyphInfo) -> CGGlyph
@available(watchOS 2.0, *)
func CTGlyphInfoGetCharacterIdentifier(_ glyphInfo: CTGlyphInfo) -> CGFontIndex
@available(watchOS 2.0, *)
func CTGlyphInfoGetCharacterCollection(_ glyphInfo: CTGlyphInfo) -> CTCharacterCollection
