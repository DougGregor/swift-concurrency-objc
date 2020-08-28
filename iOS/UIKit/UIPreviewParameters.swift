
@available(iOS 13.0, *)
class UIPreviewParameters : NSObject, NSCopying {
  convenience init(textLineRects: [NSValue])
  @NSCopying var visiblePath: UIBezierPath?
  @available(iOS 14.0, *)
  @NSCopying var shadowPath: UIBezierPath?
  @NSCopying var backgroundColor: UIColor!
}
