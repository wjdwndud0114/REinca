.class Lcom/google/android/gms/ads/internal/zzu$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzu;->zzcz()Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/internal/zzch;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzus:Lcom/google/android/gms/ads/internal/zzu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzu$3;->zzus:Lcom/google/android/gms/ads/internal/zzu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzu$3;->zzcA()Lcom/google/android/gms/internal/zzch;

    move-result-object v0

    return-object v0
.end method

.method public zzcA()Lcom/google/android/gms/internal/zzch;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzch;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzu$3;->zzus:Lcom/google/android/gms/ads/internal/zzu;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzu;->zzc(Lcom/google/android/gms/ads/internal/zzu;)Lcom/google/android/gms/internal/zzqa;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzqa;->zzaZ:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzu$3;->zzus:Lcom/google/android/gms/ads/internal/zzu;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzu;->zzd(Lcom/google/android/gms/ads/internal/zzu;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzch;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    return-object v0
.end method
