.class public abstract Lcom/google/android/gms/internal/zzmf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzme$zza;
.implements Lcom/google/android/gms/internal/zzpk;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzmf$zzb;,
        Lcom/google/android/gms/internal/zzmf$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzme$zza;",
        "Lcom/google/android/gms/internal/zzpk",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzQV:Lcom/google/android/gms/internal/zzqi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzqi",
            "<",
            "Lcom/google/android/gms/internal/zzmh;",
            ">;"
        }
    .end annotation
.end field

.field private final zzQW:Lcom/google/android/gms/internal/zzme$zza;

.field private final zzrN:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqi;Lcom/google/android/gms/internal/zzme$zza;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqi",
            "<",
            "Lcom/google/android/gms/internal/zzmh;",
            ">;",
            "Lcom/google/android/gms/internal/zzme$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmf;->zzrN:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmf;->zzQV:Lcom/google/android/gms/internal/zzqi;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzmf;->zzQW:Lcom/google/android/gms/internal/zzme$zza;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmf;->zziY()V

    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zzmq;Lcom/google/android/gms/internal/zzmh;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/zzmj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzmj;-><init>(Lcom/google/android/gms/internal/zzme$zza;)V

    invoke-interface {p1, p2, v1}, Lcom/google/android/gms/internal/zzmq;->zza(Lcom/google/android/gms/internal/zzmh;Lcom/google/android/gms/internal/zzmr;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "Could not fetch ad response from ad request service."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzpe;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzcN()Lcom/google/android/gms/internal/zzoy;

    move-result-object v2

    const-string v3, "AdRequestClientTask.getAdResponseFromService"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/zzoy;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzmf;->zzQW:Lcom/google/android/gms/internal/zzme$zza;

    new-instance v2, Lcom/google/android/gms/internal/zzmk;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzmk;-><init>(I)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzme$zza;->zzb(Lcom/google/android/gms/internal/zzmk;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "Could not fetch ad response from ad request service due to an Exception."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzpe;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzcN()Lcom/google/android/gms/internal/zzoy;

    move-result-object v2

    const-string v3, "AdRequestClientTask.getAdResponseFromService"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/zzoy;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v2, "Could not fetch ad response from ad request service due to an Exception."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzpe;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzcN()Lcom/google/android/gms/internal/zzoy;

    move-result-object v2

    const-string v3, "AdRequestClientTask.getAdResponseFromService"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/zzoy;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v1

    const-string v2, "Could not fetch ad response from ad request service due to an Exception."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzpe;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzcN()Lcom/google/android/gms/internal/zzoy;

    move-result-object v2

    const-string v3, "AdRequestClientTask.getAdResponseFromService"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/zzoy;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public zzb(Lcom/google/android/gms/internal/zzmk;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmf;->zzrN:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmf;->zzQW:Lcom/google/android/gms/internal/zzme$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzme$zza;->zzb(Lcom/google/android/gms/internal/zzmk;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmf;->zziY()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract zziY()V
.end method

.method public abstract zziZ()Lcom/google/android/gms/internal/zzmq;
.end method

.method public zzit()Ljava/lang/Void;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmf;->zziZ()Lcom/google/android/gms/internal/zzmq;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmf;->zzQW:Lcom/google/android/gms/internal/zzme$zza;

    new-instance v1, Lcom/google/android/gms/internal/zzmk;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzmk;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzme$zza;->zzb(Lcom/google/android/gms/internal/zzmk;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmf;->zziY()V

    :goto_0
    return-object v3

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzmf;->zzQV:Lcom/google/android/gms/internal/zzqi;

    new-instance v2, Lcom/google/android/gms/internal/zzmf$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzmf$1;-><init>(Lcom/google/android/gms/internal/zzmf;Lcom/google/android/gms/internal/zzmq;)V

    new-instance v0, Lcom/google/android/gms/internal/zzmf$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzmf$2;-><init>(Lcom/google/android/gms/internal/zzmf;)V

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzqi;->zza(Lcom/google/android/gms/internal/zzqi$zzc;Lcom/google/android/gms/internal/zzqi$zza;)V

    goto :goto_0
.end method

.method public synthetic zziw()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmf;->zzit()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
