
@available(macOS 10.4, *)
let ICButtonTypeScan: String
@available(macOS 10.4, *)
let ICButtonTypeMail: String
@available(macOS 10.4, *)
let ICButtonTypeCopy: String
@available(macOS 10.4, *)
let ICButtonTypeWeb: String
@available(macOS 10.4, *)
let ICButtonTypePrint: String
@available(macOS 10.4, *)
let ICButtonTypeTransfer: String
@available(macOS 10.4, *)
let ICScannerStatusWarmingUp: String
@available(macOS 10.4, *)
let ICScannerStatusWarmUpDone: String
@available(macOS 10.4, *)
let ICScannerStatusRequestsOverviewScan: String
@available(macOS 10.7, *)
enum ICScannerTransferMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case fileBased
  case memoryBased
}
@available(macOS 10.4, *)
protocol ICScannerDeviceDelegate : ICDeviceDelegate {
  @available(macOS 10.4, *)
  @asyncHandler optional func scannerDeviceDidBecomeAvailable(_ scanner: ICScannerDevice)
  @available(macOS 10.4, *)
  @asyncHandler optional func scannerDevice(_ scanner: ICScannerDevice, didSelect functionalUnit: ICScannerFunctionalUnit, error: Error?)
  @available(macOS 10.7, *)
  @asyncHandler optional func scannerDevice(_ scanner: ICScannerDevice, didScanTo url: URL)
  @available(macOS 10.7, *)
  @asyncHandler optional func scannerDevice(_ scanner: ICScannerDevice, didScanTo data: ICScannerBandData)
  @available(macOS 10.4, *)
  @asyncHandler optional func scannerDevice(_ scanner: ICScannerDevice, didCompleteOverviewScanWithError error: Error?)
  @available(macOS 10.4, *)
  @asyncHandler optional func scannerDevice(_ scanner: ICScannerDevice, didCompleteScanWithError error: Error?)
}
@available(macOS 10.4, *)
class ICScannerDevice : ICDevice {
  @available(macOS 10.4, *)
  var availableFunctionalUnitTypes: [NSNumber] { get }
  @available(macOS 10.4, *)
  var selectedFunctionalUnit: ICScannerFunctionalUnit { get }
  @available(macOS 10.4, *)
  var transferMode: ICScannerTransferMode
  @available(macOS 10.4, *)
  var maxMemoryBandSize: UInt32
  @available(macOS 10.4, *)
  var downloadsDirectory: URL
  @available(macOS 10.4, *)
  var documentName: String
  @available(macOS 10.4, *)
  var documentUTI: String
  @available(macOS 10.4, *)
  var defaultUsername: String
  @available(macOS 10.4, *)
  func requestOpenSession(withCredentials username: String, password: String)
  @available(macOS 10.4, *)
  func requestSelect(_ type: ICScannerFunctionalUnitType)
  @available(macOS 10.4, *)
  func requestOverviewScan()
  @available(macOS 10.4, *)
  func requestScan()
  @available(macOS 10.4, *)
  func cancelScan()
}
