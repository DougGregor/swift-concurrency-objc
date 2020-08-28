
@available(iOS 10.0, *)
class MSStickerBrowserViewController : UIViewController, MSStickerBrowserViewDataSource {
  init(stickerSize: MSStickerSize)
  var stickerBrowserView: MSStickerBrowserView { get }
  var stickerSize: MSStickerSize { get }
}
