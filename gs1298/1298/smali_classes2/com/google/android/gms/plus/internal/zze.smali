.class public Lcom/google/android/gms/plus/internal/zze;
.super Lcom/google/android/gms/common/internal/zzl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/internal/zze$zzc;,
        Lcom/google/android/gms/plus/internal/zze$zzb;,
        Lcom/google/android/gms/plus/internal/zze$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzl",
        "<",
        "Lcom/google/android/gms/plus/internal/zzd;",
        ">;"
    }
.end annotation


# instance fields
.field private zzbzS:Lcom/google/android/gms/plus/model/people/Person;

.field private final zzbzT:Lcom/google/android/gms/plus/internal/zzh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/plus/internal/zzh;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzl;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iput-object p4, p0, Lcom/google/android/gms/plus/internal/zze;->zzbzT:Lcom/google/android/gms/plus/internal/zzh;

    return-void
.end method

.method public static zze(Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v1, :cond_2

    new-instance v2, Lcom/google/android/gms/common/api/Scope;

    const-string v3, "plus_one_placeholder_scope"

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzwV()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzwW()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/plus/internal/zzd;->getAccountName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zzNs()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzwV()V

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/plus/internal/zze;->zzbzS:Lcom/google/android/gms/plus/model/people/Person;

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzwW()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/plus/internal/zzd;->zzNs()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zzNu()Lcom/google/android/gms/plus/model/people/Person;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzwV()V

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zze;->zzbzS:Lcom/google/android/gms/plus/model/people/Person;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzzv$zzb;ILjava/lang/String;)Lcom/google/android/gms/common/internal/zzs;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzzv$zzb",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/internal/zzs;"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzwV()V

    new-instance v1, Lcom/google/android/gms/plus/internal/zze$zzb;

    invoke-direct {v1, p1}, Lcom/google/android/gms/plus/internal/zze$zzb;-><init>(Lcom/google/android/gms/internal/zzzv$zzb;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzwW()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/zzd;

    const/4 v2, 0x1

    const/4 v4, -0x1

    move v3, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/zzd;->zza(Lcom/google/android/gms/plus/internal/zzb;IIILjava/lang/String;)Lcom/google/android/gms/common/internal/zzs;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->zzcD(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lcom/google/android/gms/plus/internal/zze$zzb;->zza(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_0
.end method

.method protected zza(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "loaded_person"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "loaded_person"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzawk;->zzF([B)Lcom/google/android/gms/internal/zzawk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/zze;->zzbzS:Lcom/google/android/gms/plus/model/people/Person;

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/zzl;->zza(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzzv$zzb;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzzv$zzb",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzwV()V

    new-instance v1, Lcom/google/android/gms/plus/internal/zze$zzb;

    invoke-direct {v1, p1}, Lcom/google/android/gms/plus/internal/zze$zzb;-><init>(Lcom/google/android/gms/internal/zzzv$zzb;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzwW()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/zzd;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/plus/internal/zzd;->zza(Lcom/google/android/gms/plus/internal/zzb;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->zzcD(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/plus/internal/zze$zzb;->zza(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public zzd(Lcom/google/android/gms/internal/zzzv$zzb;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzzv$zzb",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/plus/internal/zze;->zza(Lcom/google/android/gms/internal/zzzv$zzb;Ljava/util/Collection;)V

    return-void
.end method

.method protected zzeP(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/zzd;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/plus/internal/zzd$zza;->zzeO(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/zzd;

    move-result-object v0

    return-object v0
.end method

.method protected zzeu()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.plus.service.START"

    return-object v0
.end method

.method protected zzev()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    return-object v0
.end method

.method protected synthetic zzh(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/internal/zze;->zzeP(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzqD()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzxp()Lcom/google/android/gms/common/internal/zzg;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzg;->zzc(Lcom/google/android/gms/common/api/Api;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/zze;->zze(Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method protected zzql()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/zze;->zzbzT:Lcom/google/android/gms/plus/internal/zzh;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/zzh;->zzNE()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "request_visible_actions"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/zze;->zzbzT:Lcom/google/android/gms/plus/internal/zzh;

    invoke-virtual {v2}, Lcom/google/android/gms/plus/internal/zzh;->zzNy()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "auth_package"

    iget-object v2, p0, Lcom/google/android/gms/plus/internal/zze;->zzbzT:Lcom/google/android/gms/plus/internal/zzh;

    invoke-virtual {v2}, Lcom/google/android/gms/plus/internal/zzh;->zzNA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public zzu(Lcom/google/android/gms/internal/zzzv$zzb;Ljava/lang/String;)Lcom/google/android/gms/common/internal/zzs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzzv$zzb",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/internal/zzs;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/plus/internal/zze;->zza(Lcom/google/android/gms/internal/zzzv$zzb;ILjava/lang/String;)Lcom/google/android/gms/common/internal/zzs;

    move-result-object v0

    return-object v0
.end method

.method public zzv(Lcom/google/android/gms/internal/zzzv$zzb;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzzv$zzb",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzwV()V

    new-instance v1, Lcom/google/android/gms/plus/internal/zze$zzb;

    invoke-direct {v1, p1}, Lcom/google/android/gms/plus/internal/zze$zzb;-><init>(Lcom/google/android/gms/internal/zzzv$zzb;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzwW()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/zzd;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/zzd;->zza(Lcom/google/android/gms/plus/internal/zzb;IIILjava/lang/String;)Lcom/google/android/gms/common/internal/zzs;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->zzcD(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lcom/google/android/gms/plus/internal/zze$zzb;->zza(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public zzw(Lcom/google/android/gms/internal/zzzv$zzb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzzv$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzwV()V

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzNs()V

    new-instance v1, Lcom/google/android/gms/plus/internal/zze$zzc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/plus/internal/zze$zzc;-><init>(Lcom/google/android/gms/internal/zzzv$zzb;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/zze;->zzwW()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/zzd;

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/internal/zzd;->zzb(Lcom/google/android/gms/plus/internal/zzb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/plus/internal/zze$zzc;->zzk(ILandroid/os/Bundle;)V

    goto :goto_0
.end method
