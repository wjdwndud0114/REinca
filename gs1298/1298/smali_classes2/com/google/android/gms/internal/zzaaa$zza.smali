.class Lcom/google/android/gms/internal/zzaaa$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaau$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaaa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzazp:Lcom/google/android/gms/internal/zzaaa;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzaaa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaaa$zza;->zzazp:Lcom/google/android/gms/internal/zzaaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzaaa;Lcom/google/android/gms/internal/zzaaa$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaaa$zza;-><init>(Lcom/google/android/gms/internal/zzaaa;)V

    return-void
.end method


# virtual methods
.method public zzc(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaa$zza;->zzazp:Lcom/google/android/gms/internal/zzaaa;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaaa;->zza(Lcom/google/android/gms/internal/zzaaa;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaa$zza;->zzazp:Lcom/google/android/gms/internal/zzaaa;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaaa;->zzc(Lcom/google/android/gms/internal/zzaaa;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaa$zza;->zzazp:Lcom/google/android/gms/internal/zzaaa;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaaa;->zzd(Lcom/google/android/gms/internal/zzaaa;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaa$zza;->zzazp:Lcom/google/android/gms/internal/zzaaa;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaaa;->zzd(Lcom/google/android/gms/internal/zzaaa;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaa$zza;->zzazp:Lcom/google/android/gms/internal/zzaaa;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaaa;->zza(Lcom/google/android/gms/internal/zzaaa;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaa$zza;->zzazp:Lcom/google/android/gms/internal/zzaaa;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/zzaaa;->zza(Lcom/google/android/gms/internal/zzaaa;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaa$zza;->zzazp:Lcom/google/android/gms/internal/zzaaa;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaaa;->zza(Lcom/google/android/gms/internal/zzaaa;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaa$zza;->zzazp:Lcom/google/android/gms/internal/zzaaa;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaaa;->zza(Lcom/google/android/gms/internal/zzaaa;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaa$zza;->zzazp:Lcom/google/android/gms/internal/zzaaa;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaaa;->zze(Lcom/google/android/gms/internal/zzaaa;)Lcom/google/android/gms/internal/zzaan;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaan;->onConnectionSuspended(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaa$zza;->zzazp:Lcom/google/android/gms/internal/zzaaa;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaaa;->zza(Lcom/google/android/gms/internal/zzaaa;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaa$zza;->zzazp:Lcom/google/android/gms/internal/zzaaa;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaaa;->zza(Lcom/google/android/gms/internal/zzaaa;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zzc(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaa$zza;->zzazp:Lcom/google/android/gms/internal/zzaaa;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaaa;->zza(Lcom/google/android/gms/internal/zzaaa;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaa$zza;->zzazp:Lcom/google/android/gms/internal/zzaaa;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzaaa;->zza(Lcom/google/android/gms/internal/zzaaa;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaa$zza;->zzazp:Lcom/google/android/gms/internal/zzaaa;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaaa;->zzb(Lcom/google/android/gms/internal/zzaaa;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaa$zza;->zzazp:Lcom/google/android/gms/internal/zzaaa;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaaa;->zza(Lcom/google/android/gms/internal/zzaaa;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaa$zza;->zzazp:Lcom/google/android/gms/internal/zzaaa;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaaa;->zza(Lcom/google/android/gms/internal/zzaaa;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public zzo(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaa$zza;->zzazp:Lcom/google/android/gms/internal/zzaaa;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaaa;->zza(Lcom/google/android/gms/internal/zzaaa;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaa$zza;->zzazp:Lcom/google/android/gms/internal/zzaaa;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzaaa;->zza(Lcom/google/android/gms/internal/zzaaa;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaa$zza;->zzazp:Lcom/google/android/gms/internal/zzaaa;

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->zzawX:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaaa;->zza(Lcom/google/android/gms/internal/zzaaa;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaa$zza;->zzazp:Lcom/google/android/gms/internal/zzaaa;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaaa;->zzb(Lcom/google/android/gms/internal/zzaaa;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaa$zza;->zzazp:Lcom/google/android/gms/internal/zzaaa;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaaa;->zza(Lcom/google/android/gms/internal/zzaaa;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaa$zza;->zzazp:Lcom/google/android/gms/internal/zzaaa;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaaa;->zza(Lcom/google/android/gms/internal/zzaaa;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
