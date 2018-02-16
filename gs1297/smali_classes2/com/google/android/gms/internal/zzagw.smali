.class public Lcom/google/android/gms/internal/zzagw;
.super Ljava/lang/Object;


# instance fields
.field private zzaJS:Lcom/google/android/gms/drive/DriveId;

.field protected zzaLc:Lcom/google/android/gms/drive/MetadataChangeSet;

.field private zzaLd:Ljava/lang/Integer;

.field private final zzaLe:I

.field private zzalD:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzagw;->zzaLe:I

    return-void
.end method


# virtual methods
.method public build(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/IntentSender;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzagw;->zzaLc:Lcom/google/android/gms/drive/MetadataChangeSet;

    const-string v1, "Must provide initial metadata to CreateFileActivityBuilder."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    const-string v1, "Client must be connected"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/drive/Drive;->zzahc:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzahk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzagw;->zzaLc:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v1}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzzP()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzahk;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->setContext(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzagw;->zzaLd:Ljava/lang/Integer;

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzahk;->zzAi()Lcom/google/android/gms/internal/zzaik;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/internal/zzagx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzagw;->zzaLc:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v1}, Lcom/google/android/gms/drive/MetadataChangeSet;->zzzP()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzagw;->zzalD:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzagw;->zzaJS:Lcom/google/android/gms/drive/DriveId;

    iget v5, p0, Lcom/google/android/gms/internal/zzagw;->zzaLe:I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzagx;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;ILjava/lang/String;Lcom/google/android/gms/drive/DriveId;I)V

    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/zzaik;->zza(Lcom/google/android/gms/internal/zzagx;)Landroid/content/IntentSender;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzagw;->zzaLd:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to connect Drive Play Service"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zza(Lcom/google/android/gms/drive/DriveId;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzagw;->zzaJS:Lcom/google/android/gms/drive/DriveId;

    return-void
.end method

.method public zza(Lcom/google/android/gms/drive/MetadataChangeSet;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/MetadataChangeSet;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzagw;->zzaLc:Lcom/google/android/gms/drive/MetadataChangeSet;

    return-void
.end method

.method public zzdM(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzagw;->zzalD:Ljava/lang/String;

    return-void
.end method

.method public zzeA(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzagw;->zzaLd:Ljava/lang/Integer;

    return-void
.end method
