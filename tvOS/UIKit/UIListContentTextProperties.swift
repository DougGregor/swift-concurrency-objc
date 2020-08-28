
@available(tvOS 14.0, *)
enum __UIListContentTextAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case natural
  case center
  case justified
}
@available(tvOS 14.0, *)
enum __UIListContentTextTransform : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case uppercase
  case lowercase
  case capitalized
}
@available(tvOS 14.0, *)
class __UIListContentTextProperties : NSObject, NSCopying, NSSecureCoding {
  var font: UIFont
  var color: UIColor
  var colorTransformer: __UIConfigurationColorTransformer?
  func resolvedColor() -> UIColor
  var alignment: __UIListContentTextAlignment
  var lineBreakMode: NSLineBreakMode
  var numberOfLines: Int
  var adjustsFontSizeToFitWidth: Bool
  var minimumScaleFactor: CGFloat
  var allowsDefaultTighteningForTruncation: Bool
  var adjustsFontForContentSizeCategory: Bool
  var transform: __UIListContentTextTransform
}
