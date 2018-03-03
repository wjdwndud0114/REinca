.class Lcom/google/android/gms/internal/zzahm$1;
.super Lcom/google/android/gms/internal/zzahi$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzahm;->open(Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaLN:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

.field final synthetic zzaLO:Lcom/google/android/gms/internal/zzahm;

.field final synthetic zzaLm:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzahm;Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzahm$1;->zzaLO:Lcom/google/android/gms/internal/zzahm;

    iput p3, p0, Lcom/google/android/gms/internal/zzahm$1;->zzaLm:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzahm$1;->zzaLN:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzahm$1;->zza(Lcom/google/android/gms/internal/zzahk;)V

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

    iget-object v2, p0, Lcom/google/android/gms/internal/zzahm$1;->zzaLO:Lcom/google/android/gms/internal/zzahm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzahm;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/zzahm$1;->zzaLm:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzajw;-><init>(Lcom/google/android/gms/drive/DriveId;II)V

    new-instance v2, Lcom/google/android/gms/internal/zzajy;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzahm$1;->zzaLN:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/zzajy;-><init>(Lcom/google/android/gms/internal/zzzv$zzb;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzaik;->zza(Lcom/google/android/gms/internal/zzajw;Lcom/google/android/gms/internal/zzail;)Lcom/google/android/gms/internal/zzaht;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaht;->zzAn()Lcom/google/android/gms/common/internal/zzs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzahm$1;->zza(Lcom/google/android/gms/common/internal/zzs;)V

    return-void
.end method
