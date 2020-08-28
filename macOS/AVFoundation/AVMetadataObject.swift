
extension AVMetadataObject {
  @available(macOS 10.10, *)
  struct ObjectType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
@available(macOS 10.10, *)
class AVMetadataObject : NSObject {
  var time: CMTime { get }
  var duration: CMTime { get }
  var bounds: CGRect { get }
  var type: AVMetadataObject.ObjectType { get }
}
@available(macOS 10.15, *)
class AVMetadataBodyObject : AVMetadataObject, NSCopying {
  var bodyID: Int { get }
}
extension AVMetadataObject.ObjectType {
  @available(macOS 10.15, *)
  static let humanBody: AVMetadataObject.ObjectType
  @available(macOS 10.15, *)
  static let catBody: AVMetadataObject.ObjectType
  @available(macOS 10.15, *)
  static let dogBody: AVMetadataObject.ObjectType
  @available(macOS 10.15, *)
  static let salientObject: AVMetadataObject.ObjectType
  @available(macOS 10.10, *)
  static let face: AVMetadataObject.ObjectType
  @available(macOS 10.15, *)
  static let upce: AVMetadataObject.ObjectType
  @available(macOS 10.15, *)
  static let code39: AVMetadataObject.ObjectType
  @available(macOS 10.15, *)
  static let code39Mod43: AVMetadataObject.ObjectType
  @available(macOS 10.15, *)
  static let ean13: AVMetadataObject.ObjectType
  @available(macOS 10.15, *)
  static let ean8: AVMetadataObject.ObjectType
  @available(macOS 10.15, *)
  static let code93: AVMetadataObject.ObjectType
  @available(macOS 10.15, *)
  static let code128: AVMetadataObject.ObjectType
  @available(macOS 10.15, *)
  static let pdf417: AVMetadataObject.ObjectType
  @available(macOS 10.15, *)
  static let qr: AVMetadataObject.ObjectType
  @available(macOS 10.15, *)
  static let aztec: AVMetadataObject.ObjectType
  @available(macOS 10.15, *)
  static let interleaved2of5: AVMetadataObject.ObjectType
  @available(macOS 10.15, *)
  static let itf14: AVMetadataObject.ObjectType
  @available(macOS 10.15, *)
  static let dataMatrix: AVMetadataObject.ObjectType
}
@available(macOS 10.15, *)
class AVMetadataHumanBodyObject : AVMetadataBodyObject, NSCopying {
}
@available(macOS 10.15, *)
class AVMetadataCatBodyObject : AVMetadataBodyObject, NSCopying {
}
@available(macOS 10.15, *)
class AVMetadataDogBodyObject : AVMetadataBodyObject, NSCopying {
}
@available(macOS 10.15, *)
class AVMetadataSalientObject : AVMetadataObject, NSCopying {
  var objectID: Int { get }
}
@available(macOS 10.10, *)
class AVMetadataFaceObject : AVMetadataObject, NSCopying {
  var faceID: Int { get }
  var hasRollAngle: Bool { get }
  var rollAngle: CGFloat { get }
  var hasYawAngle: Bool { get }
  var yawAngle: CGFloat { get }
}
@available(macOS 10.15, *)
class AVMetadataMachineReadableCodeObject : AVMetadataObject {
  var __corners: [[AnyHashable : Any]] { get }
  var stringValue: String? { get }
}

@available(macOS 11.0, iOS 7.0, macCatalyst 14.0, *)
extension AVMetadataMachineReadableCodeObject {
  @nonobjc var corners: [CGPoint] { get }
}
extension AVMetadataMachineReadableCodeObject {
  @available(macOS 10.15, *)
  var descriptor: CIBarcodeDescriptor? { get }
}
