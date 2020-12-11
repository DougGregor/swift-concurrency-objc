
@available(iOS 13.0, *)
class UIScreenshotService : NSObject {
  weak var delegate: @sil_weak UIScreenshotServiceDelegate?
  weak var windowScene: @sil_weak UIWindowScene? { get }
}
@available(iOS 13.0, *)
extension UIWindowScene {
  var screenshotService: UIScreenshotService? { get }
}
protocol UIScreenshotServiceDelegate : NSObjectProtocol {
  @available(iOS 13.0, *)
  optional func screenshotService(_ screenshotService: UIScreenshotService, generatePDFRepresentationWithCompletion completionHandler: @escaping (Data?, Int, CGRect) -> Void)
  @available(iOS 13.0, *)
  optional func screenshotServiceGeneratePDFRepresentation(_ screenshotService: UIScreenshotService) async -> (Data?, Int, CGRect)
}
