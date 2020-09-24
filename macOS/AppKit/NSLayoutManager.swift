
extension NSLayoutManager {
  @available(macOS 10.0, *)
  enum TextLayoutOrientation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case horizontal
    case vertical
  }
  @available(macOS 10.11, *)
  struct GlyphProperty : OptionSet {
    init(rawValue: Int)
    let rawValue: Int
    static var null: NSLayoutManager.GlyphProperty { get }
    static var controlCharacter: NSLayoutManager.GlyphProperty { get }
    static var elastic: NSLayoutManager.GlyphProperty { get }
    static var nonBaseCharacter: NSLayoutManager.GlyphProperty { get }
  }
  @available(macOS 10.11, *)
  struct ControlCharacterAction : OptionSet {
    init(rawValue: Int)
    let rawValue: Int
    static var zeroAdvancement: NSLayoutManager.ControlCharacterAction { get }
    static var whitespace: NSLayoutManager.ControlCharacterAction { get }
    static var horizontalTab: NSLayoutManager.ControlCharacterAction { get }
    static var lineBreak: NSLayoutManager.ControlCharacterAction { get }
    static var paragraphBreak: NSLayoutManager.ControlCharacterAction { get }
    static var containerBreak: NSLayoutManager.ControlCharacterAction { get }
  }
  enum TypesetterBehavior : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case latestBehavior
    case originalBehavior
    case behavior_10_2_WithCompatibility
    case behavior_10_2
    case behavior_10_3
    case behavior_10_4
  }
}
protocol NSTextLayoutOrientationProvider {
  @available(macOS 10.7, *)
  var layoutOrientation: NSLayoutManager.TextLayoutOrientation { get }
}
@available(macOS 10.7, *)
class NSLayoutManager : NSObject, NSSecureCoding {
  unowned(unsafe) var textStorage: @sil_unmanaged NSTextStorage?
  func replaceTextStorage(_ newTextStorage: NSTextStorage)
  var textContainers: [NSTextContainer] { get }
  func addTextContainer(_ container: NSTextContainer)
  func insertTextContainer(_ container: NSTextContainer, at index: Int)
  func removeTextContainer(at index: Int)
  func textContainerChangedGeometry(_ container: NSTextContainer)
  func textContainerChangedTextView(_ container: NSTextContainer)
  weak var delegate: @sil_weak NSLayoutManagerDelegate?
  var showsInvisibleCharacters: Bool
  var showsControlCharacters: Bool
  @available(macOS 10.15, *)
  var usesDefaultHyphenation: Bool
  var usesFontLeading: Bool
  @available(macOS 10.5, *)
  var allowsNonContiguousLayout: Bool
  @available(macOS 10.5, *)
  var hasNonContiguousLayout: Bool { get }
  @available(macOS 10.14, *)
  var limitsLayoutForSuspiciousContents: Bool
  var backgroundLayoutEnabled: Bool
  var defaultAttachmentScaling: NSImageScaling
  var typesetter: NSTypesetter
  var typesetterBehavior: NSLayoutManager.TypesetterBehavior
  func invalidateGlyphs(forCharacterRange charRange: NSRange, changeInLength delta: Int, actualCharacterRange actualCharRange: NSRangePointer?)
  @available(macOS 10.5, *)
  func invalidateLayout(forCharacterRange charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer?)
  func invalidateDisplay(forCharacterRange charRange: NSRange)
  func invalidateDisplay(forGlyphRange glyphRange: NSRange)
  @available(macOS 10.11, *)
  func processEditing(for textStorage: NSTextStorage, edited editMask: NSTextStorageEditActions, range newCharRange: NSRange, changeInLength delta: Int, invalidatedRange invalidatedCharRange: NSRange)
  func ensureGlyphs(forCharacterRange charRange: NSRange)
  func ensureGlyphs(forGlyphRange glyphRange: NSRange)
  func ensureLayout(forCharacterRange charRange: NSRange)
  func ensureLayout(forGlyphRange glyphRange: NSRange)
  func ensureLayout(for container: NSTextContainer)
  func ensureLayout(forBoundingRect bounds: NSRect, in container: NSTextContainer)
  @available(macOS 10.11, *)
  func setGlyphs(_ glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSLayoutManager.GlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: NSFont, forGlyphRange glyphRange: NSRange)
  var numberOfGlyphs: Int { get }
  @available(macOS 10.11, *)
  func cgGlyph(at glyphIndex: Int, isValidIndex: UnsafeMutablePointer<ObjCBool>?) -> CGGlyph
  @available(macOS 10.11, *)
  func cgGlyph(at glyphIndex: Int) -> CGGlyph
  @available(macOS 10.0, *)
  func isValidGlyphIndex(_ glyphIndex: Int) -> Bool
  @available(macOS 10.5, *)
  func propertyForGlyph(at glyphIndex: Int) -> NSLayoutManager.GlyphProperty
  func characterIndexForGlyph(at glyphIndex: Int) -> Int
  func glyphIndexForCharacter(at charIndex: Int) -> Int
  @available(macOS 10.5, *)
  func getGlyphs(in glyphRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<CGGlyph>?, properties props: UnsafeMutablePointer<NSLayoutManager.GlyphProperty>?, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>?, bidiLevels bidiLevelBuffer: UnsafeMutablePointer<UInt8>?) -> Int
  func setTextContainer(_ container: NSTextContainer, forGlyphRange glyphRange: NSRange)
  func setLineFragmentRect(_ fragmentRect: NSRect, forGlyphRange glyphRange: NSRange, usedRect: NSRect)
  func setExtraLineFragmentRect(_ fragmentRect: NSRect, usedRect: NSRect, textContainer container: NSTextContainer)
  func setLocation(_ location: NSPoint, forStartOfGlyphRange glyphRange: NSRange)
  func setNotShownAttribute(_ flag: Bool, forGlyphAt glyphIndex: Int)
  func setDrawsOutsideLineFragment(_ flag: Bool, forGlyphAt glyphIndex: Int)
  func setAttachmentSize(_ attachmentSize: NSSize, forGlyphRange glyphRange: NSRange)
  func getFirstUnlaidCharacterIndex(_ charIndex: UnsafeMutablePointer<Int>?, glyphIndex: UnsafeMutablePointer<Int>?)
  func firstUnlaidCharacterIndex() -> Int
  func firstUnlaidGlyphIndex() -> Int
  func textContainer(forGlyphAt glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer?) -> NSTextContainer?
  @available(macOS 10.0, *)
  func textContainer(forGlyphAt glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer?, withoutAdditionalLayout flag: Bool) -> NSTextContainer?
  func usedRect(for container: NSTextContainer) -> NSRect
  func lineFragmentRect(forGlyphAt glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer?) -> NSRect
  @available(macOS 10.0, *)
  func lineFragmentRect(forGlyphAt glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer?, withoutAdditionalLayout flag: Bool) -> NSRect
  func lineFragmentUsedRect(forGlyphAt glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer?) -> NSRect
  @available(macOS 10.0, *)
  func lineFragmentUsedRect(forGlyphAt glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer?, withoutAdditionalLayout flag: Bool) -> NSRect
  var extraLineFragmentRect: NSRect { get }
  var extraLineFragmentUsedRect: NSRect { get }
  var extraLineFragmentTextContainer: NSTextContainer? { get }
  func location(forGlyphAt glyphIndex: Int) -> NSPoint
  func notShownAttribute(forGlyphAt glyphIndex: Int) -> Bool
  func drawsOutsideLineFragment(forGlyphAt glyphIndex: Int) -> Bool
  func attachmentSize(forGlyphAt glyphIndex: Int) -> NSSize
  @available(macOS 10.11, *)
  func truncatedGlyphRange(inLineFragmentForGlyphAt glyphIndex: Int) -> NSRange
  func glyphRange(forCharacterRange charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer?) -> NSRange
  func characterRange(forGlyphRange glyphRange: NSRange, actualGlyphRange: NSRangePointer?) -> NSRange
  func glyphRange(for container: NSTextContainer) -> NSRange
  func range(ofNominallySpacedGlyphsContaining glyphIndex: Int) -> NSRange
  func boundingRect(forGlyphRange glyphRange: NSRange, in container: NSTextContainer) -> NSRect
  func glyphRange(forBoundingRect bounds: NSRect, in container: NSTextContainer) -> NSRange
  func glyphRange(forBoundingRectWithoutAdditionalLayout bounds: NSRect, in container: NSTextContainer) -> NSRange
  func glyphIndex(for point: NSPoint, in container: NSTextContainer, fractionOfDistanceThroughGlyph partialFraction: UnsafeMutablePointer<CGFloat>?) -> Int
  func glyphIndex(for point: NSPoint, in container: NSTextContainer) -> Int
  func fractionOfDistanceThroughGlyph(for point: NSPoint, in container: NSTextContainer) -> CGFloat
  func characterIndex(for point: NSPoint, in container: NSTextContainer, fractionOfDistanceBetweenInsertionPoints partialFraction: UnsafeMutablePointer<CGFloat>?) -> Int
  func getLineFragmentInsertionPoints(forCharacterAt charIndex: Int, alternatePositions aFlag: Bool, inDisplayOrder dFlag: Bool, positions: UnsafeMutablePointer<CGFloat>?, characterIndexes charIndexes: UnsafeMutablePointer<Int>?) -> Int
  @available(macOS 10.11, *)
  func enumerateLineFragments(forGlyphRange glyphRange: NSRange, using block: @escaping (NSRect, NSRect, NSTextContainer, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(macOS 10.11, *)
  func enumerateEnclosingRects(forGlyphRange glyphRange: NSRange, withinSelectedGlyphRange selectedRange: NSRange, in textContainer: NSTextContainer, using block: @escaping (NSRect, UnsafeMutablePointer<ObjCBool>) -> Void)
  func drawBackground(forGlyphRange glyphsToShow: NSRange, at origin: NSPoint)
  func drawGlyphs(forGlyphRange glyphsToShow: NSRange, at origin: NSPoint)
  @available(macOS 10.15, *)
  func showCGGlyphs(_ glyphs: UnsafePointer<CGGlyph>, positions: UnsafePointer<CGPoint>, count glyphCount: Int, font: NSFont, textMatrix: CGAffineTransform, attributes: [NSAttributedString.Key : Any] = [:], in CGContext: CGContext)
  @available(macOS 10.6, *)
  func fillBackgroundRectArray(_ rectArray: UnsafePointer<NSRect>, count rectCount: Int, forCharacterRange charRange: NSRange, color: NSColor)
  func drawUnderline(forGlyphRange glyphRange: NSRange, underlineType underlineVal: NSUnderlineStyle, baselineOffset: CGFloat, lineFragmentRect lineRect: NSRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: NSPoint)
  func underlineGlyphRange(_ glyphRange: NSRange, underlineType underlineVal: NSUnderlineStyle, lineFragmentRect lineRect: NSRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: NSPoint)
  func drawStrikethrough(forGlyphRange glyphRange: NSRange, strikethroughType strikethroughVal: NSUnderlineStyle, baselineOffset: CGFloat, lineFragmentRect lineRect: NSRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: NSPoint)
  func strikethroughGlyphRange(_ glyphRange: NSRange, strikethroughType strikethroughVal: NSUnderlineStyle, lineFragmentRect lineRect: NSRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: NSPoint)
  func showAttachmentCell(_ cell: NSCell, in rect: NSRect, characterIndex attachmentIndex: Int)
  func setLayoutRect(_ rect: NSRect, for block: NSTextBlock, glyphRange: NSRange)
  func setBoundsRect(_ rect: NSRect, for block: NSTextBlock, glyphRange: NSRange)
  func layoutRect(for block: NSTextBlock, glyphRange: NSRange) -> NSRect
  func boundsRect(for block: NSTextBlock, glyphRange: NSRange) -> NSRect
  func layoutRect(for block: NSTextBlock, at glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer?) -> NSRect
  func boundsRect(for block: NSTextBlock, at glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer?) -> NSRect
  func temporaryAttributes(atCharacterIndex charIndex: Int, effectiveRange effectiveCharRange: NSRangePointer?) -> [NSAttributedString.Key : Any]
  func setTemporaryAttributes(_ attrs: [NSAttributedString.Key : Any], forCharacterRange charRange: NSRange)
  func addTemporaryAttributes(_ attrs: [NSAttributedString.Key : Any] = [:], forCharacterRange charRange: NSRange)
  func removeTemporaryAttribute(_ attrName: NSAttributedString.Key, forCharacterRange charRange: NSRange)
  @available(macOS 10.5, *)
  func temporaryAttribute(_ attrName: NSAttributedString.Key, atCharacterIndex location: Int, effectiveRange range: NSRangePointer?) -> Any?
  @available(macOS 10.5, *)
  func temporaryAttribute(_ attrName: NSAttributedString.Key, atCharacterIndex location: Int, longestEffectiveRange range: NSRangePointer?, in rangeLimit: NSRange) -> Any?
  @available(macOS 10.5, *)
  func temporaryAttributes(atCharacterIndex location: Int, longestEffectiveRange range: NSRangePointer?, in rangeLimit: NSRange) -> [NSAttributedString.Key : Any]
  @available(macOS 10.5, *)
  func addTemporaryAttribute(_ attrName: NSAttributedString.Key, value: Any, forCharacterRange charRange: NSRange)
  func defaultLineHeight(for theFont: NSFont) -> CGFloat
  func defaultBaselineOffset(for theFont: NSFont) -> CGFloat
}
extension NSLayoutManager {
  func rulerMarkers(for view: NSTextView, paragraphStyle style: NSParagraphStyle, ruler: NSRulerView) -> [NSRulerMarker]
  func rulerAccessoryView(for view: NSTextView, paragraphStyle style: NSParagraphStyle, ruler: NSRulerView, enabled isEnabled: Bool) -> NSView?
  func layoutManagerOwnsFirstResponder(in window: NSWindow) -> Bool
  unowned(unsafe) var firstTextView: @sil_unmanaged NSTextView? { get }
  unowned(unsafe) var textViewForBeginningOfSelection: @sil_unmanaged NSTextView? { get }
}
protocol NSLayoutManagerDelegate : NSObjectProtocol {
  @available(macOS 10.11, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldGenerateGlyphs glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSLayoutManager.GlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: NSFont, forGlyphRange glyphRange: NSRange) -> Int
  @available(macOS 10.11, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, lineSpacingAfterGlyphAt glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  @available(macOS 10.11, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, paragraphSpacingBeforeGlyphAt glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  @available(macOS 10.11, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, paragraphSpacingAfterGlyphAt glyphIndex: Int, withProposedLineFragmentRect rect: NSRect) -> CGFloat
  @available(macOS 10.11, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldUse action: NSLayoutManager.ControlCharacterAction, forControlCharacterAt charIndex: Int) -> NSLayoutManager.ControlCharacterAction
  @available(macOS 10.11, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldBreakLineByWordBeforeCharacterAt charIndex: Int) -> Bool
  @available(macOS 10.11, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldBreakLineByHyphenatingBeforeCharacterAt charIndex: Int) -> Bool
  @available(macOS 10.11, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, boundingBoxForControlGlyphAt glyphIndex: Int, for textContainer: NSTextContainer, proposedLineFragment proposedRect: NSRect, glyphPosition: NSPoint, characterIndex charIndex: Int) -> NSRect
  @available(macOS 10.11, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldSetLineFragmentRect lineFragmentRect: UnsafeMutablePointer<NSRect>, lineFragmentUsedRect: UnsafeMutablePointer<NSRect>, baselineOffset: UnsafeMutablePointer<CGFloat>, in textContainer: NSTextContainer, forGlyphRange glyphRange: NSRange) -> Bool
  @available(macOS 10.0, *)
  @asyncHandler optional func layoutManagerDidInvalidateLayout(_ sender: NSLayoutManager)
  @available(macOS 10.0, *)
  @asyncHandler optional func layoutManager(_ layoutManager: NSLayoutManager, didCompleteLayoutFor textContainer: NSTextContainer?, atEnd layoutFinishedFlag: Bool)
  @available(macOS 10.11, *)
  @asyncHandler optional func layoutManager(_ layoutManager: NSLayoutManager, textContainer: NSTextContainer, didChangeGeometryFrom oldSize: NSSize)
  @available(macOS 10.5, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldUseTemporaryAttributes attrs: [NSAttributedString.Key : Any] = [:], forDrawingToScreen toScreen: Bool, atCharacterIndex charIndex: Int, effectiveRange effectiveCharRange: NSRangePointer?) -> [NSAttributedString.Key : Any]?
}
@available(macOS, introduced: 10.0, deprecated: 10.11)
var NSGlyphAttributeSoft: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.11)
var NSGlyphAttributeElastic: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.11)
var NSGlyphAttributeBidiLevel: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.11)
var NSGlyphAttributeInscribe: Int { get }
extension NSLayoutManager {
  func glyph(at glyphIndex: Int, isValidIndex: UnsafeMutablePointer<ObjCBool>?) -> NSGlyph
  func glyph(at glyphIndex: Int) -> NSGlyph
  func rectArray(forCharacterRange charRange: NSRange, withinSelectedCharacterRange selCharRange: NSRange, in container: NSTextContainer, rectCount: UnsafeMutablePointer<Int>) -> NSRectArray?
  func rectArray(forGlyphRange glyphRange: NSRange, withinSelectedGlyphRange selGlyphRange: NSRange, in container: NSTextContainer, rectCount: UnsafeMutablePointer<Int>) -> NSRectArray?
  @available(macOS, introduced: 10.0, deprecated: 10.11)
  var usesScreenFonts: Bool
  @available(macOS, introduced: 10.0, deprecated: 10.11)
  func substituteFont(for originalFont: NSFont) -> NSFont
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func insertGlyphs(_ glyphs: UnsafePointer<NSGlyph>, length: Int, forStartingGlyphAt glyphIndex: Int, characterIndex charIndex: Int)
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func insertGlyph(_ glyph: NSGlyph, atGlyphIndex glyphIndex: Int, characterIndex charIndex: Int)
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func replaceGlyph(at glyphIndex: Int, withGlyph newGlyph: NSGlyph)
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func deleteGlyphs(in glyphRange: NSRange)
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func setCharacterIndex(_ charIndex: Int, forGlyphAt glyphIndex: Int)
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func setIntAttribute(_ attributeTag: Int, value val: Int, forGlyphAt glyphIndex: Int)
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Use -setGlyphs:properties:characterIndexes:font:forGlyphRange instead")
  func invalidateGlyphs(onLayoutInvalidationForGlyphRange glyphRange: NSRange)
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -getGlyphsInRange:glyphs:properties:characterIndexes:bidiLevels: instead")
  func intAttribute(_ attributeTag: Int, forGlyphAt glyphIndex: Int) -> Int
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -getGlyphsInRange:glyphs:properties:characterIndexes:bidiLevels: instead")
  func getGlyphs(in glyphRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<NSGlyph>?, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>?, glyphInscriptions inscribeBuffer: UnsafeMutablePointer<NSGlyphInscription>?, elasticBits elasticBuffer: UnsafeMutablePointer<ObjCBool>?) -> Int
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -getGlyphsInRange:glyphs:properties:characterIndexes:bidiLevels: instead")
  func getGlyphs(in glyphRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<NSGlyph>?, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>?, glyphInscriptions inscribeBuffer: UnsafeMutablePointer<NSGlyphInscription>?, elasticBits elasticBuffer: UnsafeMutablePointer<ObjCBool>?, bidiLevels bidiLevelBuffer: UnsafeMutablePointer<UInt8>?) -> Int
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -getGlyphsInRange:glyphs:properties:characterIndexes:bidiLevels: instead")
  func getGlyphs(_ glyphArray: UnsafeMutablePointer<NSGlyph>?, range glyphRange: NSRange) -> Int
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -invalidateLayoutForCharacterRange:actualCharacterRange: instead")
  func invalidateLayout(forCharacterRange charRange: NSRange, isSoft flag: Bool, actualCharacterRange actualCharRange: NSRangePointer?)
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "Use -processEditingForTextStorage:edited:range:changeInLength:invalidatedRange: instead")
  func textStorage(_ str: NSTextStorage, edited editedMask: Int, range newCharRange: NSRange, changeInLength delta: Int, invalidatedRange invalidatedCharRange: NSRange)
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Use -setLocation:forStartOfGlyphRange: instead")
  func setLocations(_ locations: NSPointArray, startingGlyphIndexes glyphIndexes: UnsafeMutablePointer<Int>, count: Int, forGlyphRange glyphRange: NSRange)
  @available(macOS, introduced: 10.7, deprecated: 10.15)
  func showCGGlyphs(_ glyphs: UnsafePointer<CGGlyph>, positions: UnsafePointer<NSPoint>, count glyphCount: Int, font: NSFont, matrix textMatrix: AffineTransform, attributes: [NSAttributedString.Key : Any] = [:], in graphicsContext: NSGraphicsContext)
  @available(macOS, introduced: 10.0, deprecated: 10.15, message: "Please use usesDefaultHyphenation or -[NSParagraphStyle hyphenationFactor] instead.")
  var hyphenationFactor: Float
}
extension NSLayoutManager : NSGlyphStorage {
  var glyphGenerator: NSGlyphGenerator
}
