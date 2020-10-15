
@available(iOS 3.1, *)
class UIVideoEditorController : UINavigationController {
  @available(iOS 3.1, *)
  class func canEditVideo(atPath videoPath: String) -> Bool
  var videoPath: String
  var videoMaximumDuration: TimeInterval
  var videoQuality: UIImagePickerController.QualityType
}
protocol UIVideoEditorControllerDelegate : NSObjectProtocol {
  @available(iOS 3.1, *)
  @asyncHandler optional func videoEditorController(_ editor: UIVideoEditorController, didSaveEditedVideoToPath editedVideoPath: String)
  @available(iOS 3.1, *)
  @asyncHandler optional func videoEditorController(_ editor: UIVideoEditorController, didFailWithError error: Error)
  @available(iOS 3.1, *)
  @asyncHandler optional func videoEditorControllerDidCancel(_ editor: UIVideoEditorController)
}
