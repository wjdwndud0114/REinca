.class Lcom/google/android/gms/nearby/messages/internal/zzx$3;
.super Lcom/google/android/gms/nearby/messages/internal/zzx$zzh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/messages/internal/zzx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/nearby/messages/internal/zzx$zzh",
        "<",
        "Lcom/google/android/gms/nearby/messages/SubscribeCallback;",
        "Lcom/google/android/gms/nearby/messages/internal/zzx$zzg;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzx;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/nearby/messages/internal/zzx$zzh;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzx$1;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzi(Lcom/google/android/gms/internal/zzaaz;)Lcom/google/android/gms/nearby/messages/internal/zzx$zza;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzx$3;->zzk(Lcom/google/android/gms/internal/zzaaz;)Lcom/google/android/gms/nearby/messages/internal/zzx$zzg;

    move-result-object v0

    return-object v0
.end method

.method protected zzk(Lcom/google/android/gms/internal/zzaaz;)Lcom/google/android/gms/nearby/messages/internal/zzx$zzg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaaz",
            "<",
            "Lcom/google/android/gms/nearby/messages/SubscribeCallback;",
            ">;)",
            "Lcom/google/android/gms/nearby/messages/internal/zzx$zzg;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzx$zzg;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/nearby/messages/internal/zzx$zzg;-><init>(Lcom/google/android/gms/internal/zzaaz;Lcom/google/android/gms/nearby/messages/internal/zzx$1;)V

    return-object v0
.end method
