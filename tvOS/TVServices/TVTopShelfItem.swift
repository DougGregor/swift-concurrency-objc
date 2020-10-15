
extension TVTopShelfItem {
  @available(tvOS 13.0, *)
  struct ImageTraits : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var screenScale1x: TVTopShelfItem.ImageTraits { get }
    static var screenScale2x: TVTopShelfItem.ImageTraits { get }
  }
}
@available(tvOS 13.0, *)
class TVTopShelfItem : TVTopShelfObject {
  var identifier: String { get }
  var playAction: TVTopShelfAction?
  var displayAction: TVTopShelfAction?
  var expirationDate: Date?
  func setImageURL(_ imageURL: URL?, for traits: TVTopShelfItem.ImageTraits)
  func imageURL(for traits: TVTopShelfItem.ImageTraits) -> URL?
  init(identifier: String)
}
