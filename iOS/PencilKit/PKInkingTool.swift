
@available(iOS 13.0, *)
class PKInkingToolReference : __PKTool {
  init(inkType type: __PKInkType, color: UIColor, width: CGFloat)
  convenience init(inkType type: __PKInkType, color: UIColor)
  @available(iOS 14.0, *)
  convenience init(ink: PKInk, width: CGFloat)
  class func defaultWidth(forInkType inkType: __PKInkType) -> CGFloat
  class func minimumWidth(forInkType inkType: __PKInkType) -> CGFloat
  class func maximumWidth(forInkType inkType: __PKInkType) -> CGFloat
  var inkType: __PKInkType { get }
  var color: UIColor { get }
  class func convert(_ color: UIColor, from fromUserInterfaceStyle: UIUserInterfaceStyle, to toUserInterfaceStyle: UIUserInterfaceStyle) -> UIColor
  var width: CGFloat { get }
  @available(iOS 14.0, *)
  var ink: PKInk { get }
}
