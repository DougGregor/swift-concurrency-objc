
@available(macOS 10.11, *)
enum MTLPixelFormat : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case invalid
  case a8Unorm
  case r8Unorm
  @available(macOS 11.0, *)
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
  @available(macOS 11.0, *)
  case rg8Unorm_srgb
  case rg8Snorm
  case rg8Uint
  case rg8Sint
  @available(macOS 11.0, *)
  case b5g6r5Unorm
  @available(macOS 11.0, *)
  case a1bgr5Unorm
  @available(macOS 11.0, *)
  case abgr4Unorm
  @available(macOS 11.0, *)
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
  @available(macOS 10.13, *)
  case bgr10a2Unorm
  @available(macOS 11.0, *)
  case bgr10_xr
  @available(macOS 11.0, *)
  case bgr10_xr_srgb
  case rg32Uint
  case rg32Sint
  case rg32Float
  case rgba16Unorm
  case rgba16Snorm
  case rgba16Uint
  case rgba16Sint
  case rgba16Float
  @available(macOS 11.0, *)
  case bgra10_xr
  @available(macOS 11.0, *)
  case bgra10_xr_srgb
  case rgba32Uint
  case rgba32Sint
  case rgba32Float
  @available(macOS 10.11, *)
  case bc1_rgba
  @available(macOS 10.11, *)
  case bc1_rgba_srgb
  @available(macOS 10.11, *)
  case bc2_rgba
  @available(macOS 10.11, *)
  case bc2_rgba_srgb
  @available(macOS 10.11, *)
  case bc3_rgba
  @available(macOS 10.11, *)
  case bc3_rgba_srgb
  @available(macOS 10.11, *)
  case bc4_rUnorm
  @available(macOS 10.11, *)
  case bc4_rSnorm
  @available(macOS 10.11, *)
  case bc5_rgUnorm
  @available(macOS 10.11, *)
  case bc5_rgSnorm
  @available(macOS 10.11, *)
  case bc6H_rgbFloat
  @available(macOS 10.11, *)
  case bc6H_rgbuFloat
  @available(macOS 10.11, *)
  case bc7_rgbaUnorm
  @available(macOS 10.11, *)
  case bc7_rgbaUnorm_srgb
  @available(macOS 11.0, *)
  case pvrtc_rgb_2bpp
  @available(macOS 11.0, *)
  case pvrtc_rgb_2bpp_srgb
  @available(macOS 11.0, *)
  case pvrtc_rgb_4bpp
  @available(macOS 11.0, *)
  case pvrtc_rgb_4bpp_srgb
  @available(macOS 11.0, *)
  case pvrtc_rgba_2bpp
  @available(macOS 11.0, *)
  case pvrtc_rgba_2bpp_srgb
  @available(macOS 11.0, *)
  case pvrtc_rgba_4bpp
  @available(macOS 11.0, *)
  case pvrtc_rgba_4bpp_srgb
  @available(macOS 11.0, *)
  case eac_r11Unorm
  @available(macOS 11.0, *)
  case eac_r11Snorm
  @available(macOS 11.0, *)
  case eac_rg11Unorm
  @available(macOS 11.0, *)
  case eac_rg11Snorm
  @available(macOS 11.0, *)
  case eac_rgba8
  @available(macOS 11.0, *)
  case eac_rgba8_srgb
  @available(macOS 11.0, *)
  case etc2_rgb8
  @available(macOS 11.0, *)
  case etc2_rgb8_srgb
  @available(macOS 11.0, *)
  case etc2_rgb8a1
  @available(macOS 11.0, *)
  case etc2_rgb8a1_srgb
  @available(macOS 11.0, *)
  case astc_4x4_srgb
  @available(macOS 11.0, *)
  case astc_5x4_srgb
  @available(macOS 11.0, *)
  case astc_5x5_srgb
  @available(macOS 11.0, *)
  case astc_6x5_srgb
  @available(macOS 11.0, *)
  case astc_6x6_srgb
  @available(macOS 11.0, *)
  case astc_8x5_srgb
  @available(macOS 11.0, *)
  case astc_8x6_srgb
  @available(macOS 11.0, *)
  case astc_8x8_srgb
  @available(macOS 11.0, *)
  case astc_10x5_srgb
  @available(macOS 11.0, *)
  case astc_10x6_srgb
  @available(macOS 11.0, *)
  case astc_10x8_srgb
  @available(macOS 11.0, *)
  case astc_10x10_srgb
  @available(macOS 11.0, *)
  case astc_12x10_srgb
  @available(macOS 11.0, *)
  case astc_12x12_srgb
  @available(macOS 11.0, *)
  case astc_4x4_ldr
  @available(macOS 11.0, *)
  case astc_5x4_ldr
  @available(macOS 11.0, *)
  case astc_5x5_ldr
  @available(macOS 11.0, *)
  case astc_6x5_ldr
  @available(macOS 11.0, *)
  case astc_6x6_ldr
  @available(macOS 11.0, *)
  case astc_8x5_ldr
  @available(macOS 11.0, *)
  case astc_8x6_ldr
  @available(macOS 11.0, *)
  case astc_8x8_ldr
  @available(macOS 11.0, *)
  case astc_10x5_ldr
  @available(macOS 11.0, *)
  case astc_10x6_ldr
  @available(macOS 11.0, *)
  case astc_10x8_ldr
  @available(macOS 11.0, *)
  case astc_10x10_ldr
  @available(macOS 11.0, *)
  case astc_12x10_ldr
  @available(macOS 11.0, *)
  case astc_12x12_ldr
  @available(macOS 11.0, *)
  case astc_4x4_hdr
  @available(macOS 11.0, *)
  case astc_5x4_hdr
  @available(macOS 11.0, *)
  case astc_5x5_hdr
  @available(macOS 11.0, *)
  case astc_6x5_hdr
  @available(macOS 11.0, *)
  case astc_6x6_hdr
  @available(macOS 11.0, *)
  case astc_8x5_hdr
  @available(macOS 11.0, *)
  case astc_8x6_hdr
  @available(macOS 11.0, *)
  case astc_8x8_hdr
  @available(macOS 11.0, *)
  case astc_10x5_hdr
  @available(macOS 11.0, *)
  case astc_10x6_hdr
  @available(macOS 11.0, *)
  case astc_10x8_hdr
  @available(macOS 11.0, *)
  case astc_10x10_hdr
  @available(macOS 11.0, *)
  case astc_12x10_hdr
  @available(macOS 11.0, *)
  case astc_12x12_hdr
  case gbgr422
  case bgrg422
  @available(macOS 10.12, *)
  case depth16Unorm
  case depth32Float
  case stencil8
  @available(macOS 10.11, *)
  case depth24Unorm_stencil8
  @available(macOS 10.11, *)
  case depth32Float_stencil8
  @available(macOS 10.12, *)
  case x32_stencil8
  @available(macOS 10.12, *)
  case x24_stencil8
}
