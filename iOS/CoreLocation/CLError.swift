
struct CLError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var locationUnknown: CLError.Code { get }
  static var denied: CLError.Code { get }
  static var network: CLError.Code { get }
  static var headingFailure: CLError.Code { get }
  static var regionMonitoringDenied: CLError.Code { get }
  static var regionMonitoringFailure: CLError.Code { get }
  static var regionMonitoringSetupDelayed: CLError.Code { get }
  static var regionMonitoringResponseDelayed: CLError.Code { get }
  static var geocodeFoundNoResult: CLError.Code { get }
  static var geocodeFoundPartialResult: CLError.Code { get }
  static var geocodeCanceled: CLError.Code { get }
  static var deferredFailed: CLError.Code { get }
  static var deferredNotUpdatingLocation: CLError.Code { get }
  static var deferredAccuracyTooLow: CLError.Code { get }
  static var deferredDistanceFiltered: CLError.Code { get }
  static var deferredCanceled: CLError.Code { get }
  static var rangingUnavailable: CLError.Code { get }
  static var rangingFailure: CLError.Code { get }
  static var promptDeclined: CLError.Code { get }
}

extension CLError {
  var alternateRegion: CLRegion? { get }
}
@available(iOS 5.0, *)
let kCLErrorUserInfoAlternateRegionKey: String
