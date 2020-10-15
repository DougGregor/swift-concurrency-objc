
@available(iOS 14.0, *)
class PKStrokeReference : NSObject, NSCopying {
  init(ink: PKInk, strokePath: PKStrokePath, transform: CGAffineTransform, mask: UIBezierPath?)
  var ink: PKInk { get }
  var transform: CGAffineTransform { get }
  var path: PKStrokePath { get }
  var mask: UIBezierPath? { get }
  var renderBounds: CGRect { get }
  var maskedPathRanges: [__PKFloatRange] { get }
}
