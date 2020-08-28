
@available(iOS 11.0, *)
class UIDragItem : NSObject {
  init(itemProvider: NSItemProvider)
  var itemProvider: NSItemProvider { get }
  var localObject: Any?
  var previewProvider: (() -> UIDragPreview?)?
}
