
extension NSTableViewRowAction {
  @available(macOS 10.11, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case regular
    case destructive
  }
}
@available(macOS 10.11, *)
class NSTableViewRowAction : NSObject, NSCopying {
  convenience init(style: NSTableViewRowAction.Style, title: String, handler: @escaping (NSTableViewRowAction, Int) -> Void)
  var style: NSTableViewRowAction.Style { get }
  var title: String
  @NSCopying var backgroundColor: NSColor!
  @available(macOS 10.12, *)
  var image: NSImage?
}
