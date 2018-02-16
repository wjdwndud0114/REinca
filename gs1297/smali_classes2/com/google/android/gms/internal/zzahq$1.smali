.class Lcom/google/android/gms/internal/zzahq$1;
.super Lcom/google/android/gms/internal/zzahq$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzahq;->getFileUploadPreferences(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaMa:Lcom/google/android/gms/internal/zzahq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzahq;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzahq$1;->zzaMa:Lcom/google/android/gms/internal/zzahq;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzahq$zzc;-><init>(Lcom/google/android/gms/internal/zzahq;Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzahq$1;->zza(Lcom/google/android/gms/internal/zzahk;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzahk;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzahk;->zzAi()Lcom/google/android/gms/internal/zzaik;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzahq$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzahq$1;->zzaMa:Lcom/google/android/gms/internal/zzahq;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/google/android/gms/internal/zzahq$zza;-><init>(Lcom/google/android/gms/internal/zzahq;Lcom/google/android/gms/internal/zzzv$zzb;Lcom/google/android/gms/internal/zzahq$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzaik;->zzd(Lcom/google/android/gms/internal/zzail;)V

    return-void
.end method
