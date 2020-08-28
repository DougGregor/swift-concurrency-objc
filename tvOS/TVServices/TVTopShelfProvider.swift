
@available(tvOS, introduced: 9.0, deprecated: 13.0, message: "TVTopShelfProvider has been replaced by TVTopShelfContent")
enum TVTopShelfContentStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case inset
  case sectioned
}
@available(tvOS, introduced: 9.0, deprecated: 13.0, message: "TVTopShelfProvider has been replaced by TVTopShelfContentProvider")
protocol TVTopShelfProvider {
  var topShelfStyle: TVTopShelfContentStyle { get }
  var topShelfItems: [TVContentItem] { get }
}
extension NSNotification.Name {
  @available(tvOS, introduced: 9.0, deprecated: 13.0, message: "TVTopShelfItemsDidChangeNotification has been replaced by [TVTopShelfContentProvider topShelfContentDidChange]")
  static let TVTopShelfItemsDidChange: NSNotification.Name
}
@available(tvOS, introduced: 9.0, deprecated: 13.0, message: "TVTopShelfImageSizeForShape has been replaced by [TVTopShelfSectionedContent imageSizeForImageShape:] and [TVTopShelfInsetContent imageSize]")
func TVTopShelfImageSize(shape: TVContentItemImageShape, style: TVTopShelfContentStyle) -> CGSize
