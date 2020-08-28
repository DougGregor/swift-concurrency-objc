
extension AVMetadataObject {
  @available(tvOS 6.0, *)
  struct ObjectType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
@available(tvOS 6.0, *)
class AVMetadataObject : NSObject {
  var time: CMTime { get }
  var duration: CMTime { get }
  var bounds: CGRect { get }
  var type: AVMetadataObject.ObjectType { get }
}
extension AVMetadataObject.ObjectType {
  @available(tvOS 6.0, *)
  static let face: AVMetadataObject.ObjectType
  @available(tvOS 7.0, *)
  static let upce: AVMetadataObject.ObjectType
  @available(tvOS 7.0, *)
  static let code39: AVMetadataObject.ObjectType
  @available(tvOS 7.0, *)
  static let code39Mod43: AVMetadataObject.ObjectType
  @available(tvOS 7.0, *)
  static let ean13: AVMetadataObject.ObjectType
  @available(tvOS 7.0, *)
  static let ean8: AVMetadataObject.ObjectType
  @available(tvOS 7.0, *)
  static let code93: AVMetadataObject.ObjectType
  @available(tvOS 7.0, *)
  static let code128: AVMetadataObject.ObjectType
  @available(tvOS 7.0, *)
  static let pdf417: AVMetadataObject.ObjectType
  @available(tvOS 7.0, *)
  static let qr: AVMetadataObject.ObjectType
  @available(tvOS 7.0, *)
  static let aztec: AVMetadataObject.ObjectType
  @available(tvOS 8.0, *)
  static let interleaved2of5: AVMetadataObject.ObjectType
  @available(tvOS 8.0, *)
  static let itf14: AVMetadataObject.ObjectType
  @available(tvOS 8.0, *)
  static let dataMatrix: AVMetadataObject.ObjectType
}
@available(tvOS 6.0, *)
class AVMetadataFaceObject : AVMetadataObject, NSCopying {
  var faceID: Int { get }
  var hasRollAngle: Bool { get }
  var rollAngle: CGFloat { get }
  var hasYawAngle: Bool { get }
  var yawAngle: CGFloat { get }
}
@available(tvOS 7.0, *)
class AVMetadataMachineReadableCodeObject : AVMetadataObject {
  var __corners: [[AnyHashable : Any]] { get }
  var stringValue: String? { get }
}
extension AVMetadataMachineReadableCodeObject {
}
