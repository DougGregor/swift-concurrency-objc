
let CPMaximumNumberOfGridImages: Int
@available(iOS 14.0, *)
class CPListImageRowItem : NSObject, CPSelectableListItem {
  init(text: String, images: [UIImage])
  var gridImages: [UIImage] { get }
  func update(_ gridImages: [UIImage])
  var listImageRowHandler: ((CPListImageRowItem, Int, @escaping () -> Void) -> Void)?
  class var maximumImageSize: CGSize { get }
}
