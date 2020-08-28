
@available(tvOS 13.0, *)
class TVTopShelfInsetContent : NSObject, TVTopShelfContent {
  var items: [TVTopShelfItem] { get }
  class var imageSize: CGSize { get }
  init(items: [TVTopShelfItem])
}
