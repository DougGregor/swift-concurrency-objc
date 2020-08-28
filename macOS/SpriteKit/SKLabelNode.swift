
@available(macOS 10.9, *)
enum SKLabelVerticalAlignmentMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case baseline
  case center
  case top
  case bottom
}
@available(macOS 10.9, *)
enum SKLabelHorizontalAlignmentMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case center
  case left
  case right
}
class SKLabelNode : SKNode {
  convenience init(text: String?)
  @available(macOS 10.13, *)
  convenience init(attributedText: NSAttributedString?)
  init(fontNamed fontName: String?)
  var verticalAlignmentMode: SKLabelVerticalAlignmentMode
  var horizontalAlignmentMode: SKLabelHorizontalAlignmentMode
  @available(macOS 10.13, *)
  var numberOfLines: Int
  @available(macOS 10.13, *)
  var lineBreakMode: NSLineBreakMode
  @available(macOS 10.13, *)
  var preferredMaxLayoutWidth: CGFloat
  var fontName: String?
  var text: String?
  @available(macOS 10.13, *)
  @NSCopying var attributedText: NSAttributedString?
  var fontSize: CGFloat
  var fontColor: NSColor?
  var colorBlendFactor: CGFloat
  var color: NSColor?
  var blendMode: SKBlendMode
}
