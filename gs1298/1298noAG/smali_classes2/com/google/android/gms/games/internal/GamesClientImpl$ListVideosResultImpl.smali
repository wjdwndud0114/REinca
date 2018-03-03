.class final Lcom/google/android/gms/games/internal/GamesClientImpl$ListVideosResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/video/Videos$ListVideosResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListVideosResultImpl"
.end annotation


# instance fields
.field private final zzaZv:Lcom/google/android/gms/games/video/VideoBuffer;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/video/VideoBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/video/VideoBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ListVideosResultImpl;->zzaZv:Lcom/google/android/gms/games/video/VideoBuffer;

    return-void
.end method
