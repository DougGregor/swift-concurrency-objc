
extension ARConfiguration {
  @available(iOS 13.0, *)
  struct FrameSemantics : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var personSegmentation: ARConfiguration.FrameSemantics { get }
    static var personSegmentationWithDepth: ARConfiguration.FrameSemantics { get }
    static var bodyDetection: ARConfiguration.FrameSemantics { get }
    @available(iOS 14.0, *)
    static var sceneDepth: ARConfiguration.FrameSemantics { get }
    @available(iOS 14.0, *)
    static var smoothedSceneDepth: ARConfiguration.FrameSemantics { get }
  }
  @available(iOS 11.0, *)
  enum WorldAlignment : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case gravity
    case gravityAndHeading
    case camera
  }
  @available(iOS 13.4, *)
  struct SceneReconstruction : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var mesh: ARConfiguration.SceneReconstruction { get }
    static var meshWithClassification: ARConfiguration.SceneReconstruction { get }
  }
}
extension ARWorldTrackingConfiguration {
  @available(iOS 12.0, *)
  enum EnvironmentTexturing : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case manual
    case automatic
  }
  @available(iOS 11.0, *)
  struct PlaneDetection : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var horizontal: ARWorldTrackingConfiguration.PlaneDetection { get }
    @available(iOS 11.3, *)
    static var vertical: ARWorldTrackingConfiguration.PlaneDetection { get }
  }
}
@available(iOS 11.0, *)
class ARConfiguration : NSObject, NSCopying {
  class var isSupported: Bool { get }
  @available(iOS 11.3, *)
  class var supportedVideoFormats: [ARConfiguration.VideoFormat] { get }
  @available(iOS 11.3, *)
  var videoFormat: ARConfiguration.VideoFormat
  var worldAlignment: ARConfiguration.WorldAlignment
  var isLightEstimationEnabled: Bool
  var providesAudioData: Bool
  @available(iOS 13.0, *)
  var frameSemantics: ARConfiguration.FrameSemantics
  @available(iOS 13.0, *)
  class func supportsFrameSemantics(_ frameSemantics: ARConfiguration.FrameSemantics) -> Bool
}
@available(iOS 11.0, *)
class ARWorldTrackingConfiguration : ARConfiguration {
  @available(iOS 11.3, *)
  var isAutoFocusEnabled: Bool
  @available(iOS 12.0, *)
  var environmentTexturing: ARWorldTrackingConfiguration.EnvironmentTexturing
  @available(iOS 13.0, *)
  var wantsHDREnvironmentTextures: Bool
  var planeDetection: ARWorldTrackingConfiguration.PlaneDetection
  @available(iOS 12.0, *)
  var initialWorldMap: ARWorldMap?
  @available(iOS 11.3, *)
  var detectionImages: Set<ARReferenceImage>!
  @available(iOS 13.0, *)
  var automaticImageScaleEstimationEnabled: Bool
  @available(iOS 12.0, *)
  var maximumNumberOfTrackedImages: Int
  @available(iOS 12.0, *)
  var detectionObjects: Set<ARReferenceObject>
  @available(iOS 13.0, *)
  var isCollaborationEnabled: Bool
  @available(iOS 13.0, *)
  class var supportsUserFaceTracking: Bool { get }
  @available(iOS 13.0, *)
  var userFaceTrackingEnabled: Bool
  @available(iOS 13.4, *)
  class func supportsSceneReconstruction(_ sceneReconstruction: ARConfiguration.SceneReconstruction) -> Bool
  @available(iOS 13.4, *)
  var sceneReconstruction: ARConfiguration.SceneReconstruction
}
@available(iOS 11.0, *)
class AROrientationTrackingConfiguration : ARConfiguration {
  @available(iOS 11.3, *)
  var isAutoFocusEnabled: Bool
}
@available(iOS 11.0, *)
class ARFaceTrackingConfiguration : ARConfiguration {
  @available(iOS 13.0, *)
  class var supportedNumberOfTrackedFaces: Int { get }
  @available(iOS 13.0, *)
  var maximumNumberOfTrackedFaces: Int
  @available(iOS 13.0, *)
  class var supportsWorldTracking: Bool { get }
  @available(iOS 13.0, *)
  var isWorldTrackingEnabled: Bool
}
@available(iOS 12.0, *)
class ARImageTrackingConfiguration : ARConfiguration {
  var isAutoFocusEnabled: Bool
  var trackingImages: Set<ARReferenceImage>
  var maximumNumberOfTrackedImages: Int
}
@available(iOS 12.0, *)
class ARObjectScanningConfiguration : ARConfiguration {
  var isAutoFocusEnabled: Bool
  var planeDetection: ARWorldTrackingConfiguration.PlaneDetection
}
@available(iOS 13.0, *)
class ARBodyTrackingConfiguration : ARConfiguration {
  var isAutoFocusEnabled: Bool
  var initialWorldMap: ARWorldMap?
  var environmentTexturing: ARWorldTrackingConfiguration.EnvironmentTexturing
  var wantsHDREnvironmentTextures: Bool
  var planeDetection: ARWorldTrackingConfiguration.PlaneDetection
  var detectionImages: Set<ARReferenceImage>
  var automaticImageScaleEstimationEnabled: Bool
  var automaticSkeletonScaleEstimationEnabled: Bool
  var maximumNumberOfTrackedImages: Int
}
@available(iOS 13.0, *)
class ARPositionalTrackingConfiguration : ARConfiguration {
  var planeDetection: ARWorldTrackingConfiguration.PlaneDetection
  var initialWorldMap: ARWorldMap?
}
@available(iOS 14.0, *)
class ARGeoTrackingConfiguration : ARConfiguration {
  var environmentTexturing: ARWorldTrackingConfiguration.EnvironmentTexturing
  var wantsHDREnvironmentTextures: Bool
  var planeDetection: ARWorldTrackingConfiguration.PlaneDetection
  var detectionImages: Set<ARReferenceImage>!
  var automaticImageScaleEstimationEnabled: Bool
  var maximumNumberOfTrackedImages: Int
  var detectionObjects: Set<ARReferenceObject>
  class func checkAvailability(completionHandler: @escaping (Bool, Error?) -> Void)
  class func checkAvailability(at coordinate: CLLocationCoordinate2D, completionHandler: @escaping (Bool, Error?) -> Void)
}
