.class Lcom/google/android/gms/ads/internal/overlay/zzw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/overlay/zzw;->zza(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/ads/internal/overlay/zzi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzNF:Lcom/google/android/gms/ads/internal/overlay/zzi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzw;Lcom/google/android/gms/ads/internal/overlay/zzi;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzw$1;->zzNF:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzw$1;->zzNF:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzhD()V

    return-void
.end method
