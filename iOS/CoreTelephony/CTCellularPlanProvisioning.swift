
@available(iOS 12.0, *)
class CTCellularPlanProvisioning : NSObject {
  @available(iOS 12.0, *)
  func supportsCellularPlan() -> Bool
  @available(iOS 12.0, *)
  func addPlan(with request: CTCellularPlanProvisioningRequest, completionHandler: @escaping (CTCellularPlanProvisioningAddPlanResult) -> Void)
  @available(iOS 12.0, *)
  func addPlan(with request: CTCellularPlanProvisioningRequest) async -> CTCellularPlanProvisioningAddPlanResult
}
