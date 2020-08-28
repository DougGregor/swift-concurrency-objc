
@available(iOS 14.0, *)
class CPDetailLabel : NSObject {
  init(attributedString leadingAttributedString: NSAttributedString, trailingAttributedString: NSAttributedString?)
  convenience init(attributedString: NSAttributedString)
  var attributedString: NSAttributedString { get }
  var trailingAttributedString: NSAttributedString { get }
}
