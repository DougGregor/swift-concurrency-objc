
extension TVTopShelfCarouselItem {
  @available(tvOS 13.0, *)
  struct MediaOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var videoResolutionHD: TVTopShelfCarouselItem.MediaOptions { get }
    static var videoResolution4K: TVTopShelfCarouselItem.MediaOptions { get }
    static var videoColorSpaceHDR: TVTopShelfCarouselItem.MediaOptions { get }
    static var videoColorSpaceDolbyVision: TVTopShelfCarouselItem.MediaOptions { get }
    static var audioDolbyAtmos: TVTopShelfCarouselItem.MediaOptions { get }
    static var audioTranscriptionClosedCaptioning: TVTopShelfCarouselItem.MediaOptions { get }
    static var audioTranscriptionSDH: TVTopShelfCarouselItem.MediaOptions { get }
    static var audioDescription: TVTopShelfCarouselItem.MediaOptions { get }
  }
}
@available(tvOS 13.0, *)
class TVTopShelfCarouselItem : TVTopShelfItem {
  var contextTitle: String?
  var summary: String?
  var genre: String?
  var duration: TimeInterval
  var creationDate: Date?
  var mediaOptions: TVTopShelfCarouselItem.MediaOptions
  var previewVideoURL: URL?
  var cinemagraphURL: URL?
  var namedAttributes: [TVTopShelfNamedAttribute]
}
