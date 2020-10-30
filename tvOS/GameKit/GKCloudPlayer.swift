
@available(tvOS, introduced: 10.0, deprecated: 12.0, message: "GKGameSession is deprecated. Use GKPlayer for both real-time and turn-based matchmaking APIs.")
class GKCloudPlayer : GKBasePlayer {
  class func getCurrentSignedInPlayer(forContainer containerName: String?, completionHandler handler: @escaping (GKCloudPlayer?, Error?) -> Void)
  class func currentSignedInPlayer(forContainer containerName: String?) async throws -> GKCloudPlayer
}
