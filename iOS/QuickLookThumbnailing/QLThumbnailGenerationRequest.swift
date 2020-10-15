
extension QLThumbnailGenerator.Request {
  @available(iOS 13.0, *)
  struct RepresentationTypes : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var icon: QLThumbnailGenerator.Request.RepresentationTypes { get }
    static var lowQualityThumbnail: QLThumbnailGenerator.Request.RepresentationTypes { get }
    static var thumbnail: QLThumbnailGenerator.Request.RepresentationTypes { get }
    static var all: QLThumbnailGenerator.Request.RepresentationTypes { get }
  }
}
extension QLThumbnailGenerator {
  @available(iOS 13.0, *)
  class Request : NSObject, NSCopying, NSSecureCoding {
    init(fileAt url: URL, size: CGSize, scale: CGFloat, representationTypes: QLThumbnailGenerator.Request.RepresentationTypes)
    @available(iOS 14.0, *)
    var contentType: UTType!
    var minimumDimension: CGFloat
    var iconMode: Bool
    var size: CGSize { get }
    var scale: CGFloat { get }
    var representationTypes: QLThumbnailGenerator.Request.RepresentationTypes { get }
  }
}
