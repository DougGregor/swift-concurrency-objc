
@available(iOS 9.0, *)
class UIBarButtonItemGroup : NSObject, NSCoding {
  init(barButtonItems: [UIBarButtonItem], representativeItem: UIBarButtonItem?)
  var barButtonItems: [UIBarButtonItem]
  var representativeItem: UIBarButtonItem?
  var isDisplayingRepresentativeItem: Bool { get }
}
extension UIBarButtonItem {
  @available(iOS 9.0, *)
  weak var buttonGroup: @sil_weak UIBarButtonItemGroup? { get }
}
