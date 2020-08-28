
class CTGlyphInfo : _CFObject {
}
@available(iOS 3.2, *)
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
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Deprecated")
  static var kCTIdentityMappingCharacterCollection: CTCharacterCollection { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Deprecated")
  static var kCTAdobeCNS1CharacterCollection: CTCharacterCollection { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Deprecated")
  static var kCTAdobeGB1CharacterCollection: CTCharacterCollection { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Deprecated")
  static var kCTAdobeJapan1CharacterCollection: CTCharacterCollection { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Deprecated")
  static var kCTAdobeJapan2CharacterCollection: CTCharacterCollection { get }
  @available(iOS, introduced: 3.2, deprecated: 9.0, message: "Deprecated")
  static var kCTAdobeKorea1CharacterCollection: CTCharacterCollection { get }
}
@available(iOS 3.2, *)
func CTGlyphInfoCreateWithGlyphName(_ glyphName: CFString, _ font: CTFont, _ baseString: CFString) -> CTGlyphInfo?
@available(iOS 3.2, *)
func CTGlyphInfoCreateWithGlyph(_ glyph: CGGlyph, _ font: CTFont, _ baseString: CFString) -> CTGlyphInfo?
@available(iOS 3.2, *)
func CTGlyphInfoCreateWithCharacterIdentifier(_ cid: CGFontIndex, _ collection: CTCharacterCollection, _ baseString: CFString) -> CTGlyphInfo?
@available(iOS 3.2, *)
func CTGlyphInfoGetGlyphName(_ glyphInfo: CTGlyphInfo) -> CFString?
@available(iOS 13.0, *)
func CTGlyphInfoGetGlyph(_ glyphInfo: CTGlyphInfo) -> CGGlyph
@available(iOS 3.2, *)
func CTGlyphInfoGetCharacterIdentifier(_ glyphInfo: CTGlyphInfo) -> CGFontIndex
@available(iOS 3.2, *)
func CTGlyphInfoGetCharacterCollection(_ glyphInfo: CTGlyphInfo) -> CTCharacterCollection
