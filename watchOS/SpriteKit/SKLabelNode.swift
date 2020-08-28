
@available(watchOS 2.0, *)
enum SKLabelVerticalAlignmentMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case baseline
  case center
  case top
  case bottom
}
@available(watchOS 2.0, *)
enum SKLabelHorizontalAlignmentMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case center
  case left
  case right
}
class SKLabelNode : SKNode {
  convenience init(text: String?)
  @available(watchOS 4.0, *)
  convenience init(attributedText: NSAttributedString?)
  init(fontNamed fontName: String?)
  var verticalAlignmentMode: SKLabelVerticalAlignmentMode
  var horizontalAlignmentMode: SKLabelHorizontalAlignmentMode
  @available(watchOS 4.0, *)
  var numberOfLines: Int
  @available(watchOS 4.0, *)
  var lineBreakMode: NSLineBreakMode
  @available(watchOS 4.0, *)
  var preferredMaxLayoutWidth: CGFloat
  var fontName: String?
  var text: String?
  @available(watchOS 4.0, *)
  @NSCopying var attributedText: NSAttributedString?
  var fontSize: CGFloat
  var fontColor: UIColor?
  var colorBlendFactor: CGFloat
  var color: UIColor?
  var blendMode: SKBlendMode
}
