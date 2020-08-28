
@available(macOS 10.11, *)
class GKMinmaxStrategist : NSObject, GKStrategist {
  var maxLookAheadDepth: Int
  func bestMove(for player: GKGameModelPlayer) -> GKGameModelUpdate?
  func randomMove(for player: GKGameModelPlayer, fromNumberOfBestMoves numMovesToConsider: Int) -> GKGameModelUpdate?
}
