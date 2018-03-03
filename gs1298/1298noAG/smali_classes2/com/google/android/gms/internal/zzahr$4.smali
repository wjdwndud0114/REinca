.class Lcom/google/android/gms/internal/zzahr$4;
.super Lcom/google/android/gms/internal/zzahr$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzahr;->updateMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaLS:Lcom/google/android/gms/drive/MetadataChangeSet;

.field final synthetic zzaMe:Lcom/google/android/gms/internal/zzahr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzahr;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzahr$4;->zzaMe:Lcom/google/android/gms/internal/zzahr;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzahr$4;->zzaLS:Lcom/google/android/gms/drive/MetadataChangeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzahr$zzd;-><init>(Lcom/google/android/gms/internal/zzahr;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzahr$1;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzahr$4;->zza(Lcom/google/android/gms/internal/zzahk;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzahk;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahr$4;->zzaLS:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzzP()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzahk;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzahk;->zzAi()Lcom/google/android/gms/internal/zzaik;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzala;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzahr$4;->zzaMe:Lcom/google/android/gms/internal/zzahr;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzahr;->zzaJj:Lcom/google/android/gms/drive/DriveId;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzahr$4;->zzaLS:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v3}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzzP()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzala;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    new-instance v2, Lcom/google/android/gms/internal/zzahr$zzb;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzahr$zzb;-><init>(Lcom/google/android/gms/internal/zzzv$zzb;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzaik;->zza(Lcom/google/android/gms/internal/zzala;Lcom/google/android/gms/internal/zzail;)V

    return-void
.end method
