.class Lcom/google/android/gms/internal/zzrw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzrw;->zznB()Ljava/lang/Thread$UncaughtExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzade:Lcom/google/android/gms/internal/zzrw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrw$1;->zzade:Lcom/google/android/gms/internal/zzrw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrw$1;->zzade:Lcom/google/android/gms/internal/zzrw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrw;->zznD()Lcom/google/android/gms/internal/zzsx;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Job execution failed"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/zzsx;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
