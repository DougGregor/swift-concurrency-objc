
@available(tvOS 8.0, *)
enum MTLPixelFormat : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case invalid
  case a8Unorm
  case r8Unorm
  @available(tvOS 8.0, *)
  case r8Unorm_srgb
  case r8Snorm
  case r8Uint
  case r8Sint
  case r16Unorm
  case r16Snorm
  case r16Uint
  case r16Sint
  case r16Float
  case rg8Unorm
  @available(tvOS 8.0, *)
  case rg8Unorm_srgb
  case rg8Snorm
  case rg8Uint
  case rg8Sint
  @available(tvOS 8.0, *)
  case b5g6r5Unorm
  @available(tvOS 8.0, *)
  case a1bgr5Unorm
  @available(tvOS 8.0, *)
  case abgr4Unorm
  @available(tvOS 8.0, *)
  case bgr5A1Unorm
  case r32Uint
  case r32Sint
  case r32Float
  case rg16Unorm
  case rg16Snorm
  case rg16Uint
  case rg16Sint
  case rg16Float
  case rgba8Unorm
  case rgba8Unorm_srgb
  case rgba8Snorm
  case rgba8Uint
  case rgba8Sint
  case bgra8Unorm
  case bgra8Unorm_srgb
  case rgb10a2Unorm
  case rgb10a2Uint
  case rg11b10Float
  case rgb9e5Float
  @available(tvOS 11.0, *)
  case bgr10a2Unorm
  @available(tvOS 10.0, *)
  case bgr10_xr
  @available(tvOS 10.0, *)
  case bgr10_xr_srgb
  case rg32Uint
  case rg32Sint
  case rg32Float
  case rgba16Unorm
  case rgba16Snorm
  case rgba16Uint
  case rgba16Sint
  case rgba16Float
  @available(tvOS 10.0, *)
  case bgra10_xr
  @available(tvOS 10.0, *)
  case bgra10_xr_srgb
  case rgba32Uint
  case rgba32Sint
  case rgba32Float
  @available(tvOS 8.0, *)
  case pvrtc_rgb_2bpp
  @available(tvOS 8.0, *)
  case pvrtc_rgb_2bpp_srgb
  @available(tvOS 8.0, *)
  case pvrtc_rgb_4bpp
  @available(tvOS 8.0, *)
  case pvrtc_rgb_4bpp_srgb
  @available(tvOS 8.0, *)
  case pvrtc_rgba_2bpp
  @available(tvOS 8.0, *)
  case pvrtc_rgba_2bpp_srgb
  @available(tvOS 8.0, *)
  case pvrtc_rgba_4bpp
  @available(tvOS 8.0, *)
  case pvrtc_rgba_4bpp_srgb
  @available(tvOS 8.0, *)
  case eac_r11Unorm
  @available(tvOS 8.0, *)
  case eac_r11Snorm
  @available(tvOS 8.0, *)
  case eac_rg11Unorm
  @available(tvOS 8.0, *)
  case eac_rg11Snorm
  @available(tvOS 8.0, *)
  case eac_rgba8
  @available(tvOS 8.0, *)
  case eac_rgba8_srgb
  @available(tvOS 8.0, *)
  case etc2_rgb8
  @available(tvOS 8.0, *)
  case etc2_rgb8_srgb
  @available(tvOS 8.0, *)
  case etc2_rgb8a1
  @available(tvOS 8.0, *)
  case etc2_rgb8a1_srgb
  @available(tvOS 8.0, *)
  case astc_4x4_srgb
  @available(tvOS 8.0, *)
  case astc_5x4_srgb
  @available(tvOS 8.0, *)
  case astc_5x5_srgb
  @available(tvOS 8.0, *)
  case astc_6x5_srgb
  @available(tvOS 8.0, *)
  case astc_6x6_srgb
  @available(tvOS 8.0, *)
  case astc_8x5_srgb
  @available(tvOS 8.0, *)
  case astc_8x6_srgb
  @available(tvOS 8.0, *)
  case astc_8x8_srgb
  @available(tvOS 8.0, *)
  case astc_10x5_srgb
  @available(tvOS 8.0, *)
  case astc_10x6_srgb
  @available(tvOS 8.0, *)
  case astc_10x8_srgb
  @available(tvOS 8.0, *)
  case astc_10x10_srgb
  @available(tvOS 8.0, *)
  case astc_12x10_srgb
  @available(tvOS 8.0, *)
  case astc_12x12_srgb
  @available(tvOS 8.0, *)
  case astc_4x4_ldr
  @available(tvOS 8.0, *)
  case astc_5x4_ldr
  @available(tvOS 8.0, *)
  case astc_5x5_ldr
  @available(tvOS 8.0, *)
  case astc_6x5_ldr
  @available(tvOS 8.0, *)
  case astc_6x6_ldr
  @available(tvOS 8.0, *)
  case astc_8x5_ldr
  @available(tvOS 8.0, *)
  case astc_8x6_ldr
  @available(tvOS 8.0, *)
  case astc_8x8_ldr
  @available(tvOS 8.0, *)
  case astc_10x5_ldr
  @available(tvOS 8.0, *)
  case astc_10x6_ldr
  @available(tvOS 8.0, *)
  case astc_10x8_ldr
  @available(tvOS 8.0, *)
  case astc_10x10_ldr
  @available(tvOS 8.0, *)
  case astc_12x10_ldr
  @available(tvOS 8.0, *)
  case astc_12x12_ldr
  case gbgr422
  case bgrg422
  @available(tvOS 13.0, *)
  case depth16Unorm
  case depth32Float
  case stencil8
  @available(tvOS 9.0, *)
  case depth32Float_stencil8
  @available(tvOS 10.0, *)
  case x32_stencil8
}
