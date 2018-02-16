.class final Lcom/google/android/gms/common/internal/zzab$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/zzab$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/internal/zzab;->zza(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/api/zze;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/internal/zzab$zza",
        "<TR;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic zzaFe:Lcom/google/android/gms/common/api/zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/zze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzab$3;->zzaFe:Lcom/google/android/gms/common/api/zze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zze(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/zze;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzab$3;->zzaFe:Lcom/google/android/gms/common/api/zze;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/zze;->zzb(Lcom/google/android/gms/common/api/Result;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzab$3;->zzaFe:Lcom/google/android/gms/common/api/zze;

    return-object v0
.end method

.method public synthetic zzf(Lcom/google/android/gms/common/api/Result;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzab$3;->zze(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/zze;

    move-result-object v0

    return-object v0
.end method
