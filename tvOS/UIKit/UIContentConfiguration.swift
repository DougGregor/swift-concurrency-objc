
@available(tvOS 14.0, *)
protocol __UIContentConfiguration : NSCopying, NSObjectProtocol {
  func makeContentView() -> UIView & __UIContentView
  func updatedConfiguration(for state: __UIConfigurationState) -> Self
}
@available(tvOS 14.0, *)
protocol __UIContentView : NSObjectProtocol {
  @NSCopying var __configuration: __UIContentConfiguration { get set }
}
