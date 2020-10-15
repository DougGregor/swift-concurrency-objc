
extension UIAttachmentBehavior {
  @available(tvOS 7.0, *)
  enum AttachmentType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case items
    case anchor
  }
}
struct UIFloatRange {
  var minimum: CGFloat
  var maximum: CGFloat
  init()
  init(minimum: CGFloat, maximum: CGFloat)
}

extension UIFloatRange : Equatable {
}

extension UIFloatRange : Codable {
}
extension UIFloatRange {
  @available(tvOS 9.0, *)
  static let zero: UIFloatRange
  @available(tvOS 9.0, *)
  static let infinite: UIFloatRange
  @available(tvOS 9.0, *)
  var isInfinite: Bool { get }
  /*not inherited*/ init(minimum: CGFloat, maximum: CGFloat)
}
func __UIFloatRangeIsEqualToRange(_ range: UIFloatRange, _ otherRange: UIFloatRange) -> Bool
@available(tvOS 7.0, *)
class UIAttachmentBehavior : UIDynamicBehavior {
  convenience init(item: UIDynamicItem, attachedToAnchor point: CGPoint)
  init(item: UIDynamicItem, offsetFromCenter offset: UIOffset, attachedToAnchor point: CGPoint)
  convenience init(item item1: UIDynamicItem, attachedTo item2: UIDynamicItem)
  init(item item1: UIDynamicItem, offsetFromCenter offset1: UIOffset, attachedTo item2: UIDynamicItem, offsetFromCenter offset2: UIOffset)
  @available(tvOS 9.0, *)
  class func slidingAttachment(with item1: UIDynamicItem, attachedTo item2: UIDynamicItem, attachmentAnchor point: CGPoint, axisOfTranslation axis: CGVector) -> Self
  @available(tvOS 9.0, *)
  class func slidingAttachment(with item: UIDynamicItem, attachmentAnchor point: CGPoint, axisOfTranslation axis: CGVector) -> Self
  @available(tvOS 9.0, *)
  class func limitAttachment(with item1: UIDynamicItem, offsetFromCenter offset1: UIOffset, attachedTo item2: UIDynamicItem, offsetFromCenter offset2: UIOffset) -> Self
  @available(tvOS 9.0, *)
  class func fixedAttachment(with item1: UIDynamicItem, attachedTo item2: UIDynamicItem, attachmentAnchor point: CGPoint) -> Self
  @available(tvOS 9.0, *)
  class func pinAttachment(with item1: UIDynamicItem, attachedTo item2: UIDynamicItem, attachmentAnchor point: CGPoint) -> Self
  var items: [UIDynamicItem] { get }
  var attachedBehaviorType: UIAttachmentBehavior.AttachmentType { get }
  var anchorPoint: CGPoint
  var length: CGFloat
  var damping: CGFloat
  var frequency: CGFloat
  @available(tvOS 9.0, *)
  var frictionTorque: CGFloat
  @available(tvOS 9.0, *)
  var attachmentRange: UIFloatRange
}
