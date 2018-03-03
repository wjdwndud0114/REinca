.class public Lcom/google/android/gms/internal/zzgq;
.super Lcom/google/android/gms/internal/zzhf$zza;

# interfaces
.implements Lcom/google/android/gms/internal/zzgu$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private zzFS:Ljava/lang/String;

.field private zzFT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzgo;",
            ">;"
        }
    .end annotation
.end field

.field private zzFU:Ljava/lang/String;

.field private zzFW:Ljava/lang/String;

.field private zzGa:Lcom/google/android/gms/internal/zzgm;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzGd:Lcom/google/android/gms/internal/zzgu;

.field private zzGe:Lcom/google/android/gms/internal/zzgz;

.field private zzGf:Ljava/lang/String;

.field private zzrN:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzgz;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzgm;Landroid/os/Bundle;)V
    .locals 1
    .param p7    # Lcom/google/android/gms/internal/zzgm;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhf$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgq;->zzrN:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgq;->zzFS:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgq;->zzFT:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgq;->zzFU:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzgq;->zzGe:Lcom/google/android/gms/internal/zzgz;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzgq;->zzFW:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzgq;->zzGf:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzgq;->zzGa:Lcom/google/android/gms/internal/zzgm;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzgq;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgq;->zzFS:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgq;->zzFT:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgq;->zzFU:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgq;->zzGe:Lcom/google/android/gms/internal/zzgz;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgq;->zzFW:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgq;->zzGf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgq;->zzGa:Lcom/google/android/gms/internal/zzgm;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgq;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgq;->zzrN:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgq;->zzGd:Lcom/google/android/gms/internal/zzgu;

    return-void
.end method

.method public getAdvertiser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgq;->zzGf:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgq;->zzFU:Ljava/lang/String;

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgq;->zzFW:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomTemplateId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgq;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHeadline()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgq;->zzFS:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgq;->zzFT:Ljava/util/List;

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzgu;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgq;->zzrN:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzgq;->zzGd:Lcom/google/android/gms/internal/zzgu;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzfM()Lcom/google/android/gms/dynamic/zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgq;->zzGd:Lcom/google/android/gms/internal/zzgu;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzfN()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method

.method public zzfO()Lcom/google/android/gms/internal/zzgm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgq;->zzGa:Lcom/google/android/gms/internal/zzgm;

    return-object v0
.end method

.method public zzfQ()Lcom/google/android/gms/internal/zzgz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgq;->zzGe:Lcom/google/android/gms/internal/zzgz;

    return-object v0
.end method
