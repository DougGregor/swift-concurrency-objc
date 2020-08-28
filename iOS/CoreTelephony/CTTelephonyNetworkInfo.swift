
extension NSNotification.Name {
  @available(iOS 12.0, *)
  static let CTServiceRadioAccessTechnologyDidChange: NSNotification.Name
  @available(iOS, introduced: 7.0, deprecated: 12.0, renamed: "NSNotification.Name.CTServiceRadioAccessTechnologyDidChange")
  static let CTRadioAccessTechnologyDidChange: NSNotification.Name
}
@available(iOS 7.0, *)
let CTRadioAccessTechnologyGPRS: String
@available(iOS 7.0, *)
let CTRadioAccessTechnologyEdge: String
@available(iOS 7.0, *)
let CTRadioAccessTechnologyWCDMA: String
@available(iOS 7.0, *)
let CTRadioAccessTechnologyHSDPA: String
@available(iOS 7.0, *)
let CTRadioAccessTechnologyHSUPA: String
@available(iOS 7.0, *)
let CTRadioAccessTechnologyCDMA1x: String
@available(iOS 7.0, *)
let CTRadioAccessTechnologyCDMAEVDORev0: String
@available(iOS 7.0, *)
let CTRadioAccessTechnologyCDMAEVDORevA: String
@available(iOS 7.0, *)
let CTRadioAccessTechnologyCDMAEVDORevB: String
@available(iOS 7.0, *)
let CTRadioAccessTechnologyeHRPD: String
@available(iOS 7.0, *)
let CTRadioAccessTechnologyLTE: String
@available(iOS 13.0, *)
protocol CTTelephonyNetworkInfoDelegate : NSObjectProtocol {
  optional func dataServiceIdentifierDidChange(_ identifier: String)
}
@available(iOS 4.0, *)
class CTTelephonyNetworkInfo : NSObject {
  @available(iOS 13.0, *)
  var dataServiceIdentifier: String? { get }
  @available(iOS 13.0, *)
  weak var delegate: @sil_weak CTTelephonyNetworkInfoDelegate?
  @available(iOS 12.0, *)
  var serviceSubscriberCellularProviders: [String : CTCarrier]? { get }
  @available(iOS, introduced: 4.0, deprecated: 12.0)
  var subscriberCellularProvider: CTCarrier? { get }
  @available(iOS 12.0, *)
  var serviceSubscriberCellularProvidersDidUpdateNotifier: ((String) -> Void)?
  @available(iOS, introduced: 4.0, deprecated: 12.0)
  var subscriberCellularProviderDidUpdateNotifier: ((CTCarrier) -> Void)?
  @available(iOS 12.0, *)
  var serviceCurrentRadioAccessTechnology: [String : String]? { get }
  @available(iOS, introduced: 7.0, deprecated: 12.0)
  var currentRadioAccessTechnology: String? { get }
}
