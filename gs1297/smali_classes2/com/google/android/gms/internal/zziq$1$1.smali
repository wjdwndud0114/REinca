.class Lcom/google/android/gms/internal/zziq$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zziq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zziq$1;->onAdClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zziq$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzir;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzti:Lcom/google/android/gms/internal/zzel;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzti:Lcom/google/android/gms/internal/zzel;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzel;->onAdClosed()V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzcY()Lcom/google/android/gms/internal/zzis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzis;->zzgj()V

    return-void
.end method