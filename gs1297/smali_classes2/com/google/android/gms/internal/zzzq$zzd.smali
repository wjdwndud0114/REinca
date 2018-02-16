.class public final Lcom/google/android/gms/internal/zzzq$zzd;
.super Lcom/google/android/gms/internal/zzzq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzzq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzzq;"
    }
.end annotation


# instance fields
.field private final zzayo:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<TTResult;>;"
        }
    .end annotation
.end field

.field private final zzays:Lcom/google/android/gms/internal/zzabn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzabn",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "TTResult;>;"
        }
    .end annotation
.end field

.field private final zzayt:Lcom/google/android/gms/internal/zzabk;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/zzabn;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/zzabk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/internal/zzabn",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "TTResult;>;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<TTResult;>;",
            "Lcom/google/android/gms/internal/zzabk;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzzq;-><init>(I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzzq$zzd;->zzayo:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzzq$zzd;->zzays:Lcom/google/android/gms/internal/zzabn;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzzq$zzd;->zzayt:Lcom/google/android/gms/internal/zzabk;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaad;Z)V
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/zzaad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzq$zzd;->zzayo:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/zzaad;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Z)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaap$zza;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaap$zza",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzq$zzd;->zzays:Lcom/google/android/gms/internal/zzabn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaap$zza;->zzvr()Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzq$zzd;->zzayo:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzabn;->zza(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzzq;->zzb(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzzq$zzd;->zzy(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method

.method public zzy(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzq$zzd;->zzayo:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzq$zzd;->zzayt:Lcom/google/android/gms/internal/zzabk;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzabk;->zzz(Lcom/google/android/gms/common/api/Status;)Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method
