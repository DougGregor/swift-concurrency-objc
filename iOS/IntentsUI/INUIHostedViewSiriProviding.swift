
@available(iOS 10.0, *)
protocol INUIHostedViewSiriProviding : NSObjectProtocol {
  optional var displaysMap: Bool { get }
  optional var displaysMessage: Bool { get }
  optional var displaysPaymentTransaction: Bool { get }
}
