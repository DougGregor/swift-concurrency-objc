
@available(iOS 14, iOS 14, *)
enum PHPickerConfigurationAssetRepresentationMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 14, *)
  case automatic
  @available(iOS 14, *)
  case current
  @available(iOS 14, *)
  case compatible
}
@available(iOS 14, *)
class __PHPickerFilter : NSObject, NSCopying {
  @available(iOS 14, *)
  class var images: __PHPickerFilter { get }
  @available(iOS 14, *)
  class var videos: __PHPickerFilter { get }
  @available(iOS 14, *)
  class var livePhotos: __PHPickerFilter { get }
  @available(iOS 14, *)
  class func anyFilter(matchingSubfilters subfilters: [__PHPickerFilter]) -> __PHPickerFilter
}
@available(iOS 14, *)
class __PHPickerConfiguration : NSObject, NSCopying {
  @available(iOS 14, *)
  var preferredAssetRepresentationMode: PHPickerConfigurationAssetRepresentationMode
  @available(iOS 14, *)
  var selectionLimit: Int
  @available(iOS 14, *)
  @NSCopying var filter: __PHPickerFilter?
  @available(iOS 14, *)
  init(photoLibrary: PHPhotoLibrary)
}
@available(iOS 14, *)
class __PHPickerResult : NSObject {
  @available(iOS 14, *)
  var itemProvider: NSItemProvider { get }
  @available(iOS 14, *)
  var assetIdentifier: String? { get }
}
@available(iOS 14, *)
protocol __PHPickerViewControllerDelegate : NSObjectProtocol {
  @available(iOS 14, *)
  func picker(_ picker: PHPickerViewController, didFinishPicking results: [__PHPickerResult])
}
@available(iOS 14, *)
class PHPickerViewController : UIViewController {
  @available(iOS 14, *)
  @NSCopying var __configuration: __PHPickerConfiguration { get }
  @available(iOS 14, *)
  weak var __delegate: @sil_weak __PHPickerViewControllerDelegate?
  @available(iOS 14, *)
  init(__configuration configuration: __PHPickerConfiguration)
}

@available(iOS 14, *)
extension PHPickerViewController {
  var configuration: PHPickerConfiguration { get }
  weak var delegate: @sil_weak PHPickerViewControllerDelegate?
  convenience init(configuration: PHPickerConfiguration)
}
