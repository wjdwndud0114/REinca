.class Lcom/google/android/gms/ads/internal/overlay/zzd$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/overlay/zzd;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzMs:Lcom/google/android/gms/ads/internal/overlay/zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$1;->zzMs:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$1;->zzMs:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)Lcom/google/android/gms/ads/internal/overlay/zzi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$1;->zzMs:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)Lcom/google/android/gms/ads/internal/overlay/zzi;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzhz()V

    :cond_0
    return-void
.end method
