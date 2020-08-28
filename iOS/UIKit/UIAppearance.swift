
protocol UIAppearanceContainer : NSObjectProtocol {
}
protocol UIAppearance : NSObjectProtocol {
  static func appearance() -> Self
  @available(iOS 9.0, *)
  static func appearance(whenContainedInInstancesOf containerTypes: [UIAppearanceContainer.Type]) -> Self
  @available(iOS 8.0, *)
  static func appearance(for trait: UITraitCollection) -> Self
  @available(iOS 9.0, *)
  static func appearance(for trait: UITraitCollection, whenContainedInInstancesOf containerTypes: [UIAppearanceContainer.Type]) -> Self
}
