.class public Lcom/google/android/gms/common/internal/zzab;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/zzab$zzb;,
        Lcom/google/android/gms/common/internal/zzab$zza;
    }
.end annotation


# static fields
.field private static final zzaEZ:Lcom/google/android/gms/common/internal/zzab$zzb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/zzab$1;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzab$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzab;->zzaEZ:Lcom/google/android/gms/common/internal/zzab$zzb;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/api/zze;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/common/api/zze",
            "<TR;>;>(",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TR;>;TT;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/internal/zzab$3;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/zzab$3;-><init>(Lcom/google/android/gms/common/api/zze;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzab;->zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzab$zza;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzab$zza;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TR;>;",
            "Lcom/google/android/gms/common/internal/zzab$zza",
            "<TR;TT;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/internal/zzab;->zzaEZ:Lcom/google/android/gms/common/internal/zzab$zzb;

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzab$zza;Lcom/google/android/gms/common/internal/zzab$zzb;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/internal/zzab$zza;Lcom/google/android/gms/common/internal/zzab$zzb;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TR;>;",
            "Lcom/google/android/gms/common/internal/zzab$zza",
            "<TR;TT;>;",
            "Lcom/google/android/gms/common/internal/zzab$zzb;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v1, Lcom/google/android/gms/common/internal/zzab$2;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/google/android/gms/common/internal/zzab$2;-><init>(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/internal/zzab$zza;Lcom/google/android/gms/common/internal/zzab$zzb;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/PendingResult;->zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
