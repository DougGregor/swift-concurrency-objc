
@available(tvOS 13.0, *)
class TVTopShelfSectionedContent : NSObject, TVTopShelfContent {
  var sections: [TVTopShelfItemCollection<TVTopShelfSectionedItem>] { get }
  init(sections: [TVTopShelfItemCollection<TVTopShelfSectionedItem>])
  class func imageSize(for shape: TVTopShelfSectionedItem.ImageShape) -> CGSize
}
