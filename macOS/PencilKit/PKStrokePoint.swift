
@available(macOS 11.0, *)
class PKStrokePointReference : NSObject, NSCopying {
  init(location: CGPoint, timeOffset: TimeInterval, size: CGSize, opacity: CGFloat, force: CGFloat, azimuth: CGFloat, altitude: CGFloat)
  var location: CGPoint { get }
  var timeOffset: TimeInterval { get }
  var size: CGSize { get }
  var opacity: CGFloat { get }
  var azimuth: CGFloat { get }
  var force: CGFloat { get }
  var altitude: CGFloat { get }
}
