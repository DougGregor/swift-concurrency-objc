
@available(macOS 10.10, *)
protocol GKSavedGameListener : NSObjectProtocol {
  @available(macOS 10.10, *)
  @asyncHandler optional func player(_ player: GKPlayer, didModifySavedGame savedGame: GKSavedGame)
  @available(macOS 10.10, *)
  optional func player(_ player: GKPlayer, hasConflictingSavedGames savedGames: [GKSavedGame])
}
