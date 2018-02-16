.class Lcom/google/android/gms/internal/zzahi$1;
.super Lcom/google/android/gms/internal/zzahi$zzh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzahi;->query(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/query/Query;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaLl:Lcom/google/android/gms/drive/query/Query;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzahi;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/query/Query;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzahi$1;->zzaLl:Lcom/google/android/gms/drive/query/Query;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzahi$1;->zza(Lcom/google/android/gms/internal/zzahk;)V

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

    new-instance v1, Lcom/google/android/gms/internal/zzakd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzahi$1;->zzaLl:Lcom/google/android/gms/drive/query/Query;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzakd;-><init>(Lcom/google/android/gms/drive/query/Query;)V

    new-instance v2, Lcom/google/android/gms/internal/zzahi$zzi;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzahi$zzi;-><init>(Lcom/google/android/gms/internal/zzzv$zzb;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzaik;->zza(Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zzail;)V

    return-void
.end method
