
@available(watchOS 4.0, *)
enum INVisualCodeType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case contact
  case requestPayment
  case sendPayment
  @available(watchOS 5.0, *)
  case transit
  @available(watchOS 5.0, *)
  case bus
  @available(watchOS 5.0, *)
  case subway
}
