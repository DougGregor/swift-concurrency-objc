
extension UICloudSharingController {
  @available(iOS 10.0, *)
  struct PermissionOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var allowPublic: UICloudSharingController.PermissionOptions { get }
    static var allowPrivate: UICloudSharingController.PermissionOptions { get }
    static var allowReadOnly: UICloudSharingController.PermissionOptions { get }
    static var allowReadWrite: UICloudSharingController.PermissionOptions { get }
  }
}
protocol UICloudSharingControllerDelegate : NSObjectProtocol {
  @available(iOS 10.0, *)
  func cloudSharingController(_ csc: UICloudSharingController, failedToSaveShareWithError error: Error)
  @available(iOS 10.0, *)
  func itemTitle(for csc: UICloudSharingController) -> String?
  @available(iOS 10.0, *)
  optional func itemThumbnailData(for csc: UICloudSharingController) -> Data?
  @available(iOS 10.0, *)
  optional func itemType(for csc: UICloudSharingController) -> String?
  @available(iOS 10.0, *)
  @asyncHandler optional func cloudSharingControllerDidSaveShare(_ csc: UICloudSharingController)
  @available(iOS 10.0, *)
  @asyncHandler optional func cloudSharingControllerDidStopSharing(_ csc: UICloudSharingController)
}
@available(iOS 10.0, *)
class UICloudSharingController : UIViewController {
  weak var delegate: @sil_weak UICloudSharingControllerDelegate?
  var availablePermissions: UICloudSharingController.PermissionOptions
  func activityItemSource() -> UIActivityItemSource
}
