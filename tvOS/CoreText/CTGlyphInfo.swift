
class CTGlyphInfo : _CFObject {
}
@available(tvOS 9.0, *)
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
@available(tvOS 9.0, *)
func CTGlyphInfoCreateWithGlyphName(_ glyphName: CFString, _ font: CTFont, _ baseString: CFString) -> CTGlyphInfo?
@available(tvOS 9.0, *)
func CTGlyphInfoCreateWithGlyph(_ glyph: CGGlyph, _ font: CTFont, _ baseString: CFString) -> CTGlyphInfo?
@available(tvOS 9.0, *)
func CTGlyphInfoCreateWithCharacterIdentifier(_ cid: CGFontIndex, _ collection: CTCharacterCollection, _ baseString: CFString) -> CTGlyphInfo?
@available(tvOS 9.0, *)
func CTGlyphInfoGetGlyphName(_ glyphInfo: CTGlyphInfo) -> CFString?
@available(tvOS 13.0, *)
func CTGlyphInfoGetGlyph(_ glyphInfo: CTGlyphInfo) -> CGGlyph
@available(tvOS 9.0, *)
func CTGlyphInfoGetCharacterIdentifier(_ glyphInfo: CTGlyphInfo) -> CGFontIndex
@available(tvOS 9.0, *)
func CTGlyphInfoGetCharacterCollection(_ glyphInfo: CTGlyphInfo) -> CTCharacterCollection
