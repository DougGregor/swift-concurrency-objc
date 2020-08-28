
class CTGlyphInfo : _CFObject {
}
@available(macOS 10.5, *)
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
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTIdentityMappingCharacterCollection: CTCharacterCollection { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTAdobeCNS1CharacterCollection: CTCharacterCollection { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTAdobeGB1CharacterCollection: CTCharacterCollection { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTAdobeJapan1CharacterCollection: CTCharacterCollection { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTAdobeJapan2CharacterCollection: CTCharacterCollection { get }
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Deprecated")
  static var kCTAdobeKorea1CharacterCollection: CTCharacterCollection { get }
}
@available(macOS 10.5, *)
func CTGlyphInfoCreateWithGlyphName(_ glyphName: CFString, _ font: CTFont, _ baseString: CFString) -> CTGlyphInfo?
@available(macOS 10.5, *)
func CTGlyphInfoCreateWithGlyph(_ glyph: CGGlyph, _ font: CTFont, _ baseString: CFString) -> CTGlyphInfo?
@available(macOS 10.5, *)
func CTGlyphInfoCreateWithCharacterIdentifier(_ cid: CGFontIndex, _ collection: CTCharacterCollection, _ baseString: CFString) -> CTGlyphInfo?
@available(macOS 10.5, *)
func CTGlyphInfoGetGlyphName(_ glyphInfo: CTGlyphInfo) -> CFString?
@available(macOS 10.15, *)
func CTGlyphInfoGetGlyph(_ glyphInfo: CTGlyphInfo) -> CGGlyph
@available(macOS 10.5, *)
func CTGlyphInfoGetCharacterIdentifier(_ glyphInfo: CTGlyphInfo) -> CGFontIndex
@available(macOS 10.5, *)
func CTGlyphInfoGetCharacterCollection(_ glyphInfo: CTGlyphInfo) -> CTCharacterCollection
