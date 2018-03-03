.class abstract Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CaptureStreamingMetadataImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/games/video/Videos$CaptureStreamingMetadataResult;",
        ">;"
    }
.end annotation


# virtual methods
.method public zzbk(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$CaptureStreamingMetadataResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$CaptureStreamingMetadataImpl;->zzbk(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$CaptureStreamingMetadataResult;

    move-result-object v0

    return-object v0
.end method
