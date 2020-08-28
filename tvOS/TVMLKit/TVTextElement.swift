
@available(tvOS 9.0, *)
enum TVTextElementStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case title
  case subtitle
  case description
  case decoration
}
@available(tvOS 9.0, *)
class TVTextElement : TVViewElement {
  var attributedString: NSAttributedString? { get }
  var textStyle: TVTextElementStyle { get }
  func makeAttributedString(font: UIFont) -> NSAttributedString
  func makeAttributedString(font: UIFont, foregroundColor: UIColor?, textAlignment alignment: NSTextAlignment) -> NSAttributedString
}
