.class Lcom/google/android/gms/internal/zzahi$3;
.super Lcom/google/android/gms/internal/zzahi$zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzahi;->fetchDriveId(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaLn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzahi;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzahi$3;->zzaLn:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzahi$zzf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzahi$3;->zza(Lcom/google/android/gms/internal/zzahk;)V

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

    new-instance v1, Lcom/google/android/gms/internal/zzaie;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzahi$3;->zzaLn:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/drive/DriveId;->zzdH(Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzaie;-><init>(Lcom/google/android/gms/drive/DriveId;Z)V

    new-instance v2, Lcom/google/android/gms/internal/zzahi$zzd;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzahi$zzd;-><init>(Lcom/google/android/gms/internal/zzzv$zzb;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzaik;->zza(Lcom/google/android/gms/internal/zzaie;Lcom/google/android/gms/internal/zzail;)V

    return-void
.end method
