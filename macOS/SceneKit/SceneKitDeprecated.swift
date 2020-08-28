
@available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use SCNLight.attenuationStartDistance instead")
let SCNLightAttenuationStartKey: String
@available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use SCNLight.attenuationEndDistance instead")
let SCNLightAttenuationEndKey: String
@available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use SCNLight.attenuationFalloffExponent instead")
let SCNLightAttenuationFalloffExponentKey: String
@available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use SCNLight.spotInnerAngle instead")
let SCNLightSpotInnerAngleKey: String
@available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use SCNLight.spotOuterAngle instead")
let SCNLightSpotOuterAngleKey: String
@available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use SCNLight.zNear instead")
let SCNLightShadowNearClippingKey: String
@available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use SCNLight.zFar instead")
let SCNLightShadowFarClippingKey: String
extension SCNLight : SCNTechniqueSupport {
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use SCNLight properties instead")
  func attribute(forKey key: String) -> Any?
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use SCNLight properties instead")
  func setAttribute(_ attribute: Any?, forKey key: String)
}
extension SCNCamera {
  @available(macOS, introduced: 10.8, deprecated: 10.13, message: "Use fStop instead")
  var focalBlurRadius: CGFloat
  @available(macOS, introduced: 10.8, deprecated: 10.13, message: "Use -[SCNCamera fieldOfView] or -[SCNCamera focalLength] instead")
  var xFov: Double
  @available(macOS, introduced: 10.8, deprecated: 10.13, message: "Use -[SCNCamera fieldOfView] or -[SCNCamera focalLength] instead")
  var yFov: Double
  @available(macOS, introduced: 10.8, deprecated: 10.13, message: "Use -[SCNCamera fStop] instead with fStop = sensorHeight / aperture.")
  var aperture: CGFloat
  @available(macOS, introduced: 10.9, deprecated: 10.13)
  var focalSize: CGFloat
  @available(macOS, introduced: 10.9, deprecated: 10.13)
  var focalDistance: CGFloat
}
extension SCNRenderer {
  @available(macOS, introduced: 10.8, deprecated: 10.11)
  func render()
}
extension SCNMaterialProperty {
  @available(macOS, introduced: 10.8, deprecated: 10.12, message: "Deprecated")
  var borderColor: Any?
}
