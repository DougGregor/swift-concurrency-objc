
extension QLThumbnailRepresentation {
  @available(iOS 13.0, *)
  enum RepresentationType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case icon
    case lowQualityThumbnail
    case thumbnail
  }
}
@available(iOS 13.0, *)
class QLThumbnailRepresentation : NSObject {
  var type: QLThumbnailRepresentation.RepresentationType { get }
  var cgImage: CGImage { get }
}
