.class public final Lcom/google/android/gms/games/internal/api/VideosImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/video/Videos;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/api/VideosImpl$ListVideosImpl;,
        Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingUrlImpl;,
        Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl;,
        Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingAvailabilityImpl;,
        Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStopImpl;,
        Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStateImpl;,
        Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureCapabilitiesImpl;,
        Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureAvailableImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaptureCapabilities(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureCapabilitiesResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/VideosImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/VideosImpl;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method

.method public getCaptureOverlayIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->zzi(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzEv()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getCaptureState(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureStateResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/VideosImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$2;-><init>(Lcom/google/android/gms/games/internal/api/VideosImpl;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method

.method public isCaptureAvailable(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/VideosImpl$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/games/internal/api/VideosImpl$5;-><init>(Lcom/google/android/gms/games/internal/api/VideosImpl;Lcom/google/android/gms/common/api/GoogleApiClient;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method

.method public isCaptureSupported(Lcom/google/android/gms/common/api/GoogleApiClient;)Z
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->zzi(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzEw()Z

    move-result v0

    return v0
.end method

.method public registerCaptureOverlayStateChangedListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/video/Videos$CaptureOverlayStateListener;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/Games;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzr(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaaz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zze(Lcom/google/android/gms/internal/zzaaz;)V

    :cond_0
    return-void
.end method

.method public unregisterCaptureOverlayStateChangedListener(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/Games;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzEx()V

    :cond_0
    return-void
.end method
