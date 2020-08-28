
@available(macOS 10.15, *)
class PKInkingToolReference : __PKTool {
  init(inkType type: __PKInkType, color: NSColor, width: CGFloat)
  convenience init(inkType type: __PKInkType, color: NSColor)
  convenience init(ink: PKInk, width: CGFloat)
  class func defaultWidth(forInkType inkType: __PKInkType) -> CGFloat
  class func minimumWidth(forInkType inkType: __PKInkType) -> CGFloat
  class func maximumWidth(forInkType inkType: __PKInkType) -> CGFloat
  var inkType: __PKInkType { get }
  var color: NSColor { get }
  var width: CGFloat { get }
  var ink: PKInk { get }
}
