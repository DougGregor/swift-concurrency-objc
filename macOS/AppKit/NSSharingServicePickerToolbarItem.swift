
@available(macOS 10.15, *)
class NSSharingServicePickerToolbarItem : NSToolbarItem {
  weak var delegate: @sil_weak NSSharingServicePickerToolbarItemDelegate?
}
protocol NSSharingServicePickerToolbarItemDelegate : NSSharingServicePickerDelegate {
  @available(macOS 10.15, *)
  func items(for pickerToolbarItem: NSSharingServicePickerToolbarItem) -> [Any]
}
