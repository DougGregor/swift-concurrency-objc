
@available(iOS 11.0, *)
let ARErrorDomain: String
@available(iOS 11.0, *)
struct ARError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unsupportedConfiguration: ARError.Code { get }
  static var sensorUnavailable: ARError.Code { get }
  static var sensorFailed: ARError.Code { get }
  static var cameraUnauthorized: ARError.Code { get }
  static var microphoneUnauthorized: ARError.Code { get }
  @available(iOS 14.0, *)
  static var locationUnauthorized: ARError.Code { get }
  static var worldTrackingFailed: ARError.Code { get }
  @available(iOS 14.0, *)
  static var geoTrackingNotAvailableAtLocation: ARError.Code { get }
  @available(iOS 14.0, *)
  static var geoTrackingFailed: ARError.Code { get }
  @available(iOS 11.3, *)
  static var invalidReferenceImage: ARError.Code { get }
  @available(iOS 12.0, *)
  static var invalidReferenceObject: ARError.Code { get }
  @available(iOS 12.0, *)
  static var invalidWorldMap: ARError.Code { get }
  @available(iOS 12.0, *)
  static var invalidConfiguration: ARError.Code { get }
  @available(iOS, introduced: 13.0, deprecated: 13.2, renamed: "ARError.invalidCollaborationData")
  static var collaborationDataUnavailable: ARError.Code { get }
  @available(iOS 13.2, *)
  static var invalidCollaborationData: ARError.Code { get }
  @available(iOS 12.0, *)
  static var insufficientFeatures: ARError.Code { get }
  @available(iOS 12.0, *)
  static var objectMergeFailed: ARError.Code { get }
  @available(iOS 12.0, *)
  static var fileIOFailed: ARError.Code { get }
  @available(iOS 14.0, *)
  static var requestFailed: ARError.Code { get }
}
