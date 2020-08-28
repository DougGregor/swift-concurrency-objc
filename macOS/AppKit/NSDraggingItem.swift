
extension NSDraggingItem {
  struct ImageComponentKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension NSDraggingItem.ImageComponentKey {
  @available(macOS 10.7, *)
  static let icon: NSDraggingItem.ImageComponentKey
  @available(macOS 10.7, *)
  static let label: NSDraggingItem.ImageComponentKey
}
@available(macOS 10.7, *)
class NSDraggingImageComponent : NSObject {
  init(key: NSDraggingItem.ImageComponentKey)
  var key: NSDraggingItem.ImageComponentKey
  var contents: Any?
  var frame: NSRect
}
@available(macOS 10.7, *)
class NSDraggingItem : NSObject {
  init(pasteboardWriter: NSPasteboardWriting)
  var item: Any { get }
  var draggingFrame: NSRect
  var imageComponentsProvider: (() -> [NSDraggingImageComponent])?
  func setDraggingFrame(_ frame: NSRect, contents: Any?)
  var imageComponents: [NSDraggingImageComponent]? { get }
}
