.class public final Lcom/google/android/gms/games/request/GameRequestBuffer;
.super Lcom/google/android/gms/common/data/zzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/zzf",
        "<",
        "Lcom/google/android/gms/games/request/GameRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/zzf;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzn(II)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/request/GameRequestBuffer;->zzu(II)Lcom/google/android/gms/games/request/GameRequest;

    move-result-object v0

    return-object v0
.end method

.method protected zzu(II)Lcom/google/android/gms/games/request/GameRequest;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/request/GameRequestRef;

    iget-object v1, p0, Lcom/google/android/gms/games/request/GameRequestBuffer;->zzazI:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/games/request/GameRequestRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;II)V

    return-object v0
.end method

.method protected zzwG()Ljava/lang/String;
    .locals 1

    const-string v0, "external_request_id"

    return-object v0
.end method
