
protocol CIFilterConstructor {
  @available(macOS 10.4, *)
  func filter(withName name: String) -> CIFilter?
}
