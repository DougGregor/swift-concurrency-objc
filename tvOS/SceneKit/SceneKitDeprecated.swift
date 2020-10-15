
extension SCNLight : SCNTechniqueSupport {
}
extension SCNCamera {
  @available(tvOS, introduced: 9.0, deprecated: 11.0, message: "Use fStop instead")
  var focalBlurRadius: CGFloat
  @available(tvOS, introduced: 9.0, deprecated: 11.0, message: "Use -[SCNCamera fieldOfView] or -[SCNCamera focalLength] instead")
  var xFov: Double
  @available(tvOS, introduced: 9.0, deprecated: 11.0, message: "Use -[SCNCamera fieldOfView] or -[SCNCamera focalLength] instead")
  var yFov: Double
  @available(tvOS, introduced: 9.0, deprecated: 11.0, message: "Use -[SCNCamera fStop] instead with fStop = sensorHeight / aperture.")
  var aperture: CGFloat
  @available(tvOS, introduced: 9.0, deprecated: 11.0)
  var focalSize: CGFloat
  @available(tvOS, introduced: 9.0, deprecated: 11.0)
  var focalDistance: CGFloat
}
extension SCNRenderer {
}
extension SCNMaterialProperty {
}
