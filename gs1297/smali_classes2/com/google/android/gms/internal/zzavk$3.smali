.class Lcom/google/android/gms/internal/zzavk$3;
.super Lcom/google/android/gms/internal/zzavk$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzavk;->startDiscovery(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbxf:Ljava/lang/String;

.field final synthetic zzbxh:J

.field final synthetic zzbxj:Lcom/google/android/gms/internal/zzaaz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzavk;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLcom/google/android/gms/internal/zzaaz;)V
    .locals 2

    iput-object p3, p0, Lcom/google/android/gms/internal/zzavk$3;->zzbxf:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzavk$3;->zzbxh:J

    iput-object p6, p0, Lcom/google/android/gms/internal/zzavk$3;->zzbxj:Lcom/google/android/gms/internal/zzaaz;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzavk$3;->zza(Lcom/google/android/gms/internal/zzavj;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzavj;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v3, p0, Lcom/google/android/gms/internal/zzavk$3;->zzbxf:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzavk$3;->zzbxh:J

    iget-object v6, p0, Lcom/google/android/gms/internal/zzavk$3;->zzbxj:Lcom/google/android/gms/internal/zzaaz;

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzavj;->zza(Lcom/google/android/gms/internal/zzzv$zzb;Ljava/lang/String;JLcom/google/android/gms/internal/zzaaz;)V

    return-void
.end method
