.class public final Lcom/google/android/gms/internal/zzzq$zzc;
.super Lcom/google/android/gms/internal/zzzq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzzq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation


# instance fields
.field public final zzayq:Lcom/google/android/gms/internal/zzabe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzabe",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "*>;"
        }
    .end annotation
.end field

.field public final zzayr:Lcom/google/android/gms/internal/zzabr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzabr",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzabf;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzabf;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/zzzq$zza;-><init>(ILcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzabf;->zzayq:Lcom/google/android/gms/internal/zzabe;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzq$zzc;->zzayq:Lcom/google/android/gms/internal/zzabe;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzabf;->zzayr:Lcom/google/android/gms/internal/zzabr;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzq$zzc;->zzayr:Lcom/google/android/gms/internal/zzabr;

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzaad;Z)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/zzaad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/zzzq$zza;->zza(Lcom/google/android/gms/internal/zzaad;Z)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzaap$zza;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaap$zza",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzq$zzc;->zzayq:Lcom/google/android/gms/internal/zzabe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzabe;->zzwp()Lcom/google/android/gms/internal/zzaaz$zzb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaap$zza;->zzwc()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzq$zzc;->zzayq:Lcom/google/android/gms/internal/zzabe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzabe;->zzwp()Lcom/google/android/gms/internal/zzaaz$zzb;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzabf;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzzq$zzc;->zzayq:Lcom/google/android/gms/internal/zzabe;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzzq$zzc;->zzayr:Lcom/google/android/gms/internal/zzabr;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/zzabf;-><init>(Lcom/google/android/gms/internal/zzabe;Lcom/google/android/gms/internal/zzabr;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public bridge synthetic zzy(Lcom/google/android/gms/common/api/Status;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzzq$zza;->zzy(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
