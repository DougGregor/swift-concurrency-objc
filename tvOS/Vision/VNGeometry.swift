
@available(tvOS 14.0, *)
class VNPoint : NSObject, NSCopying, NSSecureCoding {
  class var zero: VNPoint { get }
  class func apply(_ vector: VNVector, to point: VNPoint) -> VNPoint
  @available(tvOS, introduced: 14.0, deprecated: 14.0)
  class func distance(_ point1: VNPoint, _ point2: VNPoint) -> Double
  func distance(_ point: VNPoint) -> Double
  init(x: Double, y: Double)
  convenience init(location: CGPoint)
  var location: CGPoint { get }
  var x: Double { get }
  var y: Double { get }
}
@available(tvOS 14.0, *)
class VNVector : NSObject, NSCopying, NSSecureCoding {
  class var zero: VNVector { get }
  class func unitVector(for vector: VNVector) -> VNVector
  /*not inherited*/ init(byMultiplying vector: VNVector, byScalar scalar: Double)
  /*not inherited*/ init(byAdding v1: VNVector, to v2: VNVector)
  /*not inherited*/ init(bySubtracting v1: VNVector, from v2: VNVector)
  class func dotProduct(of v1: VNVector, vector v2: VNVector) -> Double
  init(xComponent x: Double, yComponent y: Double)
  convenience init(r: Double, theta: Double)
  convenience init(vectorHead head: VNPoint, tail: VNPoint)
  var x: Double { get }
  var y: Double { get }
  var r: Double { get }
  var theta: Double { get }
  var length: Double { get }
  var squaredLength: Double { get }
}
@available(tvOS 14.0, *)
class VNCircle : NSObject, NSCopying, NSSecureCoding {
  class var zero: VNCircle { get }
  init(center: VNPoint, radius: Double)
  convenience init(center: VNPoint, diameter: Double)
  func contains(_ point: VNPoint) -> Bool
  func contains(_ point: VNPoint, inCircumferentialRingOfWidth ringWidth: Double) -> Bool
  var center: VNPoint { get }
  var radius: Double { get }
  var diameter: Double { get }
}
@available(tvOS 14.0, *)
class VNContour : NSObject, NSCopying, VNRequestRevisionProviding {
  var indexPath: IndexPath { get }
  var childContourCount: Int { get }
  var childContours: [VNContour] { get }
  func childContour(at childContourIndex: Int) throws -> VNContour
  var pointCount: Int { get }
  var __normalizedPoints: UnsafePointer<simd_float2> { get }
  var normalizedPath: CGPath { get }
  var aspectRatio: Float { get }
  func polygonApproximation(epsilon: Float) throws -> VNContour
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, *)
extension VNContour {
  @nonobjc var normalizedPoints: [simd_float2] { get }
}
