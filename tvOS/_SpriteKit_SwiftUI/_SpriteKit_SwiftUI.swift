
@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct SpriteView : View {
  @available(watchOS, unavailable)
  struct Options : OptionSet {
    static let allowsTransparency: SpriteView.Options
    static let ignoresSiblingOrder: SpriteView.Options
    static let shouldCullNonVisibleNodes: SpriteView.Options
  }
  init(scene: SKScene, transition: SKTransition? = nil, isPaused: Bool = false, preferredFramesPerSecond: Int = 60)
  @available(watchOS, unavailable)
  init(scene: SKScene, transition: SKTransition? = nil, isPaused: Bool = false, preferredFramesPerSecond: Int = 60, options: SpriteView.Options = [.shouldCullNonVisibleNodes], shouldRender: @escaping (TimeInterval) -> Bool = { _ in true })
}

