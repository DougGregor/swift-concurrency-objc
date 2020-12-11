
var __NSLAYOUT_MANAGER_SHARED_SECTION__: Int32 { get }
extension NSLayoutManager {
  @available(iOS 7.0, *)
  enum TextLayoutOrientation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case horizontal
    case vertical
  }
  @available(iOS 7.0, *)
  struct GlyphProperty : OptionSet {
    init(rawValue: Int)
    let rawValue: Int
    static var null: NSLayoutManager.GlyphProperty { get }
    static var controlCharacter: NSLayoutManager.GlyphProperty { get }
    static var elastic: NSLayoutManager.GlyphProperty { get }
    static var nonBaseCharacter: NSLayoutManager.GlyphProperty { get }
  }
  @available(iOS 7.0, *)
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
}
protocol NSTextLayoutOrientationProvider {
  @available(iOS 7.0, *)
  var layoutOrientation: NSLayoutManager.TextLayoutOrientation { get }
}
@available(iOS 7.0, *)
class NSLayoutManager : NSObject, NSSecureCoding {
  unowned(unsafe) var textStorage: @sil_unmanaged NSTextStorage?
  var textContainers: [NSTextContainer] { get }
  func addTextContainer(_ container: NSTextContainer)
  func insertTextContainer(_ container: NSTextContainer, at index: Int)
  func removeTextContainer(at index: Int)
  func textContainerChangedGeometry(_ container: NSTextContainer)
  weak var delegate: @sil_weak NSLayoutManagerDelegate?
  var showsInvisibleCharacters: Bool
  var showsControlCharacters: Bool
  var usesFontLeading: Bool
  @available(iOS 7.0, *)
  var allowsNonContiguousLayout: Bool
  @available(iOS 7.0, *)
  var hasNonContiguousLayout: Bool { get }
  @available(iOS 12.0, *)
  var limitsLayoutForSuspiciousContents: Bool
  @available(iOS 13.0, *)
  var usesDefaultHyphenation: Bool
  func invalidateGlyphs(forCharacterRange charRange: NSRange, changeInLength delta: Int, actualCharacterRange actualCharRange: NSRangePointer?)
  @available(iOS 7.0, *)
  func invalidateLayout(forCharacterRange charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer?)
  func invalidateDisplay(forCharacterRange charRange: NSRange)
  func invalidateDisplay(forGlyphRange glyphRange: NSRange)
  @available(iOS 7.0, *)
  func processEditing(for textStorage: NSTextStorage, edited editMask: NSTextStorage.EditActions, range newCharRange: NSRange, changeInLength delta: Int, invalidatedRange invalidatedCharRange: NSRange)
  func ensureGlyphs(forCharacterRange charRange: NSRange)
  func ensureGlyphs(forGlyphRange glyphRange: NSRange)
  func ensureLayout(forCharacterRange charRange: NSRange)
  func ensureLayout(forGlyphRange glyphRange: NSRange)
  func ensureLayout(for container: NSTextContainer)
  func ensureLayout(forBoundingRect bounds: CGRect, in container: NSTextContainer)
  @available(iOS 7.0, *)
  func setGlyphs(_ glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSLayoutManager.GlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: UIFont, forGlyphRange glyphRange: NSRange)
  var numberOfGlyphs: Int { get }
  @available(iOS 7.0, *)
  func cgGlyph(at glyphIndex: Int, isValidIndex: UnsafeMutablePointer<ObjCBool>?) -> CGGlyph
  @available(iOS 7.0, *)
  func cgGlyph(at glyphIndex: Int) -> CGGlyph
  @available(iOS 7.0, *)
  func isValidGlyphIndex(_ glyphIndex: Int) -> Bool
  @available(iOS 7.0, *)
  func propertyForGlyph(at glyphIndex: Int) -> NSLayoutManager.GlyphProperty
  func characterIndexForGlyph(at glyphIndex: Int) -> Int
  func glyphIndexForCharacter(at charIndex: Int) -> Int
  @available(iOS 7.0, *)
  func getGlyphs(in glyphRange: NSRange, glyphs glyphBuffer: UnsafeMutablePointer<CGGlyph>?, properties props: UnsafeMutablePointer<NSLayoutManager.GlyphProperty>?, characterIndexes charIndexBuffer: UnsafeMutablePointer<Int>?, bidiLevels bidiLevelBuffer: UnsafeMutablePointer<UInt8>?) -> Int
  func setTextContainer(_ container: NSTextContainer, forGlyphRange glyphRange: NSRange)
  func setLineFragmentRect(_ fragmentRect: CGRect, forGlyphRange glyphRange: NSRange, usedRect: CGRect)
  func setExtraLineFragmentRect(_ fragmentRect: CGRect, usedRect: CGRect, textContainer container: NSTextContainer)
  func setLocation(_ location: CGPoint, forStartOfGlyphRange glyphRange: NSRange)
  func setNotShownAttribute(_ flag: Bool, forGlyphAt glyphIndex: Int)
  func setDrawsOutsideLineFragment(_ flag: Bool, forGlyphAt glyphIndex: Int)
  func setAttachmentSize(_ attachmentSize: CGSize, forGlyphRange glyphRange: NSRange)
  func getFirstUnlaidCharacterIndex(_ charIndex: UnsafeMutablePointer<Int>?, glyphIndex: UnsafeMutablePointer<Int>?)
  func firstUnlaidCharacterIndex() -> Int
  func firstUnlaidGlyphIndex() -> Int
  func textContainer(forGlyphAt glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer?) -> NSTextContainer?
  @available(iOS 9.0, *)
  func textContainer(forGlyphAt glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer?, withoutAdditionalLayout flag: Bool) -> NSTextContainer?
  func usedRect(for container: NSTextContainer) -> CGRect
  func lineFragmentRect(forGlyphAt glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer?) -> CGRect
  @available(iOS 9.0, *)
  func lineFragmentRect(forGlyphAt glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer?, withoutAdditionalLayout flag: Bool) -> CGRect
  func lineFragmentUsedRect(forGlyphAt glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer?) -> CGRect
  @available(iOS 9.0, *)
  func lineFragmentUsedRect(forGlyphAt glyphIndex: Int, effectiveRange effectiveGlyphRange: NSRangePointer?, withoutAdditionalLayout flag: Bool) -> CGRect
  var extraLineFragmentRect: CGRect { get }
  var extraLineFragmentUsedRect: CGRect { get }
  var extraLineFragmentTextContainer: NSTextContainer? { get }
  func location(forGlyphAt glyphIndex: Int) -> CGPoint
  func notShownAttribute(forGlyphAt glyphIndex: Int) -> Bool
  func drawsOutsideLineFragment(forGlyphAt glyphIndex: Int) -> Bool
  func attachmentSize(forGlyphAt glyphIndex: Int) -> CGSize
  @available(iOS 7.0, *)
  func truncatedGlyphRange(inLineFragmentForGlyphAt glyphIndex: Int) -> NSRange
  func glyphRange(forCharacterRange charRange: NSRange, actualCharacterRange actualCharRange: NSRangePointer?) -> NSRange
  func characterRange(forGlyphRange glyphRange: NSRange, actualGlyphRange: NSRangePointer?) -> NSRange
  func glyphRange(for container: NSTextContainer) -> NSRange
  func range(ofNominallySpacedGlyphsContaining glyphIndex: Int) -> NSRange
  func boundingRect(forGlyphRange glyphRange: NSRange, in container: NSTextContainer) -> CGRect
  func glyphRange(forBoundingRect bounds: CGRect, in container: NSTextContainer) -> NSRange
  func glyphRange(forBoundingRectWithoutAdditionalLayout bounds: CGRect, in container: NSTextContainer) -> NSRange
  func glyphIndex(for point: CGPoint, in container: NSTextContainer, fractionOfDistanceThroughGlyph partialFraction: UnsafeMutablePointer<CGFloat>?) -> Int
  func glyphIndex(for point: CGPoint, in container: NSTextContainer) -> Int
  func fractionOfDistanceThroughGlyph(for point: CGPoint, in container: NSTextContainer) -> CGFloat
  func characterIndex(for point: CGPoint, in container: NSTextContainer, fractionOfDistanceBetweenInsertionPoints partialFraction: UnsafeMutablePointer<CGFloat>?) -> Int
  func getLineFragmentInsertionPoints(forCharacterAt charIndex: Int, alternatePositions aFlag: Bool, inDisplayOrder dFlag: Bool, positions: UnsafeMutablePointer<CGFloat>?, characterIndexes charIndexes: UnsafeMutablePointer<Int>?) -> Int
  @available(iOS 7.0, *)
  func enumerateLineFragments(forGlyphRange glyphRange: NSRange, using block: @escaping (CGRect, CGRect, NSTextContainer, NSRange, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 7.0, *)
  func enumerateEnclosingRects(forGlyphRange glyphRange: NSRange, withinSelectedGlyphRange selectedRange: NSRange, in textContainer: NSTextContainer, using block: @escaping (CGRect, UnsafeMutablePointer<ObjCBool>) -> Void)
  func drawBackground(forGlyphRange glyphsToShow: NSRange, at origin: CGPoint)
  func drawGlyphs(forGlyphRange glyphsToShow: NSRange, at origin: CGPoint)
  @available(iOS 13.0, *)
  func showCGGlyphs(_ glyphs: UnsafePointer<CGGlyph>, positions: UnsafePointer<CGPoint>, count glyphCount: Int, font: UIFont, textMatrix: CGAffineTransform, attributes: [NSAttributedString.Key : Any] = [:], in CGContext: CGContext)
  @available(iOS 7.0, *)
  func fillBackgroundRectArray(_ rectArray: UnsafePointer<CGRect>, count rectCount: Int, forCharacterRange charRange: NSRange, color: UIColor)
  func drawUnderline(forGlyphRange glyphRange: NSRange, underlineType underlineVal: NSUnderlineStyle, baselineOffset: CGFloat, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: CGPoint)
  func underlineGlyphRange(_ glyphRange: NSRange, underlineType underlineVal: NSUnderlineStyle, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: CGPoint)
  func drawStrikethrough(forGlyphRange glyphRange: NSRange, strikethroughType strikethroughVal: NSUnderlineStyle, baselineOffset: CGFloat, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: CGPoint)
  func strikethroughGlyphRange(_ glyphRange: NSRange, strikethroughType strikethroughVal: NSUnderlineStyle, lineFragmentRect lineRect: CGRect, lineFragmentGlyphRange lineGlyphRange: NSRange, containerOrigin: CGPoint)
}
protocol NSLayoutManagerDelegate : NSObjectProtocol {
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldGenerateGlyphs glyphs: UnsafePointer<CGGlyph>, properties props: UnsafePointer<NSLayoutManager.GlyphProperty>, characterIndexes charIndexes: UnsafePointer<Int>, font aFont: UIFont, forGlyphRange glyphRange: NSRange) -> Int
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, lineSpacingAfterGlyphAt glyphIndex: Int, withProposedLineFragmentRect rect: CGRect) -> CGFloat
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, paragraphSpacingBeforeGlyphAt glyphIndex: Int, withProposedLineFragmentRect rect: CGRect) -> CGFloat
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, paragraphSpacingAfterGlyphAt glyphIndex: Int, withProposedLineFragmentRect rect: CGRect) -> CGFloat
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldUse action: NSLayoutManager.ControlCharacterAction, forControlCharacterAt charIndex: Int) -> NSLayoutManager.ControlCharacterAction
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldBreakLineByWordBeforeCharacterAt charIndex: Int) -> Bool
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldBreakLineByHyphenatingBeforeCharacterAt charIndex: Int) -> Bool
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, boundingBoxForControlGlyphAt glyphIndex: Int, for textContainer: NSTextContainer, proposedLineFragment proposedRect: CGRect, glyphPosition: CGPoint, characterIndex charIndex: Int) -> CGRect
  @available(iOS 9.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, shouldSetLineFragmentRect lineFragmentRect: UnsafeMutablePointer<CGRect>, lineFragmentUsedRect: UnsafeMutablePointer<CGRect>, baselineOffset: UnsafeMutablePointer<CGFloat>, in textContainer: NSTextContainer, forGlyphRange glyphRange: NSRange) -> Bool
  @available(iOS 7.0, *)
  optional func layoutManagerDidInvalidateLayout(_ sender: NSLayoutManager)
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, didCompleteLayoutFor textContainer: NSTextContainer?, atEnd layoutFinishedFlag: Bool)
  @available(iOS 7.0, *)
  optional func layoutManager(_ layoutManager: NSLayoutManager, textContainer: NSTextContainer, didChangeGeometryFrom oldSize: CGSize)
}
@available(iOS, introduced: 7.0, deprecated: 9.0, message: "Use NSControlCharacterActionZeroAdvancement instead")
var NSControlCharacterZeroAdvancementAction: Int { get }
@available(iOS, introduced: 7.0, deprecated: 9.0, message: "Use NSControlCharacterActionWhitespace instead")
var NSControlCharacterWhitespaceAction: Int { get }
@available(iOS, introduced: 7.0, deprecated: 9.0, message: "Use NSControlCharacterActionHorizontalTab instead")
var NSControlCharacterHorizontalTabAction: Int { get }
@available(iOS, introduced: 7.0, deprecated: 9.0, message: "Use NSControlCharacterActionLineBreak instead")
var NSControlCharacterLineBreakAction: Int { get }
@available(iOS, introduced: 7.0, deprecated: 9.0, message: "Use NSControlCharacterActionParagraphBreak instead")
var NSControlCharacterParagraphBreakAction: Int { get }
@available(iOS, introduced: 7.0, deprecated: 9.0, message: "Use NSControlCharacterActionContainerBreak instead")
var NSControlCharacterContainerBreakAction: Int { get }
extension NSLayoutManager {
  func glyph(at glyphIndex: Int, isValidIndex: UnsafeMutablePointer<ObjCBool>?) -> CGGlyph
  func glyph(at glyphIndex: Int) -> CGGlyph
  @available(iOS, introduced: 7.0, deprecated: 13.0, message: "Please use usesDefaultHyphenation or -[NSParagraphStyle hyphenationFactor] instead.")
  var hyphenationFactor: CGFloat
  @available(iOS, introduced: 7.0, deprecated: 13.0)
  func showCGGlyphs(_ glyphs: UnsafePointer<CGGlyph>, positions: UnsafePointer<CGPoint>, count glyphCount: Int, font: UIFont, matrix textMatrix: CGAffineTransform, attributes: [NSAttributedString.Key : Any] = [:], in graphicsContext: CGContext)
}
