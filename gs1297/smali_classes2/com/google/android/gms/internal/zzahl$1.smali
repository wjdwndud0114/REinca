.class Lcom/google/android/gms/internal/zzahl$1;
.super Lcom/google/android/gms/internal/zzahi$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzahl;->reopenForWrite(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaLK:Lcom/google/android/gms/internal/zzahl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzahl;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzahl$1;->zzaLK:Lcom/google/android/gms/internal/zzahl;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzahi$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzahl$1;->zza(Lcom/google/android/gms/internal/zzahk;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzahk;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzahk;->zzAi()Lcom/google/android/gms/internal/zzaik;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzajw;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzahl$1;->zzaLK:Lcom/google/android/gms/internal/zzahl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzahl;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v2

    const/high16 v3, 0x20000000

    iget-object v4, p0, Lcom/google/android/gms/internal/zzahl$1;->zzaLK:Lcom/google/android/gms/internal/zzahl;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzahl;->zza(Lcom/google/android/gms/internal/zzahl;)Lcom/google/android/gms/drive/zzc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/drive/zzc;->getRequestId()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzajw;-><init>(Lcom/google/android/gms/drive/DriveId;II)V

    new-instance v2, Lcom/google/android/gms/internal/zzajy;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/zzajy;-><init>(Lcom/google/android/gms/internal/zzzv$zzb;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzaik;->zza(Lcom/google/android/gms/internal/zzajw;Lcom/google/android/gms/internal/zzail;)Lcom/google/android/gms/internal/zzaht;

    return-void
.end method
