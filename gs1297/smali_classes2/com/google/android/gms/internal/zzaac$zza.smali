.class Lcom/google/android/gms/internal/zzaac$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnFailureListener;",
        "Lcom/google/android/gms/tasks/OnSuccessListener",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzazB:Lcom/google/android/gms/internal/zzaac;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzaac;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzaac;Lcom/google/android/gms/internal/zzaac$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaac$zza;-><init>(Lcom/google/android/gms/internal/zzaac;)V

    return-void
.end method

.method private zzvs()Lcom/google/android/gms/common/ConnectionResult;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaac;->zzg(Lcom/google/android/gms/internal/zzaac;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaac;->zzc(Lcom/google/android/gms/internal/zzaac;)Ljava/util/Map;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaac;->zzb(Lcom/google/android/gms/internal/zzaac;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzuH()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/zzc;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/zzc;->getApiKey()Lcom/google/android/gms/internal/zzzs;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaac;->zzg(Lcom/google/android/gms/internal/zzaac;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x2

    if-eq v2, v6, :cond_0

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaac;->zzh(Lcom/google/android/gms/internal/zzaac;)Lcom/google/android/gms/common/zzc;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/common/zzc;->isUserResolvableError(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzuF()Lcom/google/android/gms/common/api/Api$zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api$zzd;->getPriority()I

    move-result v0

    if-eqz v4, :cond_2

    if-le v3, v0, :cond_4

    :cond_2
    :goto_1
    move v3, v0

    move-object v4, v1

    goto :goto_0

    :cond_3
    return-object v4

    :cond_4
    move v0, v3

    move-object v1, v4

    goto :goto_1
.end method

.method private zzvt()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaac;->zzi(Lcom/google/android/gms/internal/zzaac;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaac;->zzd(Lcom/google/android/gms/internal/zzaac;)Lcom/google/android/gms/internal/zzaal;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaal;->zzaAs:Ljava/util/Set;

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaac;->zzi(Lcom/google/android/gms/internal/zzaac;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzg;->zzxe()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaac;->zzi(Lcom/google/android/gms/internal/zzaac;)Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzg;->zzxg()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaac;->zzc(Lcom/google/android/gms/internal/zzaac;)Ljava/util/Map;

    move-result-object v5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaac;->zzb(Lcom/google/android/gms/internal/zzaac;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzuH()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/zzc;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/zzc;->getApiKey()Lcom/google/android/gms/internal/zzzs;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzg$zza;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzg$zza;->zzajm:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaac;->zzd(Lcom/google/android/gms/internal/zzaac;)Lcom/google/android/gms/internal/zzaal;

    move-result-object v0

    iput-object v2, v0, Lcom/google/android/gms/internal/zzaal;->zzaAs:Ljava/util/Set;

    goto :goto_0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/android/gms/common/api/zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaac;->zza(Lcom/google/android/gms/internal/zzaac;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/zzb;->zzuK()Landroid/support/v4/util/ArrayMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaac;->zza(Lcom/google/android/gms/internal/zzaac;Ljava/util/Map;)Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaac$zza;->zzvs()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaac;->zza(Lcom/google/android/gms/internal/zzaac;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaac;->zzf(Lcom/google/android/gms/internal/zzaac;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaac$zza;->zzvt()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaac;->zzd(Lcom/google/android/gms/internal/zzaac;)Lcom/google/android/gms/internal/zzaal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaal;->zzo(Landroid/os/Bundle;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaac;->zze(Lcom/google/android/gms/internal/zzaac;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaac;->zza(Lcom/google/android/gms/internal/zzaac;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaac;->zza(Lcom/google/android/gms/internal/zzaac;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaac;->zzd(Lcom/google/android/gms/internal/zzaac;)Lcom/google/android/gms/internal/zzaal;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaac;->zzf(Lcom/google/android/gms/internal/zzaac;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaal;->zzc(Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaac;->zza(Lcom/google/android/gms/internal/zzaac;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaac$zza;->zza(Ljava/lang/Void;)V

    return-void
.end method

.method public zza(Ljava/lang/Void;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaac;->zza(Lcom/google/android/gms/internal/zzaac;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    new-instance v1, Landroid/support/v4/util/ArrayMap;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaac;->zzb(Lcom/google/android/gms/internal/zzaac;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaac;->zza(Lcom/google/android/gms/internal/zzaac;Ljava/util/Map;)Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaac;->zzb(Lcom/google/android/gms/internal/zzaac;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaac;->zzc(Lcom/google/android/gms/internal/zzaac;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzaac;->zzb(Lcom/google/android/gms/internal/zzaac;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzc;->getApiKey()Lcom/google/android/gms/internal/zzzs;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/common/ConnectionResult;->zzawX:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaac;->zza(Lcom/google/android/gms/internal/zzaac;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaac$zza;->zzvt()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaac;->zzd(Lcom/google/android/gms/internal/zzaac;)Lcom/google/android/gms/internal/zzaal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaal;->zzo(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaac;->zze(Lcom/google/android/gms/internal/zzaac;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaac$zza;->zzazB:Lcom/google/android/gms/internal/zzaac;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaac;->zza(Lcom/google/android/gms/internal/zzaac;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
