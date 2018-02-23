.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadStockProfileImagesResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/Players$LoadStockProfileImagesResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadStockProfileImagesResultImpl"
.end annotation


# instance fields
.field private final zzaZL:Lcom/google/android/gms/games/internal/player/StockProfileImageBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/internal/player/StockProfileImageBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/player/StockProfileImageBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadStockProfileImagesResultImpl;->zzaZL:Lcom/google/android/gms/games/internal/player/StockProfileImageBuffer;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadStockProfileImagesResultImpl;->zzahq:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
