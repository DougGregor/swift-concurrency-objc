
extension TVTopShelfCarouselContent {
  @available(tvOS 13.0, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case actions
    case details
  }
}
@available(tvOS 13.0, *)
class TVTopShelfCarouselContent : NSObject, TVTopShelfContent {
  var style: TVTopShelfCarouselContent.Style { get }
  var items: [TVTopShelfCarouselItem] { get }
  init(style: TVTopShelfCarouselContent.Style, items: [TVTopShelfCarouselItem])
}
