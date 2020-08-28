
extension AVMetadataObject {
  @available(iOS 6.0, *)
  struct ObjectType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
@available(iOS 6.0, *)
class AVMetadataObject : NSObject {
  var time: CMTime { get }
  var duration: CMTime { get }
  var bounds: CGRect { get }
  var type: AVMetadataObject.ObjectType { get }
}
@available(iOS 13.0, *)
class AVMetadataBodyObject : AVMetadataObject, NSCopying {
  var bodyID: Int { get }
}
extension AVMetadataObject.ObjectType {
  @available(iOS 13.0, *)
  static let humanBody: AVMetadataObject.ObjectType
  @available(iOS 13.0, *)
  static let catBody: AVMetadataObject.ObjectType
  @available(iOS 13.0, *)
  static let dogBody: AVMetadataObject.ObjectType
  @available(iOS 13.0, *)
  static let salientObject: AVMetadataObject.ObjectType
  @available(iOS 6.0, *)
  static let face: AVMetadataObject.ObjectType
  @available(iOS 7.0, *)
  static let upce: AVMetadataObject.ObjectType
  @available(iOS 7.0, *)
  static let code39: AVMetadataObject.ObjectType
  @available(iOS 7.0, *)
  static let code39Mod43: AVMetadataObject.ObjectType
  @available(iOS 7.0, *)
  static let ean13: AVMetadataObject.ObjectType
  @available(iOS 7.0, *)
  static let ean8: AVMetadataObject.ObjectType
  @available(iOS 7.0, *)
  static let code93: AVMetadataObject.ObjectType
  @available(iOS 7.0, *)
  static let code128: AVMetadataObject.ObjectType
  @available(iOS 7.0, *)
  static let pdf417: AVMetadataObject.ObjectType
  @available(iOS 7.0, *)
  static let qr: AVMetadataObject.ObjectType
  @available(iOS 7.0, *)
  static let aztec: AVMetadataObject.ObjectType
  @available(iOS 8.0, *)
  static let interleaved2of5: AVMetadataObject.ObjectType
  @available(iOS 8.0, *)
  static let itf14: AVMetadataObject.ObjectType
  @available(iOS 8.0, *)
  static let dataMatrix: AVMetadataObject.ObjectType
}
@available(iOS 13.0, *)
class AVMetadataHumanBodyObject : AVMetadataBodyObject, NSCopying {
}
@available(iOS 13.0, *)
class AVMetadataCatBodyObject : AVMetadataBodyObject, NSCopying {
}
@available(iOS 13.0, *)
class AVMetadataDogBodyObject : AVMetadataBodyObject, NSCopying {
}
@available(iOS 13.0, *)
class AVMetadataSalientObject : AVMetadataObject, NSCopying {
  var objectID: Int { get }
}
@available(iOS 6.0, *)
class AVMetadataFaceObject : AVMetadataObject, NSCopying {
  var faceID: Int { get }
  var hasRollAngle: Bool { get }
  var rollAngle: CGFloat { get }
  var hasYawAngle: Bool { get }
  var yawAngle: CGFloat { get }
}
@available(iOS 7.0, *)
class AVMetadataMachineReadableCodeObject : AVMetadataObject {
  var __corners: [[AnyHashable : Any]] { get }
  var stringValue: String? { get }
}

@available(macOS 11.0, iOS 7.0, macCatalyst 14.0, *)
extension AVMetadataMachineReadableCodeObject {
  @nonobjc var corners: [CGPoint] { get }
}
extension AVMetadataMachineReadableCodeObject {
}
