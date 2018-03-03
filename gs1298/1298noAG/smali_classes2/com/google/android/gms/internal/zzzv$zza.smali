.class public abstract Lcom/google/android/gms/internal/zzzv$zza;
.super Lcom/google/android/gms/internal/zzzx;

# interfaces
.implements Lcom/google/android/gms/internal/zzzv$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzzv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        "A::",
        "Lcom/google/android/gms/common/api/Api$zzb;",
        ">",
        "Lcom/google/android/gms/internal/zzzx",
        "<TR;>;",
        "Lcom/google/android/gms/internal/zzzv$zzb",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final zzawb:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<*>;"
        }
    .end annotation
.end field

.field private final zzayF:Lcom/google/android/gms/common/api/Api$zzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<TA;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<TA;>;",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "GoogleApiClient must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzzx;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzc;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzv$zza;->zzayF:Lcom/google/android/gms/common/api/Api$zzc;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzv$zza;->zzawb:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")V"
        }
    .end annotation

    const-string v0, "GoogleApiClient must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzzx;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zzuH()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzv$zza;->zzayF:Lcom/google/android/gms/common/api/Api$zzc;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzv$zza;->zzawb:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method private zzc(Landroid/os/RemoteException;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-virtual {p1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzzv$zza;->zzA(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method


# virtual methods
.method public final getApi()Lcom/google/android/gms/common/api/Api;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzv$zza;->zzawb:Lcom/google/android/gms/common/api/Api;

    return-object v0
.end method

.method public synthetic setResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/Result;

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzzx;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public final zzA(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Failed result must not be success"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzzv$zza;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzzv$zza;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final zzb(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzzv$zza;->zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzzv$zza;->zzc(Landroid/os/RemoteException;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzzv$zza;->zzc(Landroid/os/RemoteException;)V

    goto :goto_0
.end method

.method public final zzuH()Lcom/google/android/gms/common/api/Api$zzc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<TA;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzv$zza;->zzayF:Lcom/google/android/gms/common/api/Api$zzc;

    return-object v0
.end method
