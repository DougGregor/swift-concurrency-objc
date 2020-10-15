
enum MDLTextureChannelEncoding : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case uInt8
  static var uint8: MDLTextureChannelEncoding { get }
  case uInt16
  static var uint16: MDLTextureChannelEncoding { get }
  case uInt24
  static var uint24: MDLTextureChannelEncoding { get }
  case uInt32
  static var uint32: MDLTextureChannelEncoding { get }
  case float16
  case float16SR
  case float32
}
@available(tvOS 9.0, *)
class MDLTexture : NSObject, MDLNamed {
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: Bundle?)
  @available(tvOS 12.0, *)
  convenience init?(named name: String, assetResolver resolver: MDLAssetResolver)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: Bundle?)
  class func irradianceTextureCube(with texture: MDLTexture, name: String?, dimensions: vector_int2) -> Self
  class func irradianceTextureCube(with texture: MDLTexture, name: String?, dimensions: vector_int2, roughness: Float) -> Self
  init(data pixelData: Data?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  func write(to URL: URL) -> Bool
  @available(tvOS 11.0, *)
  func write(to URL: URL, level: Int) -> Bool
  func write(to nsurl: URL, type: CFString) -> Bool
  @available(tvOS 11.0, *)
  func write(to nsurl: URL, type: CFString, level: Int) -> Bool
  func imageFromTexture() -> Unmanaged<CGImage>?
  @available(tvOS 11.0, *)
  func imageFromTexture(atLevel level: Int) -> Unmanaged<CGImage>?
  func texelDataWithTopLeftOrigin() -> Data?
  func texelDataWithBottomLeftOrigin() -> Data?
  func texelDataWithTopLeftOrigin(atMipLevel level: Int, create: Bool) -> Data?
  func texelDataWithBottomLeftOrigin(atMipLevel level: Int, create: Bool) -> Data?
  var dimensions: vector_int2 { get }
  var rowStride: Int { get }
  var channelCount: Int { get }
  var mipLevelCount: Int { get }
  var channelEncoding: MDLTextureChannelEncoding { get }
  var isCube: Bool
  var hasAlphaValues: Bool
}
@available(tvOS 9.0, *)
class MDLURLTexture : MDLTexture {
  init(url URL: URL, name: String?)
  var url: URL
}
@available(tvOS 9.0, *)
class MDLCheckerboardTexture : MDLTexture {
  init(divisions: Float, name: String?, dimensions: vector_int2, channelCount: Int32, channelEncoding: MDLTextureChannelEncoding, color1: CGColor, color2: CGColor)
  var divisions: Float
  var color1: CGColor?
  var color2: CGColor?
}
@available(tvOS 9.0, *)
class MDLSkyCubeTexture : MDLTexture {
  init(name: String?, channelEncoding: MDLTextureChannelEncoding, textureDimensions: vector_int2, turbidity: Float, sunElevation: Float, upperAtmosphereScattering: Float, groundAlbedo: Float)
  @available(tvOS 11.0, *)
  init(name: String?, channelEncoding: MDLTextureChannelEncoding, textureDimensions: vector_int2, turbidity: Float, sunElevation: Float, sunAzimuth: Float, upperAtmosphereScattering: Float, groundAlbedo: Float)
  func update()
  var turbidity: Float
  var sunElevation: Float
  @available(tvOS 11.0, *)
  var sunAzimuth: Float
  var upperAtmosphereScattering: Float
  var groundAlbedo: Float
  var horizonElevation: Float
  var groundColor: CGColor?
  var gamma: Float
  var exposure: Float
  var brightness: Float
  var contrast: Float
  var saturation: Float
  var highDynamicRangeCompression: vector_float2
}
@available(tvOS 9.0, *)
class MDLColorSwatchTexture : MDLTexture {
  init(colorTemperatureGradientFrom colorTemperature1: Float, toColorTemperature colorTemperature2: Float, name: String?, textureDimensions: vector_int2)
  init(colorGradientFrom color1: CGColor, to color2: CGColor, name: String?, textureDimensions: vector_int2)
}
@available(tvOS 9.0, *)
class MDLNoiseTexture : MDLTexture {
  init(vectorNoiseWithSmoothness smoothness: Float, name: String?, textureDimensions: vector_int2, channelEncoding: MDLTextureChannelEncoding)
  init(scalarNoiseWithSmoothness smoothness: Float, name: String?, textureDimensions: vector_int2, channelCount: Int32, channelEncoding: MDLTextureChannelEncoding, grayscale: Bool)
  @available(tvOS 11.0, *)
  init(cellularNoiseWithFrequency frequency: Float, name: String?, textureDimensions: vector_int2, channelEncoding: MDLTextureChannelEncoding)
}
@available(tvOS 9.0, *)
class MDLNormalMapTexture : MDLTexture {
  init(byGeneratingNormalMapWith sourceTexture: MDLTexture, name: String?, smoothness: Float, contrast: Float)
}
