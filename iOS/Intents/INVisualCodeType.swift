
@available(iOS 11.0, *)
enum INVisualCodeType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case contact
  case requestPayment
  case sendPayment
  @available(iOS 12.0, *)
  case transit
  @available(iOS 12.0, *)
  case bus
  @available(iOS 12.0, *)
  case subway
}
