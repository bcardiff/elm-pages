module Pages.Internal.Platform.Effect exposing (..)

import Pages.Internal.Platform.ToJsPayload exposing (ToJsPayload, ToJsSuccessPayloadNewCombined)
import Pages.StaticHttp exposing (RequestDetails)


type Effect pathKey
    = NoEffect
    | SendJsData (ToJsPayload pathKey)
    | FetchHttp { masked : RequestDetails, unmasked : RequestDetails }
    | ReadFile String
    | GetGlob String
    | Batch (List (Effect pathKey))
    | SendSinglePage (ToJsSuccessPayloadNewCombined pathKey)
    | Continue
