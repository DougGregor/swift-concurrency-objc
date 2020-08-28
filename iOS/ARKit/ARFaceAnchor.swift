
extension ARFaceAnchor {
  @available(iOS 11.0, *)
  struct BlendShapeLocation : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension ARFaceAnchor.BlendShapeLocation {
  @available(iOS 11.0, *)
  static let browDownLeft: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let browDownRight: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let browInnerUp: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let browOuterUpLeft: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let browOuterUpRight: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let cheekPuff: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let cheekSquintLeft: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let cheekSquintRight: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let eyeBlinkLeft: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let eyeBlinkRight: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let eyeLookDownLeft: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let eyeLookDownRight: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let eyeLookInLeft: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let eyeLookInRight: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let eyeLookOutLeft: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let eyeLookOutRight: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let eyeLookUpLeft: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let eyeLookUpRight: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let eyeSquintLeft: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let eyeSquintRight: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let eyeWideLeft: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let eyeWideRight: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let jawForward: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let jawLeft: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let jawOpen: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let jawRight: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let mouthClose: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let mouthDimpleLeft: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let mouthDimpleRight: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let mouthFrownLeft: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let mouthFrownRight: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let mouthFunnel: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let mouthLeft: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let mouthLowerDownLeft: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let mouthLowerDownRight: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let mouthPressLeft: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let mouthPressRight: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let mouthPucker: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let mouthRight: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let mouthRollLower: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let mouthRollUpper: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let mouthShrugLower: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let mouthShrugUpper: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let mouthSmileLeft: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let mouthSmileRight: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let mouthStretchLeft: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let mouthStretchRight: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let mouthUpperUpLeft: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let mouthUpperUpRight: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let noseSneerLeft: ARFaceAnchor.BlendShapeLocation
  @available(iOS 11.0, *)
  static let noseSneerRight: ARFaceAnchor.BlendShapeLocation
  @available(iOS 12.0, *)
  static let tongueOut: ARFaceAnchor.BlendShapeLocation
}
@available(iOS 11.0, *)
class ARFaceAnchor : ARAnchor, ARTrackable {
  var geometry: ARFaceGeometry { get }
  @available(iOS 12.0, *)
  var leftEyeTransform: simd_float4x4 { get }
  @available(iOS 12.0, *)
  var rightEyeTransform: simd_float4x4 { get }
  @available(iOS 12.0, *)
  var lookAtPoint: simd_float3 { get }
  var blendShapes: [ARFaceAnchor.BlendShapeLocation : NSNumber] { get }
}
