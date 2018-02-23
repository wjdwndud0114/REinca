.class Lcom/google/android/gms/internal/zztc$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzso;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zztc;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaay:Lcom/google/android/gms/internal/zzsx;

.field final synthetic zzaaz:I

.field final synthetic zzafJ:Lcom/google/android/gms/internal/zzrw;

.field final synthetic zzafK:Lcom/google/android/gms/internal/zztc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zztc;ILcom/google/android/gms/internal/zzrw;Lcom/google/android/gms/internal/zzsx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zztc$1;->zzafK:Lcom/google/android/gms/internal/zztc;

    iput p2, p0, Lcom/google/android/gms/internal/zztc$1;->zzaaz:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zztc$1;->zzafJ:Lcom/google/android/gms/internal/zzrw;

    iput-object p4, p0, Lcom/google/android/gms/internal/zztc$1;->zzaay:Lcom/google/android/gms/internal/zzsx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzf(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zztc$1;->zzafK:Lcom/google/android/gms/internal/zztc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zztc;->zzb(Lcom/google/android/gms/internal/zztc;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zztc$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zztc$1$1;-><init>(Lcom/google/android/gms/internal/zztc$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
