
extension ARGeoTrackingStatus {
  @available(iOS 14.0, *)
  enum State : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case notAvailable
    case initializing
    case localizing
    case localized
  }
  @available(iOS 14.0, *)
  enum Accuracy : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case undetermined
    case low
    case medium
    case high
  }
  @available(iOS 14.0, *)
  enum StateReason : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case notAvailableAtLocation
    case needLocationPermissions
    case worldTrackingUnstable
    case waitingForLocation
    case waitingForAvailabilityCheck
    case geoDataNotLoaded
    case devicePointedTooLow
    case visualLocalizationFailed
  }
}
@available(iOS 14.0, *)
class ARGeoTrackingStatus : NSObject, NSCopying, NSSecureCoding {
  var state: ARGeoTrackingStatus.State { get }
  var accuracy: ARGeoTrackingStatus.Accuracy { get }
  var stateReason: ARGeoTrackingStatus.StateReason { get }
}
