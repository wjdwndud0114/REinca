.class Lcom/google/android/gms/internal/zzaaj$zzd;
.super Lcom/google/android/gms/internal/zzaxr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaaj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzd"
.end annotation


# instance fields
.field private final zzaAb:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzaaj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaaj;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaxr;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaaj$zzd;->zzaAb:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzayb;)V
    .locals 3
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaj$zzd;->zzaAb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaaj;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzaaj;->zzd(Lcom/google/android/gms/internal/zzaaj;)Lcom/google/android/gms/internal/zzaan;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzaaj$zzd$1;

    invoke-direct {v2, p0, v0, v0, p1}, Lcom/google/android/gms/internal/zzaaj$zzd$1;-><init>(Lcom/google/android/gms/internal/zzaaj$zzd;Lcom/google/android/gms/internal/zzaam;Lcom/google/android/gms/internal/zzaaj;Lcom/google/android/gms/internal/zzayb;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaan;->zza(Lcom/google/android/gms/internal/zzaan$zza;)V

    goto :goto_0
.end method
