
@available(macOS 10.10, *)
class NSPathControlItem : NSObject {
  var title: String
  @NSCopying var attributedTitle: NSAttributedString
  var image: NSImage?
  var url: URL? { get }
}
