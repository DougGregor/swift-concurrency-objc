
@available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
struct VideoPlayer<VideoOverlay> : View where VideoOverlay : View {
  init(player: AVPlayer?, @ViewBuilder videoOverlay: () -> VideoOverlay)
}

@available(iOS 14.0, macOS 11.0, watchOS 7.0, tvOS 14.0, *)
extension VideoPlayer where VideoOverlay == EmptyView {
  init(player: AVPlayer?)
}

