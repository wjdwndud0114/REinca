.class Lcom/google/android/gms/internal/zzjp$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzjp;->zzd(Ljava/util/List;)Lcom/google/android/gms/internal/zzjn;
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
        "Lcom/google/android/gms/internal/zzjn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzKN:Lcom/google/android/gms/internal/zzjm;

.field final synthetic zzKO:Lcom/google/android/gms/internal/zzjp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjp;Lcom/google/android/gms/internal/zzjm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjp$1;->zzKO:Lcom/google/android/gms/internal/zzjp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjp$1;->zzKN:Lcom/google/android/gms/internal/zzjm;

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

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjp$1;->zzgI()Lcom/google/android/gms/internal/zzjn;

    move-result-object v0

    return-object v0
.end method

.method public zzgI()Lcom/google/android/gms/internal/zzjn;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjp$1;->zzKO:Lcom/google/android/gms/internal/zzjp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjp;->zza(Lcom/google/android/gms/internal/zzjp;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjp$1;->zzKO:Lcom/google/android/gms/internal/zzjp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjp;->zzb(Lcom/google/android/gms/internal/zzjp;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjp$1;->zzKN:Lcom/google/android/gms/internal/zzjm;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjp$1;->zzKO:Lcom/google/android/gms/internal/zzjp;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzjp;->zzc(Lcom/google/android/gms/internal/zzjp;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjp$1;->zzKO:Lcom/google/android/gms/internal/zzjp;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzjp;->zzd(Lcom/google/android/gms/internal/zzjp;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzjm;->zza(JJ)Lcom/google/android/gms/internal/zzjn;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
