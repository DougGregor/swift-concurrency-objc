
extension QLThumbnailGenerator.Request {
  @available(macOS 10.15, *)
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
  @available(macOS 10.15, *)
  class Request : NSObject, NSCopying, NSSecureCoding {
    init(fileAt url: URL, size: CGSize, scale: CGFloat, representationTypes: QLThumbnailGenerator.Request.RepresentationTypes)
    @available(macOS 11.0, *)
    var contentType: UTType!
    var minimumDimension: CGFloat
    var iconMode: Bool
    var size: CGSize { get }
    var scale: CGFloat { get }
    var representationTypes: QLThumbnailGenerator.Request.RepresentationTypes { get }
  }
}
