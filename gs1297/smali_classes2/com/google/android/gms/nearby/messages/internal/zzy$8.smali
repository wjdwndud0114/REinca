.class Lcom/google/android/gms/nearby/messages/internal/zzy$8;
.super Lcom/google/android/gms/nearby/messages/internal/zzy$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/nearby/messages/internal/zzy;->unsubscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaUp:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzy;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/zzy$8;->zzaUp:Landroid/app/PendingIntent;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzy$8;->zza(Lcom/google/android/gms/nearby/messages/internal/zzx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/nearby/messages/internal/zzx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzy$8;->zzaUp:Landroid/app/PendingIntent;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/nearby/messages/internal/zzx;->zza(Lcom/google/android/gms/internal/zzzv$zzb;Landroid/app/PendingIntent;)V

    return-void
.end method
