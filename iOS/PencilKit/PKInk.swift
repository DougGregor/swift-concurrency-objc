
@available(iOS 14.0, *)
class PKInkReference : NSObject, NSCopying {
  init(inkType type: __PKInkType, color: UIColor)
  var inkType: __PKInkType { get }
  var color: UIColor { get }
}
