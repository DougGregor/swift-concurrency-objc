
@available(macOS 11.0, *)
class PKStrokeReference : NSObject, NSCopying {
  init(ink: PKInk, strokePath: PKStrokePath, transform: CGAffineTransform, mask: NSBezierPath?)
  var ink: PKInk { get }
  var transform: CGAffineTransform { get }
  var path: PKStrokePath { get }
  var mask: NSBezierPath? { get }
  var renderBounds: CGRect { get }
  var maskedPathRanges: [__PKFloatRange] { get }
}
