.class abstract Lcom/google/android/gms/games/internal/api/VideosImpl$ListVideosImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/VideosImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ListVideosImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/games/video/Videos$ListVideosResult;",
        ">;"
    }
.end annotation


# virtual methods
.method public zzbm(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$ListVideosResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/api/VideosImpl$ListVideosImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$ListVideosImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/VideosImpl$ListVideosImpl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/VideosImpl$ListVideosImpl;->zzbm(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/video/Videos$ListVideosResult;

    move-result-object v0

    return-object v0
.end method
