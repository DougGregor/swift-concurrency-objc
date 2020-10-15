
enum ITLibArtworkFormat : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case bitmap
  case JPEG
  case JPEG2000
  case GIF
  case PNG
  case BMP
  case TIFF
  case PICT
}
class ITLibArtwork : NSObject {
  var imageData: Data? { get }
  var imageDataFormat: ITLibArtworkFormat { get }
}
