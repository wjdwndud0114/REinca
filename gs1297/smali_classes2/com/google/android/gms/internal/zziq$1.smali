.class Lcom/google/android/gms/internal/zziq$1;
.super Lcom/google/android/gms/internal/zzel$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zziq;->zzc(Lcom/google/android/gms/ads/internal/zzl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzIl:Lcom/google/android/gms/internal/zziq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zziq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zziq$1;->zzIl:Lcom/google/android/gms/internal/zziq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzel$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zziq$1;->zzIl:Lcom/google/android/gms/internal/zziq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zziq;->zza(Lcom/google/android/gms/internal/zziq;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zziq$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zziq$1$1;-><init>(Lcom/google/android/gms/internal/zziq$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zziq$1;->zzIl:Lcom/google/android/gms/internal/zziq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zziq;->zza(Lcom/google/android/gms/internal/zziq;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zziq$1$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zziq$1$2;-><init>(Lcom/google/android/gms/internal/zziq$1;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Pooled interstitial failed to load."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpe;->v(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zziq$1;->zzIl:Lcom/google/android/gms/internal/zziq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zziq;->zza(Lcom/google/android/gms/internal/zziq;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zziq$1$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zziq$1$3;-><init>(Lcom/google/android/gms/internal/zziq$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAdLoaded()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zziq$1;->zzIl:Lcom/google/android/gms/internal/zziq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zziq;->zza(Lcom/google/android/gms/internal/zziq;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zziq$1$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zziq$1$4;-><init>(Lcom/google/android/gms/internal/zziq$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Pooled interstitial loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpe;->v(Ljava/lang/String;)V

    return-void
.end method

.method public onAdOpened()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zziq$1;->zzIl:Lcom/google/android/gms/internal/zziq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zziq;->zza(Lcom/google/android/gms/internal/zziq;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zziq$1$5;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zziq$1$5;-><init>(Lcom/google/android/gms/internal/zziq$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
