
@available(macOS 10.12.2, *)
class NSSharingServicePickerTouchBarItem : NSTouchBarItem {
  weak var delegate: @sil_weak NSSharingServicePickerTouchBarItemDelegate?
  var isEnabled: Bool
  var buttonTitle: String
  var buttonImage: NSImage?
}
protocol NSSharingServicePickerTouchBarItemDelegate : NSSharingServicePickerDelegate {
  @available(macOS 10.12.2, *)
  func items(for pickerTouchBarItem: NSSharingServicePickerTouchBarItem) -> [Any]
}
