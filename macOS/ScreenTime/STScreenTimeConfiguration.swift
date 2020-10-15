
@available(macOS 11.0, *)
class STScreenTimeConfiguration : NSObject {
  var enforcesChildRestrictions: Bool { get }
}
@available(macOS 11.0, *)
class STScreenTimeConfigurationObserver : NSObject {
  init(updateQueue: DispatchQueue)
  func startObserving()
  func stopObserving()
  var configuration: STScreenTimeConfiguration? { get }
}
