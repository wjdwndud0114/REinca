.class public final Lcom/google/android/gms/games/internal/game/GameBadgeBuffer;
.super Lcom/google/android/gms/common/data/AbstractDataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/AbstractDataBuffer",
        "<",
        "Lcom/google/android/gms/games/internal/game/GameBadge;",
        ">;"
    }
.end annotation


# virtual methods
.method public synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/game/GameBadgeBuffer;->zziF(I)Lcom/google/android/gms/games/internal/game/GameBadge;

    move-result-object v0

    return-object v0
.end method

.method public zziF(I)Lcom/google/android/gms/games/internal/game/GameBadge;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/internal/game/GameBadgeRef;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/game/GameBadgeBuffer;->zzazI:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/games/internal/game/GameBadgeRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-object v0
.end method
