
struct GKBox {
  var boxMin: vector_float3
  var boxMax: vector_float3
  init()
  init(boxMin: vector_float3, boxMax: vector_float3)
}
struct GKQuad {
  var quadMin: vector_float2
  var quadMax: vector_float2
  init()
  init(quadMin: vector_float2, quadMax: vector_float2)
}
struct GKTriangle {
  var points: (vector_float3, vector_float3, vector_float3)
  init()
  init(points: (vector_float3, vector_float3, vector_float3))
}
