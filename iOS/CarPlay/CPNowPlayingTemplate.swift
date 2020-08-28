
@available(iOS 14.0, *)
protocol CPNowPlayingTemplateObserver : NSObjectProtocol {
  optional func nowPlayingTemplateUpNextButtonTapped(_ nowPlayingTemplate: CPNowPlayingTemplate)
  optional func nowPlayingTemplateAlbumArtistButtonTapped(_ nowPlayingTemplate: CPNowPlayingTemplate)
}
@available(iOS 14.0, *)
class CPNowPlayingTemplate : CPTemplate {
  class var shared: CPNowPlayingTemplate
  func add(_ observer: CPNowPlayingTemplateObserver)
  func remove(_ observer: CPNowPlayingTemplateObserver)
  var nowPlayingButtons: [CPNowPlayingButton] { get }
  var isUpNextButtonEnabled: Bool
  var upNextTitle: String
  var isAlbumArtistButtonEnabled: Bool
  func updateNowPlayingButtons(_ nowPlayingButtons: [CPNowPlayingButton])
}
