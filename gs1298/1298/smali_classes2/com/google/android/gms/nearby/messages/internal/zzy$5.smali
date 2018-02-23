.class Lcom/google/android/gms/nearby/messages/internal/zzy$5;
.super Lcom/google/android/gms/nearby/messages/internal/zzy$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/nearby/messages/internal/zzy;->subscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/MessageListener;Lcom/google/android/gms/nearby/messages/SubscribeOptions;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbxj:Lcom/google/android/gms/internal/zzaaz;

.field final synthetic zzbyR:Lcom/google/android/gms/internal/zzaaz;

.field final synthetic zzbyT:Lcom/google/android/gms/nearby/messages/MessageListener;

.field final synthetic zzbyU:Lcom/google/android/gms/nearby/messages/SubscribeOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzy;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzaaz;Lcom/google/android/gms/nearby/messages/MessageListener;Lcom/google/android/gms/internal/zzaaz;Lcom/google/android/gms/nearby/messages/SubscribeOptions;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/zzy$5;->zzbxj:Lcom/google/android/gms/internal/zzaaz;

    iput-object p4, p0, Lcom/google/android/gms/nearby/messages/internal/zzy$5;->zzbyT:Lcom/google/android/gms/nearby/messages/MessageListener;

    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/internal/zzy$5;->zzbyR:Lcom/google/android/gms/internal/zzaaz;

    iput-object p6, p0, Lcom/google/android/gms/nearby/messages/internal/zzy$5;->zzbyU:Lcom/google/android/gms/nearby/messages/SubscribeOptions;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzy$5;->zza(Lcom/google/android/gms/nearby/messages/internal/zzx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/nearby/messages/internal/zzx;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzy$5;->zzbxj:Lcom/google/android/gms/internal/zzaaz;

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/zzy$5;->zzbyT:Lcom/google/android/gms/nearby/messages/MessageListener;

    iget-object v4, p0, Lcom/google/android/gms/nearby/messages/internal/zzy$5;->zzbyR:Lcom/google/android/gms/internal/zzaaz;

    iget-object v5, p0, Lcom/google/android/gms/nearby/messages/internal/zzy$5;->zzbyU:Lcom/google/android/gms/nearby/messages/SubscribeOptions;

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/nearby/messages/internal/zzx;->zza(Lcom/google/android/gms/internal/zzzv$zzb;Lcom/google/android/gms/internal/zzaaz;Lcom/google/android/gms/nearby/messages/MessageListener;Lcom/google/android/gms/internal/zzaaz;Lcom/google/android/gms/nearby/messages/SubscribeOptions;[B)V

    return-void
.end method
