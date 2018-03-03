.class public final Lcom/google/android/gms/games/internal/notification/GameNotificationBuffer;
.super Lcom/google/android/gms/common/data/AbstractDataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/AbstractDataBuffer",
        "<",
        "Lcom/google/android/gms/games/internal/notification/GameNotification;",
        ">;"
    }
.end annotation


# virtual methods
.method public synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/notification/GameNotificationBuffer;->zziL(I)Lcom/google/android/gms/games/internal/notification/GameNotification;

    move-result-object v0

    return-object v0
.end method

.method public zziL(I)Lcom/google/android/gms/games/internal/notification/GameNotification;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/notification/GameNotificationBuffer;->zzazI:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/games/internal/notification/GameNotificationRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-object v0
.end method
