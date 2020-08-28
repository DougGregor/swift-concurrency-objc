
@available(iOS, introduced: 8.0, deprecated: 13.0)
extension AVPlayerViewController {
  @available(iOS 8.0, *)
  class func preparePrerollAds()
  @available(iOS 8.0, *)
  func playPrerollAd(completionHandler: @escaping (Error?) -> Void)
  @available(iOS 8.0, *)
  func playPrerollAd() async throws
  @available(iOS 8.0, *)
  func cancelPreroll()
}
