
class ITLibMediaItemVideoInfo : NSObject {
  var series: String? { get }
  var sortSeries: String? { get }
  var season: Int { get }
  var episode: String? { get }
  var episodeOrder: Int { get }
  var isHD: Bool { get }
  var videoWidth: Int { get }
  var videoHeight: Int { get }
}
