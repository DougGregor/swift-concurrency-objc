
@available(iOS 13.0, *)
class BGTaskRequest : NSObject, NSCopying {
  var identifier: String { get }
  var earliestBeginDate: Date?
}
@available(iOS 13.0, *)
class BGAppRefreshTaskRequest : BGTaskRequest {
  init(identifier: String)
}
@available(iOS 13.0, *)
class BGProcessingTaskRequest : BGTaskRequest {
  init(identifier: String)
  var requiresNetworkConnectivity: Bool
  var requiresExternalPower: Bool
}
