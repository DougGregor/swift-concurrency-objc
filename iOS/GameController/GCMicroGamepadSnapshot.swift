
@available(iOS, introduced: 9.0, deprecated: 13.0, message: "GCMicroGamepadSnapshot has been deprecated, use [GCController controllerWithMicroGamepad] instead")
class GCMicroGamepadSnapshot : GCMicroGamepad {
  var snapshotData: Data
  init(snapshotData data: Data)
  init(controller: GCController, snapshotData data: Data)
}
@available(iOS, introduced: 9.0, deprecated: 13.0, message: "GCMicroGamepadSnapshot has been deprecated, use [GCController controllerWithMicroGamepad] instead")
enum GCMicroGamepadSnapshotDataVersion : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case version1
}
@available(iOS, introduced: 9.0, deprecated: 13.0, message: "GCMicroGamepadSnapshot has been deprecated, use [GCController controllerWithMicroGamepad] instead")
let GCCurrentMicroGamepadSnapshotDataVersion: GCMicroGamepadSnapshotDataVersion
@available(iOS, introduced: 9.0, deprecated: 13.0, message: "GCMicroGamepadSnapshot has been deprecated, use [GCController controllerWithMicroGamepad] instead")
struct GCMicroGamepadSnapshotData {
  var version: UInt16
  var size: UInt16
  var dpadX: Float
  var dpadY: Float
  var buttonA: Float
  var buttonX: Float
  init()
  init(version: UInt16, size: UInt16, dpadX: Float, dpadY: Float, buttonA: Float, buttonX: Float)
}
@available(iOS, introduced: 9.0, deprecated: 13.0, message: "GCMicroGamepadSnapshot has been deprecated, use [GCController controllerWithMicroGamepad] instead")
func GCMicroGamepadSnapshotDataFromNSData(_ snapshotData: UnsafeMutablePointer<GCMicroGamepadSnapshotData>?, _ data: Data?) -> Bool
@available(iOS, introduced: 9.0, deprecated: 13.0, message: "GCMicroGamepadSnapshot has been deprecated, use [GCController controllerWithMicroGamepad] instead")
func NSDataFromGCMicroGamepadSnapshotData(_ snapshotData: UnsafeMutablePointer<GCMicroGamepadSnapshotData>?) -> Data?
@available(iOS, introduced: 9.0, deprecated: 13.0, message: "GCMicroGamepadSnapshot has been deprecated, use [GCController controllerWithMicroGamepad] instead")
struct GCMicroGamepadSnapShotDataV100 {
  var version: UInt16
  var size: UInt16
  var dpadX: Float
  var dpadY: Float
  var buttonA: Float
  var buttonX: Float
  init()
  init(version: UInt16, size: UInt16, dpadX: Float, dpadY: Float, buttonA: Float, buttonX: Float)
}
@available(iOS, introduced: 9.0, deprecated: 13.0, message: "GCMicroGamepadSnapshot has been deprecated, use [GCController controllerWithMicroGamepad] instead")
func GCMicroGamepadSnapShotDataV100FromNSData(_ snapshotData: UnsafeMutablePointer<GCMicroGamepadSnapShotDataV100>?, _ data: Data?) -> Bool
@available(iOS, introduced: 9.0, deprecated: 13.0, message: "GCMicroGamepadSnapshot has been deprecated, use [GCController controllerWithMicroGamepad] instead")
func NSDataFromGCMicroGamepadSnapShotDataV100(_ snapshotData: UnsafeMutablePointer<GCMicroGamepadSnapShotDataV100>?) -> Data?
