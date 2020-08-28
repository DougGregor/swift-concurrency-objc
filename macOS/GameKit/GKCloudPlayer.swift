
@available(macOS, introduced: 10.12, deprecated: 10.14, message: "GKGameSession is deprecated. Use GKPlayer for both real-time and turn-based matchmaking APIs.")
class GKCloudPlayer : GKBasePlayer {
  class func getCurrentSignedInPlayer(forContainer containerName: String?, completionHandler handler: @escaping (GKCloudPlayer?, Error?) -> Void)
  class func getCurrentSignedInPlayer(forContainer containerName: String?) async throws -> GKCloudPlayer?
}
