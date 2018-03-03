.class Lcom/google/android/gms/internal/zzahk$4;
.super Lcom/google/android/gms/internal/zzahj$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzahk;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaLE:Lcom/google/android/gms/drive/DriveId;

.field final synthetic zzaLF:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzahk;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/DriveId;I)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzahk$4;->zzaLE:Lcom/google/android/gms/drive/DriveId;

    iput p4, p0, Lcom/google/android/gms/internal/zzahk$4;->zzaLF:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzahj$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzahk$4;->zza(Lcom/google/android/gms/internal/zzahk;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzahk;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzahk;->zzAi()Lcom/google/android/gms/internal/zzaik;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzakf;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzahk$4;->zzaLE:Lcom/google/android/gms/drive/DriveId;

    iget v3, p0, Lcom/google/android/gms/internal/zzahk$4;->zzaLF:I

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzakf;-><init>(Lcom/google/android/gms/drive/DriveId;I)V

    new-instance v2, Lcom/google/android/gms/internal/zzakp;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzakp;-><init>(Lcom/google/android/gms/internal/zzzv$zzb;)V

    invoke-interface {v0, v1, v4, v4, v2}, Lcom/google/android/gms/internal/zzaik;->zza(Lcom/google/android/gms/internal/zzakf;Lcom/google/android/gms/internal/zzaim;Ljava/lang/String;Lcom/google/android/gms/internal/zzail;)V

    return-void
.end method
