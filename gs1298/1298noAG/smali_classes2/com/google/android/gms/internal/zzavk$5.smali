.class Lcom/google/android/gms/internal/zzavk$5;
.super Lcom/google/android/gms/internal/zzavk$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzavk;->acceptConnectionRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLcom/google/android/gms/nearby/connection/Connections$MessageListener;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbwW:Ljava/lang/String;

.field final synthetic zzbwX:[B

.field final synthetic zzbxl:Lcom/google/android/gms/internal/zzaaz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzavk;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLcom/google/android/gms/internal/zzaaz;)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/internal/zzavk$5;->zzbwW:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzavk$5;->zzbwX:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/zzavk$5;->zzbxl:Lcom/google/android/gms/internal/zzaaz;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzavk$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzavk$1;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzavj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzavk$5;->zza(Lcom/google/android/gms/internal/zzavj;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzavj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavk$5;->zzbwW:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavk$5;->zzbwX:[B

    iget-object v2, p0, Lcom/google/android/gms/internal/zzavk$5;->zzbxl:Lcom/google/android/gms/internal/zzaaz;

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzavj;->zza(Lcom/google/android/gms/internal/zzzv$zzb;Ljava/lang/String;[BLcom/google/android/gms/internal/zzaaz;)V

    return-void
.end method
