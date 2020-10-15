
protocol UIAppearanceContainer : NSObjectProtocol {
}
protocol UIAppearance : NSObjectProtocol {
  static func appearance() -> Self
  @available(tvOS 9.0, *)
  static func appearance(whenContainedInInstancesOf containerTypes: [UIAppearanceContainer.Type]) -> Self
  @available(tvOS 8.0, *)
  static func appearance(for trait: UITraitCollection) -> Self
  @available(tvOS 9.0, *)
  static func appearance(for trait: UITraitCollection, whenContainedInInstancesOf containerTypes: [UIAppearanceContainer.Type]) -> Self
}
