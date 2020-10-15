
@available(iOS 10.0, *)
protocol MSStickerBrowserViewDataSource : NSObjectProtocol {
  func numberOfStickers(in stickerBrowserView: MSStickerBrowserView) -> Int
  func stickerBrowserView(_ stickerBrowserView: MSStickerBrowserView, stickerAt index: Int) -> MSSticker
}
