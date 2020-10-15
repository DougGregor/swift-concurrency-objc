
@available(iOS, introduced: 7.0, deprecated: 13.0, message: "GCGamepad has been deprecated, use GCExtendedGamepad instead")
class GCGamepadSnapshot : GCGamepad {
  var snapshotData: Data
  init(snapshotData data: Data)
  init(controller: GCController, snapshotData data: Data)
}
@available(iOS, introduced: 7.0, deprecated: 13.0, message: "GCGamepad has been deprecated, use GCExtendedGamepad instead")
struct GCGamepadSnapShotDataV100 {
  var version: UInt16
  var size: UInt16
  var dpadX: Float
  var dpadY: Float
  var buttonA: Float
  var buttonB: Float
  var buttonX: Float
  var buttonY: Float
  var leftShoulder: Float
  var rightShoulder: Float
  init()
  init(version: UInt16, size: UInt16, dpadX: Float, dpadY: Float, buttonA: Float, buttonB: Float, buttonX: Float, buttonY: Float, leftShoulder: Float, rightShoulder: Float)
}
@available(iOS, introduced: 7.0, deprecated: 13.0, message: "GCGamepad has been deprecated, use GCExtendedGamepad instead")
func GCGamepadSnapShotDataV100FromNSData(_ snapshotData: UnsafeMutablePointer<GCGamepadSnapShotDataV100>?, _ data: Data?) -> Bool
@available(iOS, introduced: 7.0, deprecated: 13.0, message: "GCGamepad has been deprecated, use GCExtendedGamepad instead")
func NSDataFromGCGamepadSnapShotDataV100(_ snapshotData: UnsafeMutablePointer<GCGamepadSnapShotDataV100>?) -> Data?
