
@available(macOS 10.7, *)
class NSTableCellView : NSView {
  var objectValue: Any?
  @IBOutlet unowned(unsafe) var textField: @sil_unmanaged NSTextField?
  @IBOutlet unowned(unsafe) var imageView: @sil_unmanaged NSImageView?
  var backgroundStyle: NSView.BackgroundStyle
  var rowSizeStyle: NSTableView.RowSizeStyle
  var draggingImageComponents: [NSDraggingImageComponent] { get }
}
