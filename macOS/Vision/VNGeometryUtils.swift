
@available(macOS 11.0, *)
class VNGeometryUtils : NSObject {
  class func boundingCircle(for contour: VNContour) throws -> VNCircle
  class func boundingCircle(for points: [VNPoint]) throws -> VNCircle
  class func boundingCircle(forSIMDPoints points: UnsafePointer<simd_float2>, pointCount: Int) throws -> VNCircle
  class func calculateArea(_ area: UnsafeMutablePointer<Double>, for contour: VNContour, orientedArea: Bool) throws
  class func calculatePerimeter(_ perimeter: UnsafeMutablePointer<Double>, for contour: VNContour) throws
}
