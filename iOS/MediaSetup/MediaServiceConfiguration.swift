
protocol MediaServiceConnectionDelegate : NSObjectProtocol {
  func connectionInterrupted()
  func connectionInvalidated()
}
protocol MediaServiceUpdatedDelegate : MediaServiceConnectionDelegate {
  @available(iOS 6.0, *)
  optional func serviceSettingDidUpdate(_ service: MediaService!, homeUserID: UUID!)
  @available(iOS 6.0, *)
  optional func userDidRemove(_ service: MediaService!, homeUserID: UUID!)
}
class MediaServiceConfiguration : NSObject {
  init!(queue: DispatchQueue!)
  class func sharedInstance() -> MediaServiceConfiguration!
  var queue: DispatchQueue!
  weak var delegate: @sil_weak MediaServiceUpdatedDelegate!
}
extension MediaServiceConfiguration {
}
