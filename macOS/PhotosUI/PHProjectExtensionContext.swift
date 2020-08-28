
@available(macOS 10.13, *)
class PHProjectExtensionContext : NSExtensionContext {
  @available(macOS 10.13, *)
  var photoLibrary: PHPhotoLibrary { get }
  @available(macOS 10.13, *)
  var project: PHProject { get }
  @available(macOS 10.14, *)
  func showEditor(for asset: PHAsset)
  @available(macOS 10.14, *)
  func updatedProjectInfo(from existingProjectInfo: PHProjectInfo?, completion: @escaping (PHProjectInfo?) -> Void) -> Progress
}
