
class NSTypesetter : NSObject {
  var usesFontLeading: Bool
  var typesetterBehavior: NSLayoutManager.TypesetterBehavior
  var hyphenationFactor: Float
  var lineFragmentPadding: CGFloat
  func substituteFont(for originalFont: NSFont) -> NSFont
  func textTab(forGlyphLocation glyphLocation: CGFloat, writingDirection direction: NSWritingDirection, maxLocation: CGFloat) -> NSTextTab?
  var bidiProcessingEnabled: Bool
  unowned(unsafe) var attributedString: @sil_unmanaged NSAttributedString?
  func setParagraphGlyphRange(_ paragraphRange: NSRange, separatorGlyphRange paragraphSeparatorRange: NSRange)
  var paragraphGlyphRange: NSRange { get }
  var paragraphSeparatorGlyphRange: NSRange { get }
  var paragraphCharacterRange: NSRange { get }
  var paragraphSeparatorCharacterRange: NSRange { get }
  func layoutParagraph(at lineFragmentOrigin: NSPointPointer) -> Int
  func beginParagraph()
  func endParagraph()
  func beginLine(withGlyphAt glyphIndex: Int)
  func endLine(withGlyphRange lineGlyphRange: NSRange)
  func lineSpacing(afterGlyphAt glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  func paragraphSpacing(beforeGlyphAt glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  func paragraphSpacing(afterGlyphAt glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  func getLineFragmentRect(_ lineFragmentRect: NSRectPointer, usedRect lineFragmentUsedRect: NSRectPointer, forParagraphSeparatorGlyphRange paragraphSeparatorGlyphRange: NSRange, atProposedOrigin lineOrigin: NSPoint)
  var attributesForExtraLineFragment: [NSAttributedString.Key : Any] { get }
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager? { get }
  unowned(unsafe) var textContainers: @sil_unmanaged NSArray? { get }
  unowned(unsafe) var currentTextContainer: @sil_unmanaged NSTextContainer? { get }
  @NSCopying var currentParagraphStyle: NSParagraphStyle? { get }
  func setHardInvalidation(_ flag: Bool, forGlyphRange glyphRange: NSRange)
  func layoutGlyphs(in layoutManager: NSLayoutManager, startingAtGlyphIndex startGlyphIndex: Int, maxNumberOfLineFragments maxNumLines: Int, nextGlyphIndex nextGlyph: UnsafeMutablePointer<Int>)
  @available(macOS 10.5, *)
  func layoutCharacters(in characterRange: NSRange, for layoutManager: NSLayoutManager, maximumNumberOfLineFragments maxNumLines: Int) -> NSRange
  class func printingAdjustment(in layoutMgr: NSLayoutManager, forNominallySpacedGlyphRange nominallySpacedGlyphsRange: NSRange, packedGlyphs: UnsafePointer<UInt8>, count packedGlyphsCount: Int) -> NSSize
  func baselineOffset(in layoutMgr: NSLayoutManager, glyphIndex: Int) -> CGFloat
  class var sharedSystemTypesetter: NSTypesetter { get }
  class func sharedSystemTypesetter(for behavior: NSLayoutManager.TypesetterBehavior) -> Any
  class var defaultTypesetterBehavior: NSLayoutManager.TypesetterBehavior { get }
}
extension NSTypesetter {
  func willSetLineFragmentRect(_ lineRect: NSRectPointer, forGlyphRange glyphRange: NSRange, usedRect: NSRectPointer, baselineOffset: UnsafeMutablePointer<CGFloat>)
  func shouldBreakLine(byWordBeforeCharacterAt charIndex: Int) -> Bool
  func shouldBreakLine(byHyphenatingBeforeCharacterAt charIndex: Int) -> Bool
  func hyphenationFactor(forGlyphAt glyphIndex: Int) -> Float
  func hyphenCharacter(forGlyphAt glyphIndex: Int) -> UTF32Char
  func boundingBox(forControlGlyphAt glyphIndex: Int, for textContainer: NSTextContainer, proposedLineFragment proposedRect: NSRect, glyphPosition: NSPoint, characterIndex charIndex: Int) -> NSRect
}
extension NSTypesetter {
  func characterRange(forGlyphRange glyphRange: NSRange, actualGlyphRange: NSRangePointer?) -> NSRange
  func glyphRange(forCharacterRange charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer?) -> NSRange
  func getLineFragmentRect(_ lineFragmentRect: NSRectPointer!, usedRect lineFragmentUsedRect: NSRectPointer!, remaining remainingRect: NSRectPointer!, forStartingGlyphAt startingGlyphIndex: Int, proposedRect: NSRect, lineSpacing: CGFloat, paragraphSpacingBefore: CGFloat, paragraphSpacingAfter: CGFloat)
  func setLineFragmentRect(_ fragmentRect: NSRect, forGlyphRange glyphRange: NSRange, usedRect: NSRect, baselineOffset: CGFloat)
  func setNotShownAttribute(_ flag: Bool, forGlyphRange glyphRange: NSRange)
  func setDrawsOutsideLineFragment(_ flag: Bool, forGlyphRange glyphRange: NSRange)
  func setLocation(_ location: NSPoint, withAdvancements advancements: UnsafePointer<CGFloat>!, forStartOfGlyphRange glyphRange: NSRange)
  func setAttachmentSize(_ attachmentSize: NSSize, forGlyphRange glyphRange: NSRange)
  func setBidiLevels(_ levels: UnsafePointer<UInt8>!, forGlyphRange glyphRange: NSRange)
}
struct NSTypesetterControlCharacterAction : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var zeroAdvancementAction: NSTypesetterControlCharacterAction { get }
  static var whitespaceAction: NSTypesetterControlCharacterAction { get }
  static var horizontalTabAction: NSTypesetterControlCharacterAction { get }
  static var lineBreakAction: NSTypesetterControlCharacterAction { get }
  static var paragraphBreakAction: NSTypesetterControlCharacterAction { get }
  static var containerBreakAction: NSTypesetterControlCharacterAction { get }
}
extension NSTypesetter {
  func actionForControlCharacter(at charIndex: Int) -> NSTypesetterControlCharacterAction
  @available(macOS, introduced: 10.3, deprecated: 10.13)
  func getGlyphs(in glyphsRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<NSGlyph>!, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>!, glyphInscriptions inscribeBuffer: UnsafeMutablePointer<NSGlyphInscription>!, elasticBits elasticBuffer: UnsafeMutablePointer<ObjCBool>!, bidiLevels bidiLevelBuffer: UnsafeMutablePointer<UInt8>!) -> Int
  @available(macOS, introduced: 10.3, deprecated: 10.13)
  func substituteGlyphs(in glyphRange: NSRange, withGlyphs glyphs: UnsafeMutablePointer<NSGlyph>!)
  @available(macOS, introduced: 10.3, deprecated: 10.13)
  func insertGlyph(_ glyph: NSGlyph, atGlyphIndex glyphIndex: Int, characterIndex: Int)
  @available(macOS, introduced: 10.3, deprecated: 10.13)
  func deleteGlyphs(in glyphRange: NSRange)
}
