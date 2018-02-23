.class public Lcom/google/android/gms/internal/zzaae;
.super Lcom/google/android/gms/internal/zzzw;


# instance fields
.field private zzaxK:Lcom/google/android/gms/internal/zzaap;

.field private final zzazH:Lcom/google/android/gms/common/util/zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/util/zza",
            "<",
            "Lcom/google/android/gms/internal/zzzs",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzaax;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzzw;-><init>(Lcom/google/android/gms/internal/zzaax;)V

    new-instance v0, Lcom/google/android/gms/common/util/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/util/zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaae;->zzazH:Lcom/google/android/gms/common/util/zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaae;->zzaBs:Lcom/google/android/gms/internal/zzaax;

    const-string v1, "ConnectionlessLifecycleHelper"

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/internal/zzaax;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzaaw;)V

    return-void
.end method

.method public static zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzaap;Lcom/google/android/gms/internal/zzzs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/internal/zzaap;",
            "Lcom/google/android/gms/internal/zzzs",
            "<*>;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/zzaae;->zzs(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzaax;

    move-result-object v1

    const-string v0, "ConnectionlessLifecycleHelper"

    const-class v2, Lcom/google/android/gms/internal/zzaae;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzaax;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzaaw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaae;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzaae;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaae;-><init>(Lcom/google/android/gms/internal/zzaax;)V

    :cond_0
    iput-object p1, v0, Lcom/google/android/gms/internal/zzaae;->zzaxK:Lcom/google/android/gms/internal/zzaap;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzaae;->zza(Lcom/google/android/gms/internal/zzzs;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaap;->zza(Lcom/google/android/gms/internal/zzaae;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzzs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzzs",
            "<*>;)V"
        }
    .end annotation

    const-string v0, "ApiKey cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaae;->zzazH:Lcom/google/android/gms/common/util/zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/util/zza;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzzw;->onStart()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaae;->zzazH:Lcom/google/android/gms/common/util/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/common/util/zza;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaae;->zzaxK:Lcom/google/android/gms/internal/zzaap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzaap;->zza(Lcom/google/android/gms/internal/zzaae;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzzw;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaae;->zzaxK:Lcom/google/android/gms/internal/zzaap;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzaap;->zzb(Lcom/google/android/gms/internal/zzaae;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaae;->zzaxK:Lcom/google/android/gms/internal/zzaap;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzaap;->zza(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method protected zzuW()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaae;->zzaxK:Lcom/google/android/gms/internal/zzaap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaap;->zzuW()V

    return-void
.end method

.method zzvx()Lcom/google/android/gms/common/util/zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/util/zza",
            "<",
            "Lcom/google/android/gms/internal/zzzs",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaae;->zzazH:Lcom/google/android/gms/common/util/zza;

    return-object v0
.end method
