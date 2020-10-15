
extension QLThumbnailRepresentation {
  @available(macOS 10.15, *)
  enum RepresentationType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case icon
    case lowQualityThumbnail
    case thumbnail
  }
}
@available(macOS 10.15, *)
class QLThumbnailRepresentation : NSObject {
  var type: QLThumbnailRepresentation.RepresentationType { get }
  var cgImage: CGImage { get }
}
