
@available(macOS 11.0, *)
class PKInkReference : NSObject, NSCopying {
  init(inkType type: __PKInkType, color: NSColor)
  var inkType: __PKInkType { get }
  var color: NSColor { get }
}
