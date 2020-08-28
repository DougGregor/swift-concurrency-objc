
@available(tvOS 11.0, *)
enum INVisualCodeType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case contact
  case requestPayment
  case sendPayment
  @available(tvOS 12.0, *)
  case transit
  @available(tvOS 12.0, *)
  case bus
  @available(tvOS 12.0, *)
  case subway
}
