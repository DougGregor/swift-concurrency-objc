
@available(iOS 12.0, *)
struct CPLimitableUserInterface : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var keyboard: CPLimitableUserInterface { get }
  static var lists: CPLimitableUserInterface { get }
}
@available(iOS 13.0, *)
struct CPContentStyle : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var light: CPContentStyle { get }
  static var dark: CPContentStyle { get }
}
@available(iOS 12.0, *)
class CPSessionConfiguration : NSObject {
  init(delegate: CPSessionConfigurationDelegate)
  var limitedUserInterfaces: CPLimitableUserInterface { get }
  @available(iOS 13.0, *)
  var contentStyle: CPContentStyle { get }
  weak var delegate: @sil_weak CPSessionConfigurationDelegate?
}
@available(iOS 12.0, *)
protocol CPSessionConfigurationDelegate : NSObjectProtocol {
  optional func sessionConfiguration(_ sessionConfiguration: CPSessionConfiguration, limitedUserInterfacesChanged limitedUserInterfaces: CPLimitableUserInterface)
  @available(iOS 13.0, *)
  optional func sessionConfiguration(_ sessionConfiguration: CPSessionConfiguration, contentStyleChanged contentStyle: CPContentStyle)
}
