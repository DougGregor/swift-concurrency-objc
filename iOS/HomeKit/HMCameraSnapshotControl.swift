
@available(iOS 10.0, *)
class HMCameraSnapshotControl : HMCameraControl {
  weak var delegate: @sil_weak HMCameraSnapshotControlDelegate?
  var mostRecentSnapshot: HMCameraSnapshot? { get }
  func takeSnapshot()
}
@available(iOS 10.0, *)
protocol HMCameraSnapshotControlDelegate : NSObjectProtocol {
  @asyncHandler optional func cameraSnapshotControl(_ cameraSnapshotControl: HMCameraSnapshotControl, didTake snapshot: HMCameraSnapshot?, error: Error?)
  @asyncHandler optional func cameraSnapshotControlDidUpdateMostRecentSnapshot(_ cameraSnapshotControl: HMCameraSnapshotControl)
}
