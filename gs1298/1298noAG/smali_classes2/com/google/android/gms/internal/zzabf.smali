.class public final Lcom/google/android/gms/internal/zzabf;
.super Ljava/lang/Object;


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
.method public constructor <init>(Lcom/google/android/gms/internal/zzabe;Lcom/google/android/gms/internal/zzabr;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/zzabe;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/zzabr;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzabe",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "*>;",
            "Lcom/google/android/gms/internal/zzabr",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabf;->zzayq:Lcom/google/android/gms/internal/zzabe;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzabf;->zzayr:Lcom/google/android/gms/internal/zzabr;

    return-void
.end method
