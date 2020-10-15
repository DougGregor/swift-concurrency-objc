
@available(tvOS, introduced: 10.0, deprecated: 12.0, message: "Use GKLocalPlayerListener for multiplayer event notifications.")
protocol GKGameSessionEventListener : NSObjectProtocol {
  @asyncHandler optional func session(_ session: GKGameSession, didAdd player: GKCloudPlayer)
  @asyncHandler optional func session(_ session: GKGameSession, didRemove player: GKCloudPlayer)
  @asyncHandler optional func session(_ session: GKGameSession, player: GKCloudPlayer, didChange newState: GKConnectionState)
  @asyncHandler optional func session(_ session: GKGameSession, player: GKCloudPlayer, didSave data: Data)
  @asyncHandler optional func session(_ session: GKGameSession, didReceive data: Data, from player: GKCloudPlayer)
  @asyncHandler optional func session(_ session: GKGameSession, didReceiveMessage message: String, with data: Data, from player: GKCloudPlayer)
}
extension GKGameSession {
  @available(tvOS, introduced: 10.0, deprecated: 12.0, message: "Use GKLocalPlayer's registerListener: to register for GKLocalPlayerListener event notifications.")
  class func add(listener: GKGameSessionEventListener)
  @available(tvOS, introduced: 10.0, deprecated: 12.0, message: "Use GKLocalPlayer's unregisterListener: or unregisterAllListeners to unregister from GKLocalPlayerListener event notifications.")
  class func remove(listener: GKGameSessionEventListener)
}
