
@available(macOS 11.0, *)
class PKStrokePathReference : NSObject, NSCopying {
  init(controlPoints: [PKStrokePoint], creationDate: Date)
  var count: Int { get }
  var creationDate: Date { get }
  func point(at i: Int) -> PKStrokePoint
  subscript(i: Int) -> PKStrokePoint { get }
  func interpolatedLocation(at parametricValue: CGFloat) -> CGPoint
  func interpolatedPoint(at parametricValue: CGFloat) -> PKStrokePoint
  func enumerateInterpolatedPoints(in range: __PKFloatRange, strideByDistance distanceStep: CGFloat, using block: @escaping (PKStrokePoint, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateInterpolatedPoints(in range: __PKFloatRange, strideByTime timeStep: TimeInterval, using block: @escaping (PKStrokePoint, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateInterpolatedPoints(in range: __PKFloatRange, strideByParametricStep parametricStep: CGFloat, using block: @escaping (PKStrokePoint, UnsafeMutablePointer<ObjCBool>) -> Void)
  func parametricValue(_ parametricValue: CGFloat, offsetByDistance distanceStep: CGFloat) -> CGFloat
  func parametricValue(_ parametricValue: CGFloat, offsetByTime timeStep: TimeInterval) -> CGFloat
}
