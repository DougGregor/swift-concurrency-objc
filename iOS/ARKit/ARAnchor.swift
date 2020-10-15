
@available(iOS 12.0, *)
protocol ARAnchorCopying : NSCopying {
  init(anchor: ARAnchor)
}
@available(iOS 11.0, *)
class ARAnchor : NSObject, ARAnchorCopying, NSSecureCoding {
  var identifier: UUID { get }
  @available(iOS 12.0, *)
  var name: String? { get }
  @available(iOS 13.0, *)
  var sessionIdentifier: UUID? { get }
  var transform: simd_float4x4 { get }
  init(transform: simd_float4x4)
  @available(iOS 12.0, *)
  init(name: String, transform: simd_float4x4)
}
@available(iOS 11.0, *)
protocol ARTrackable : NSObjectProtocol {
  var isTracked: Bool { get }
}
