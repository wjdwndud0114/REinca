.class Lcom/google/android/gms/internal/zzaho$1;
.super Lcom/google/android/gms/internal/zzaho$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaho;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;ILcom/google/android/gms/drive/zzk;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaLS:Lcom/google/android/gms/drive/MetadataChangeSet;

.field final synthetic zzaLT:I

.field final synthetic zzaLU:I

.field final synthetic zzaLV:Lcom/google/android/gms/drive/zzk;

.field final synthetic zzaLW:Lcom/google/android/gms/internal/zzaho;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaho;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;IILcom/google/android/gms/drive/zzk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaho$1;->zzaLW:Lcom/google/android/gms/internal/zzaho;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaho$1;->zzaLS:Lcom/google/android/gms/drive/MetadataChangeSet;

    iput p4, p0, Lcom/google/android/gms/internal/zzaho$1;->zzaLT:I

    iput p5, p0, Lcom/google/android/gms/internal/zzaho$1;->zzaLU:I

    iput-object p6, p0, Lcom/google/android/gms/internal/zzaho$1;->zzaLV:Lcom/google/android/gms/drive/zzk;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaho$zzd;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaho$1;->zza(Lcom/google/android/gms/internal/zzahk;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzahk;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaho$1;->zzaLS:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzzP()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzahk;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/zzagz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaho$1;->zzaLW:Lcom/google/android/gms/internal/zzaho;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaho;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaho$1;->zzaLS:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzzP()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/zzaho$1;->zzaLT:I

    iget v4, p0, Lcom/google/android/gms/internal/zzaho$1;->zzaLU:I

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaho$1;->zzaLV:Lcom/google/android/gms/drive/zzk;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzagz;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;IILcom/google/android/gms/drive/zzk;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzahk;->zzAi()Lcom/google/android/gms/internal/zzaik;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzaho$zza;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzaho$zza;-><init>(Lcom/google/android/gms/internal/zzzv$zzb;)V

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzaik;->zza(Lcom/google/android/gms/internal/zzagz;Lcom/google/android/gms/internal/zzail;)V

    return-void
.end method
