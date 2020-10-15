
@available(iOS 14, *)
struct PHPickerConfiguration : Equatable, Hashable {
  enum AssetRepresentationMode {
    case automatic
    case current
    case compatible
  }
  var preferredAssetRepresentationMode: PHPickerConfiguration.AssetRepresentationMode
  var selectionLimit: Int
  var filter: PHPickerFilter?
  init(photoLibrary: PHPhotoLibrary)
  init()
}

@available(iOS 14, *)
extension PHPickerConfiguration.AssetRepresentationMode : Equatable {
}

@available(iOS 14, *)
extension PHPickerConfiguration.AssetRepresentationMode : Hashable {
}

@available(iOS 14, *)
struct PHPickerFilter : Equatable, Hashable {
  static let images: PHPickerFilter
  static let videos: PHPickerFilter
  static let livePhotos: PHPickerFilter
  static func any(of subfilters: [PHPickerFilter]) -> PHPickerFilter
}

@available(iOS 14, *)
struct PHPickerResult : Equatable, Hashable {
  let itemProvider: NSItemProvider
  let assetIdentifier: String?
}

@available(iOS 14, *)
protocol PHPickerViewControllerDelegate : AnyObject {
  func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult])
}

@available(iOS 14, *)
extension PHPickerViewController {
  var configuration: PHPickerConfiguration { get }
  weak var delegate: @sil_weak PHPickerViewControllerDelegate?
  convenience init(configuration: PHPickerConfiguration)
}

