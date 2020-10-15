
class DRBurn : NSObject {
  /*not inherited*/ init!(for device: DRDevice!)
  init!(device: DRDevice!)
  func writeLayout(_ layout: Any!)
  func status() -> [AnyHashable : Any]!
  func abort()
  func properties() -> [AnyHashable : Any]!
  func setProperties(_ properties: [AnyHashable : Any]!)
  func device() -> DRDevice!
}
extension DRBurn {
  func requestedBurnSpeed() -> Float
  func setRequestedBurnSpeed(_ speed: Float)
  func appendable() -> Bool
  func setAppendable(_ appendable: Bool)
  func verifyDisc() -> Bool
  func setVerifyDisc(_ verify: Bool)
  func completionAction() -> String!
  func setCompletionAction(_ action: String!)
}
@available(macOS 10.2, *)
let DRBurnRequestedSpeedKey: String
@available(macOS 10.2, *)
let DRBurnAppendableKey: String
@available(macOS 10.3, *)
let DRBurnOverwriteDiscKey: String
@available(macOS 10.2, *)
let DRBurnVerifyDiscKey: String
@available(macOS 10.2, *)
let DRBurnCompletionActionKey: String
@available(macOS 10.2, *)
let DRBurnUnderrunProtectionKey: String
@available(macOS 10.2, *)
let DRBurnTestingKey: String
@available(macOS 10.2, *)
let DRSynchronousBehaviorKey: String
@available(macOS 10.3, *)
let DRBurnFailureActionKey: String
@available(macOS 10.3, *)
let DRMediaCatalogNumberKey: String
@available(macOS 10.4, *)
let DRBurnDoubleLayerL0DataZoneBlocksKey: String
@available(macOS 10.3, *)
let DRBurnStrategyKey: String
@available(macOS 10.3, *)
let DRBurnStrategyIsRequiredKey: String
@available(macOS 10.4, *)
let DRCDTextKey: String
@available(macOS 10.2, *)
let DRBurnCompletionActionEject: String
@available(macOS 10.2, *)
let DRBurnCompletionActionMount: String
@available(macOS 10.3, *)
let DRBurnFailureActionEject: String
@available(macOS 10.3, *)
let DRBurnFailureActionNone: String
@available(macOS 10.3, *)
let DRBurnStrategyCDTAO: String
@available(macOS 10.3, *)
let DRBurnStrategyCDSAO: String
@available(macOS 10.3, *)
let DRBurnStrategyDVDDAO: String
@available(macOS 10.5, *)
let DRBurnStrategyBDDAO: String
extension NSNotification.Name {
  @available(macOS 10.2, *)
  static let DRBurnStatusChanged: NSNotification.Name
}
