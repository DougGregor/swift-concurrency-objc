
class NSGlyphInfo : NSObject, NSCopying, NSSecureCoding {
  @available(macOS 10.13, *)
  /*not inherited*/ init?(cgGlyph glyph: CGGlyph, for font: NSFont, baseString string: String)
  @available(macOS 10.13, *)
  var glyphID: CGGlyph { get }
  @available(macOS 10.13, *)
  var baseString: String { get }
}
enum NSCharacterCollection : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case identityMappingCharacterCollection
  case adobeCNS1CharacterCollection
  case adobeGB1CharacterCollection
  case adobeJapan1CharacterCollection
  case adobeJapan2CharacterCollection
  case adobeKorea1CharacterCollection
}
extension NSGlyphInfo {
  /*not inherited*/ init?(glyphName: String, for font: NSFont, baseString string: String)
  /*not inherited*/ init?(glyph: NSGlyph, for font: NSFont, baseString string: String)
  /*not inherited*/ init?(characterIdentifier cid: Int, collection characterCollection: NSCharacterCollection, baseString string: String)
  var glyphName: String? { get }
  var characterIdentifier: Int { get }
  var characterCollection: NSCharacterCollection { get }
}
