{ retry_on :
      ../RetryOnValue/Type.dhall sha256:f4b75c7df63d13e9637cc950fc6109465f6cbaaffb767248e42f963ed36b28b0
    ? ../RetryOnValue/Type.dhall
, num_retries : Optional Natural
, per_try_timeout : Optional Text
}
