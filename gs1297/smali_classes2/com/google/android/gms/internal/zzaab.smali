.class public final Lcom/google/android/gms/internal/zzaab;
.super Lcom/google/android/gms/common/api/zzc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Lcom/google/android/gms/common/api/zzc",
        "<TO;>;"
    }
.end annotation


# instance fields
.field private final zzaxY:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzaxn;",
            "Lcom/google/android/gms/internal/zzaxo;",
            ">;"
        }
    .end annotation
.end field

.field private final zzazq:Lcom/google/android/gms/common/api/Api$zze;

.field private final zzazr:Lcom/google/android/gms/internal/zzzy;

.field private final zzazs:Lcom/google/android/gms/common/internal/zzg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Landroid/os/Looper;Lcom/google/android/gms/common/api/Api$zze;Lcom/google/android/gms/internal/zzzy;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/Api$zza;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/common/api/Api$zze;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/zzzy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/api/Api$zze;",
            "Lcom/google/android/gms/internal/zzzy;",
            "Lcom/google/android/gms/common/internal/zzg;",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzaxn;",
            "Lcom/google/android/gms/internal/zzaxo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/zzc;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaab;->zzazq:Lcom/google/android/gms/common/api/Api$zze;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzaab;->zzazr:Lcom/google/android/gms/internal/zzzy;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzaab;->zzazs:Lcom/google/android/gms/common/internal/zzg;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzaab;->zzaxY:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaab;->zzaxK:Lcom/google/android/gms/internal/zzaap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzaap;->zza(Lcom/google/android/gms/common/api/zzc;)V

    return-void
.end method


# virtual methods
.method public buildApiClient(Landroid/os/Looper;Lcom/google/android/gms/internal/zzaap$zza;)Lcom/google/android/gms/common/api/Api$zze;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/internal/zzaap$zza",
            "<TO;>;)",
            "Lcom/google/android/gms/common/api/Api$zze;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaab;->zzazr:Lcom/google/android/gms/internal/zzzy;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzzy;->zza(Lcom/google/android/gms/internal/zzzz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaab;->zzazq:Lcom/google/android/gms/common/api/Api$zze;

    return-object v0
.end method

.method public createSignInCoordinator(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/internal/zzabj;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzabj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaab;->zzazs:Lcom/google/android/gms/common/internal/zzg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaab;->zzaxY:Lcom/google/android/gms/common/api/Api$zza;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/zzabj;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/Api$zza;)V

    return-object v0
.end method

.method public zzvr()Lcom/google/android/gms/common/api/Api$zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaab;->zzazq:Lcom/google/android/gms/common/api/Api$zze;

    return-object v0
.end method
