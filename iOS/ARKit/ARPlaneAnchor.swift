
extension ARPlaneAnchor {
  @available(iOS 11.0, *)
  enum Alignment : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case horizontal
    @available(iOS 11.3, *)
    case vertical
  }
}
@available(iOS 12.0, *)
enum __ARPlaneClassificationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notAvailable
  case undetermined
  case unknown
  case known
}
@available(iOS 12.0, *)
enum __ARPlaneClassification : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case wall
  case floor
  case ceiling
  case table
  case seat
  case window
  case door
}
@available(iOS 11.0, *)
class ARPlaneAnchor : ARAnchor {
  @available(iOS 12.0, *)
  class var isClassificationSupported: Bool { get }
  var alignment: ARPlaneAnchor.Alignment { get }
  var center: simd_float3 { get }
  var extent: simd_float3 { get }
  @available(iOS 11.3, *)
  var geometry: ARPlaneGeometry { get }
  @available(iOS 12.0, *)
  var __classificationStatus: __ARPlaneClassificationStatus { get }
  @available(iOS 12.0, *)
  var __classification: __ARPlaneClassification { get }
}

@available(iOS 12.0, *)
extension ARPlaneAnchor {
  enum Classification {
    enum Status {
      case notAvailable
      case undetermined
      case unknown
    }
    case none(ARPlaneAnchor.Classification.Status)
    case wall
    case floor
    case ceiling
    case table
    case seat
    case window
    case door
  }
  var classification: ARPlaneAnchor.Classification { get }
}

@available(iOS 12.0, *)
extension ARPlaneAnchor.Classification.Status : Equatable {
}

@available(iOS 12.0, *)
extension ARPlaneAnchor.Classification.Status : Hashable {
}
