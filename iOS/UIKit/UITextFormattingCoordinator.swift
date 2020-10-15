
@available(iOS 13.0, *)
protocol UITextFormattingCoordinatorDelegate : NSObjectProtocol {
  @available(iOS 13.0, *)
  func updateTextAttributes(conversionHandler: ([NSAttributedString.Key : Any]) -> [NSAttributedString.Key : Any])
}
@available(iOS 13.0, *)
class UITextFormattingCoordinator : NSObject, UIFontPickerViewControllerDelegate {
  weak var delegate: @sil_weak UITextFormattingCoordinatorDelegate?
  class var isFontPanelVisible: Bool { get }
  convenience init(for windowScene: UIWindowScene)
  init(windowScene: UIWindowScene)
  func setSelectedAttributes(_ attributes: [NSAttributedString.Key : Any], isMultiple flag: Bool)
  class func toggleFontPanel(_ sender: Any)
}
