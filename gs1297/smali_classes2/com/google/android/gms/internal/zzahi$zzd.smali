.class Lcom/google/android/gms/internal/zzahi$zzd;
.super Lcom/google/android/gms/internal/zzagh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzahi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzd"
.end annotation


# instance fields
.field private final zzaFq:Lcom/google/android/gms/internal/zzzv$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzzv$zzb",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$DriveIdResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzzv$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzzv$zzb",
            "<",
            "Lcom/google/android/gms/drive/DriveApi$DriveIdResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzagh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzahi$zzd;->zzaFq:Lcom/google/android/gms/internal/zzzv$zzb;

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/gms/common/api/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahi$zzd;->zzaFq:Lcom/google/android/gms/internal/zzzv$zzb;

    new-instance v1, Lcom/google/android/gms/internal/zzahi$zze;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/zzahi$zze;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveId;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzzv$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaja;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahi$zzd;->zzaFq:Lcom/google/android/gms/internal/zzzv$zzb;

    new-instance v1, Lcom/google/android/gms/internal/zzahi$zze;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzayh:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaja;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzahi$zze;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveId;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzzv$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzajl;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzahi$zzd;->zzaFq:Lcom/google/android/gms/internal/zzzv$zzb;

    new-instance v1, Lcom/google/android/gms/internal/zzahi$zze;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzayh:Lcom/google/android/gms/common/api/Status;

    new-instance v3, Lcom/google/android/gms/internal/zzahd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzajl;->zzAx()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/zzahd;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzahd;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzahi$zze;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveId;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzzv$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method
