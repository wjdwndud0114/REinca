.class Lcom/google/android/gms/internal/zzdk$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzf$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzdk;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzyv:Lcom/google/android/gms/internal/zzdk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdk$4;->zzyv:Lcom/google/android/gms/internal/zzdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdk$4;->zzyv:Lcom/google/android/gms/internal/zzdk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdk;->zzc(Lcom/google/android/gms/internal/zzdk;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdk$4;->zzyv:Lcom/google/android/gms/internal/zzdk;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdn;)Lcom/google/android/gms/internal/zzdn;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdk$4;->zzyv:Lcom/google/android/gms/internal/zzdk;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzdk;->zza(Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdr;)Lcom/google/android/gms/internal/zzdr;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdk$4;->zzyv:Lcom/google/android/gms/internal/zzdk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdk;->zzc(Lcom/google/android/gms/internal/zzdk;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzcZ()Lcom/google/android/gms/internal/zzpq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpq;->zzkD()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
