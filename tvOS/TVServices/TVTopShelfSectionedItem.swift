
extension TVTopShelfSectionedItem {
  @available(tvOS 13.0, *)
  enum ImageShape : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case square
    case poster
    case hdtv
  }
}
@available(tvOS 13.0, *)
class TVTopShelfSectionedItem : TVTopShelfItem {
  var imageShape: TVTopShelfSectionedItem.ImageShape
  var playbackProgress: Double
}
