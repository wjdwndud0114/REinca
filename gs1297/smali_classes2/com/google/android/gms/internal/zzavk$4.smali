.class Lcom/google/android/gms/internal/zzavk$4;
.super Lcom/google/android/gms/internal/zzavk$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzavk;->sendConnectionRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/nearby/connection/Connections$ConnectionResponseCallback;Lcom/google/android/gms/nearby/connection/Connections$MessageListener;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic zzbwW:Ljava/lang/String;

.field final synthetic zzbwX:[B

.field final synthetic zzbxk:Lcom/google/android/gms/internal/zzaaz;

.field final synthetic zzbxl:Lcom/google/android/gms/internal/zzaaz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzavk;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/internal/zzaaz;Lcom/google/android/gms/internal/zzaaz;)V
    .locals 1

    iput-object p3, p0, Lcom/google/android/gms/internal/zzavk$4;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzavk$4;->zzbwW:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzavk$4;->zzbwX:[B

    iput-object p6, p0, Lcom/google/android/gms/internal/zzavk$4;->zzbxk:Lcom/google/android/gms/internal/zzaaz;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzavk$4;->zzbxl:Lcom/google/android/gms/internal/zzaaz;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzavk$4;->zza(Lcom/google/android/gms/internal/zzavj;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzavj;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/internal/zzavk$4;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzavk$4;->zzbwW:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzavk$4;->zzbwX:[B

    iget-object v5, p0, Lcom/google/android/gms/internal/zzavk$4;->zzbxk:Lcom/google/android/gms/internal/zzaaz;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzavk$4;->zzbxl:Lcom/google/android/gms/internal/zzaaz;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzavj;->zza(Lcom/google/android/gms/internal/zzzv$zzb;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/internal/zzaaz;Lcom/google/android/gms/internal/zzaaz;)V

    return-void
.end method
