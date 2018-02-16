.class public Lcom/google/android/gms/internal/zzaaq;
.super Lcom/google/android/gms/internal/zzaah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Lcom/google/android/gms/internal/zzaah;"
    }
.end annotation


# instance fields
.field private final zzaBl:Lcom/google/android/gms/common/api/zzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/zzc",
            "<TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/zzc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc",
            "<TO;>;)V"
        }
    .end annotation

    const-string v0, "Method is not supported by connectionless client. APIs supporting connectionless client must not call this method."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaah;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaaq;->zzaBl:Lcom/google/android/gms/common/api/zzc;

    return-void
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaq;->zzaBl:Lcom/google/android/gms/common/api/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzc;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/zzzv$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/internal/zzzv$zza",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaq;->zzaBl:Lcom/google/android/gms/common/api/zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/zzc;->doRead(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzabp;)V
    .locals 0

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/zzzv$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzzv$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaq;->zzaBl:Lcom/google/android/gms/common/api/zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/zzc;->doWrite(Lcom/google/android/gms/internal/zzzv$zza;)Lcom/google/android/gms/internal/zzzv$zza;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzabp;)V
    .locals 0

    return-void
.end method
