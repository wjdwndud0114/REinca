.class final Lcom/google/android/gms/ads/internal/zzo$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzhx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzo;->zza(Lcom/google/android/gms/internal/zzjw;Lcom/google/android/gms/internal/zzjx;Lcom/google/android/gms/ads/internal/zzf$zza;)Lcom/google/android/gms/internal/zzhx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zztR:Lcom/google/android/gms/internal/zzjw;

.field final synthetic zztS:Lcom/google/android/gms/ads/internal/zzf$zza;

.field final synthetic zztT:Lcom/google/android/gms/internal/zzjx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjw;Lcom/google/android/gms/ads/internal/zzf$zza;Lcom/google/android/gms/internal/zzjx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzo$5;->zztR:Lcom/google/android/gms/internal/zzjw;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzo$5;->zztS:Lcom/google/android/gms/ads/internal/zzf$zza;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzo$5;->zztT:Lcom/google/android/gms/internal/zzjx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzqp;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqp;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzqp;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzo$5;->zztR:Lcom/google/android/gms/internal/zzjw;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzo$5;->zztR:Lcom/google/android/gms/internal/zzjw;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzjw;->getOverrideClickHandling()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzo$5;->zztR:Lcom/google/android/gms/internal/zzjw;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzjw;->zzk(Lcom/google/android/gms/dynamic/zzd;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzo$5;->zztS:Lcom/google/android/gms/ads/internal/zzf$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzf$zza;->onClick()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to call handleClick on mapper"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpe;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzo;->zzb(Lcom/google/android/gms/internal/zzqp;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzo$5;->zztT:Lcom/google/android/gms/internal/zzjx;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzo$5;->zztT:Lcom/google/android/gms/internal/zzjx;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzjx;->getOverrideClickHandling()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzo$5;->zztT:Lcom/google/android/gms/internal/zzjx;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzjx;->zzk(Lcom/google/android/gms/dynamic/zzd;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzo$5;->zztS:Lcom/google/android/gms/ads/internal/zzf$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzf$zza;->onClick()V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzo;->zzb(Lcom/google/android/gms/internal/zzqp;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
