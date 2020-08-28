
extension ARSession {
  @available(iOS 11.0, *)
  struct RunOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var resetTracking: ARSession.RunOptions { get }
    static var removeExistingAnchors: ARSession.RunOptions { get }
    static var stopTrackedRaycasts: ARSession.RunOptions { get }
    static var resetSceneReconstruction: ARSession.RunOptions { get }
  }
}
@available(iOS 11.0, *)
class ARSession : NSObject {
  @available(iOS 13.0, *)
  var identifier: UUID { get }
  weak var delegate: @sil_weak ARSessionDelegate?
  var delegateQueue: DispatchQueue?
  @NSCopying var currentFrame: ARFrame? { get }
  @NSCopying var configuration: ARConfiguration? { get }
  func run(_ configuration: ARConfiguration, options: ARSession.RunOptions = [])
  func pause()
  func add(anchor: ARAnchor)
  func remove(anchor: ARAnchor)
  @available(iOS 11.3, *)
  func setWorldOrigin(relativeTransform: simd_float4x4)
  @available(iOS 12.0, *)
  func getCurrentWorldMap(completionHandler: @escaping (ARWorldMap?, Error?) -> Void)
  @available(iOS 12.0, *)
  func createReferenceObject(transform: simd_float4x4, center: simd_float3, extent: simd_float3, completionHandler: @escaping (ARReferenceObject?, Error?) -> Void)
  @available(iOS 13.0, *)
  func raycast(_ query: ARRaycastQuery) -> [ARRaycastResult]
  @available(iOS 13.0, *)
  func trackedRaycast(_ query: ARRaycastQuery, updateHandler: @escaping ([ARRaycastResult]) -> Void) -> ARTrackedRaycast?
  @available(iOS 13.0, *)
  func update(with collaborationData: ARSession.CollaborationData)
  @available(iOS 14.0, *)
  func getGeoLocation(forPoint position: simd_float3, completionHandler: @escaping (CLLocationCoordinate2D, CLLocationDistance, Error?) -> Void)
}
@available(iOS 11.0, *)
protocol ARSessionObserver : NSObjectProtocol {
  optional func session(_ session: ARSession, didFailWithError error: Error)
  optional func session(_ session: ARSession, cameraDidChangeTrackingState camera: ARCamera)
  optional func sessionWasInterrupted(_ session: ARSession)
  optional func sessionInterruptionEnded(_ session: ARSession)
  @available(iOS 11.3, *)
  optional func sessionShouldAttemptRelocalization(_ session: ARSession) -> Bool
  optional func session(_ session: ARSession, didOutputAudioSampleBuffer audioSampleBuffer: CMSampleBuffer)
  @available(iOS 13.0, *)
  optional func session(_ session: ARSession, didOutputCollaborationData data: ARSession.CollaborationData)
  @available(iOS 14.0, *)
  optional func session(_ session: ARSession, didChange geoTrackingStatus: ARGeoTrackingStatus)
}
@available(iOS 11.0, *)
protocol ARSessionDelegate : ARSessionObserver {
  optional func session(_ session: ARSession, didUpdate frame: ARFrame)
  optional func session(_ session: ARSession, didAdd anchors: [ARAnchor])
  optional func session(_ session: ARSession, didUpdate anchors: [ARAnchor])
  optional func session(_ session: ARSession, didRemove anchors: [ARAnchor])
}
protocol ARSessionProviding : NSObjectProtocol {
  @available(iOS 11.0, *)
  var session: ARSession { get }
}
