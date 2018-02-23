.class Lcom/google/android/gms/internal/zzij$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzij;->zzcm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzHW:Lcom/google/android/gms/internal/zzij;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzij;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzij$1;->zzHW:Lcom/google/android/gms/internal/zzij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzdg()Lcom/google/android/gms/internal/zzik;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzij$1;->zzHW:Lcom/google/android/gms/internal/zzij;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzik;->zzb(Lcom/google/android/gms/internal/zzij;)V

    return-void
.end method
