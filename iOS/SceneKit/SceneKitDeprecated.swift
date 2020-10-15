
extension SCNLight : SCNTechniqueSupport {
}
extension SCNCamera {
  @available(iOS, introduced: 8.0, deprecated: 11.0, message: "Use fStop instead")
  var focalBlurRadius: CGFloat
  @available(iOS, introduced: 8.0, deprecated: 11.0, message: "Use -[SCNCamera fieldOfView] or -[SCNCamera focalLength] instead")
  var xFov: Double
  @available(iOS, introduced: 8.0, deprecated: 11.0, message: "Use -[SCNCamera fieldOfView] or -[SCNCamera focalLength] instead")
  var yFov: Double
  @available(iOS, introduced: 8.0, deprecated: 11.0, message: "Use -[SCNCamera fStop] instead with fStop = sensorHeight / aperture.")
  var aperture: CGFloat
  @available(iOS, introduced: 8.0, deprecated: 11.0)
  var focalSize: CGFloat
  @available(iOS, introduced: 8.0, deprecated: 11.0)
  var focalDistance: CGFloat
}
extension SCNRenderer {
  @available(iOS, introduced: 8.0, deprecated: 9.0)
  func render()
}
extension SCNMaterialProperty {
  @available(iOS, introduced: 8.0, deprecated: 10.0, message: "Deprecated")
  var borderColor: Any?
}
