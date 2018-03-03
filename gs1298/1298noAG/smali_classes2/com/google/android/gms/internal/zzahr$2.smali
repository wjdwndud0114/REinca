.class Lcom/google/android/gms/internal/zzahr$2;
.super Lcom/google/android/gms/internal/zzahi$zzh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzahr;->listParents(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaMe:Lcom/google/android/gms/internal/zzahr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzahr;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzahr$2;->zzaMe:Lcom/google/android/gms/internal/zzahr;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzahi$zzh;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzahk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzahr$2;->zza(Lcom/google/android/gms/internal/zzahk;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzahk;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzahk;->zzAi()Lcom/google/android/gms/internal/zzaik;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzaio;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzahr$2;->zzaMe:Lcom/google/android/gms/internal/zzahr;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzahr;->zzaJj:Lcom/google/android/gms/drive/DriveId;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzaio;-><init>(Lcom/google/android/gms/drive/DriveId;)V

    new-instance v2, Lcom/google/android/gms/internal/zzahr$zza;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzahr$zza;-><init>(Lcom/google/android/gms/internal/zzzv$zzb;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzaik;->zza(Lcom/google/android/gms/internal/zzaio;Lcom/google/android/gms/internal/zzail;)V

    return-void
.end method
