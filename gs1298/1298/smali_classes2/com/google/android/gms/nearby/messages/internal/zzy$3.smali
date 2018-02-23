.class Lcom/google/android/gms/nearby/messages/internal/zzy$3;
.super Lcom/google/android/gms/nearby/messages/internal/zzy$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/nearby/messages/internal/zzy;->publish(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/Message;Lcom/google/android/gms/nearby/messages/PublishOptions;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbyQ:Lcom/google/android/gms/nearby/messages/Message;

.field final synthetic zzbyR:Lcom/google/android/gms/internal/zzaaz;

.field final synthetic zzbyS:Lcom/google/android/gms/nearby/messages/PublishOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzy;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/Message;Lcom/google/android/gms/internal/zzaaz;Lcom/google/android/gms/nearby/messages/PublishOptions;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/zzy$3;->zzbyQ:Lcom/google/android/gms/nearby/messages/Message;

    iput-object p4, p0, Lcom/google/android/gms/nearby/messages/internal/zzy$3;->zzbyR:Lcom/google/android/gms/internal/zzaaz;

    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/internal/zzy$3;->zzbyS:Lcom/google/android/gms/nearby/messages/PublishOptions;

    invoke-direct {p0, p2}, Lcom/google/android/gms/nearby/messages/internal/zzy$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zzx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzy$3;->zza(Lcom/google/android/gms/nearby/messages/internal/zzx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/nearby/messages/internal/zzx;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzy$3;->zzbyQ:Lcom/google/android/gms/nearby/messages/Message;

    invoke-static {v0}, Lcom/google/android/gms/nearby/messages/internal/zzv;->zza(Lcom/google/android/gms/nearby/messages/Message;)Lcom/google/android/gms/nearby/messages/internal/zzv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzy$3;->zzbyR:Lcom/google/android/gms/internal/zzaaz;

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzy$3;->zzbyS:Lcom/google/android/gms/nearby/messages/PublishOptions;

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/nearby/messages/internal/zzx;->zza(Lcom/google/android/gms/internal/zzzv$zzb;Lcom/google/android/gms/nearby/messages/internal/zzv;Lcom/google/android/gms/internal/zzaaz;Lcom/google/android/gms/nearby/messages/PublishOptions;)V

    return-void
.end method
