
@available(macOS 10.13, *)
class NSWindowTab : NSObject {
  var title: String!
  @NSCopying var attributedTitle: NSAttributedString?
  var toolTip: String!
  var accessoryView: NSView?
}
