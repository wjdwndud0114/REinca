.class Lcom/google/android/gms/ads/internal/zzu$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzu;->zzcw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzus:Lcom/google/android/gms/ads/internal/zzu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzu$2;->zzus:Lcom/google/android/gms/ads/internal/zzu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzu$2;->zzus:Lcom/google/android/gms/ads/internal/zzu;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzu;->zzb(Lcom/google/android/gms/ads/internal/zzu;)Lcom/google/android/gms/internal/zzch;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzu$2;->zzus:Lcom/google/android/gms/ads/internal/zzu;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzu;->zzb(Lcom/google/android/gms/ads/internal/zzu;)Lcom/google/android/gms/internal/zzch;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzch;->zza(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "Unable to process ad data"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzpe;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
