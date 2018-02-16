.class Lcom/google/android/gms/tagmanager/zzdc;
.super Lcom/google/android/gms/tagmanager/zzdb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzdc$zzb;,
        Lcom/google/android/gms/tagmanager/zzdc$zza;
    }
.end annotation


# static fields
.field private static final zzbFZ:Ljava/lang/Object;

.field private static zzbGl:Lcom/google/android/gms/tagmanager/zzdc;


# instance fields
.field private connected:Z

.field private zzbGa:Landroid/content/Context;

.field private zzbGb:Lcom/google/android/gms/tagmanager/zzaw;

.field private volatile zzbGc:Lcom/google/android/gms/tagmanager/zzau;

.field private zzbGd:I

.field private zzbGe:Z

.field private zzbGf:Z

.field private zzbGg:Z

.field private zzbGh:Lcom/google/android/gms/tagmanager/zzax;

.field private zzbGi:Lcom/google/android/gms/tagmanager/zzdc$zza;

.field private zzbGj:Lcom/google/android/gms/tagmanager/zzbt;

.field private zzbGk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdc;->zzbFZ:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzdb;-><init>()V

    const v0, 0x1b7740

    iput v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGd:I

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGe:Z

    iput-boolean v2, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGf:Z

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/zzdc;->connected:Z

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGg:Z

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdc$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzdc$1;-><init>(Lcom/google/android/gms/tagmanager/zzdc;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGh:Lcom/google/android/gms/tagmanager/zzax;

    iput-boolean v2, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGk:Z

    return-void
.end method

.method private isPowerSaveMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGk:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->connected:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGd:I

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zzPT()Lcom/google/android/gms/tagmanager/zzdc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGl:Lcom/google/android/gms/tagmanager/zzdc;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdc;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzdc;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGl:Lcom/google/android/gms/tagmanager/zzdc;

    :cond_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGl:Lcom/google/android/gms/tagmanager/zzdc;

    return-object v0
.end method

.method private zzPU()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzbt;-><init>(Lcom/google/android/gms/tagmanager/zzdb;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGj:Lcom/google/android/gms/tagmanager/zzbt;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGj:Lcom/google/android/gms/tagmanager/zzbt;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGa:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzbt;->zzbJ(Landroid/content/Context;)V

    return-void
.end method

.method private zzPV()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdc$zzb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/tagmanager/zzdc$zzb;-><init>(Lcom/google/android/gms/tagmanager/zzdc;Lcom/google/android/gms/tagmanager/zzdc$1;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGi:Lcom/google/android/gms/tagmanager/zzdc$zza;

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGd:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGi:Lcom/google/android/gms/tagmanager/zzdc$zza;

    iget v1, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGd:I

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/tagmanager/zzdc$zza;->zzx(J)V

    :cond_0
    return-void
.end method

.method static synthetic zzPX()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdc;->zzbFZ:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzdc;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGa:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/tagmanager/zzdc;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzdc;->isPowerSaveMode()Z

    move-result v0

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/tagmanager/zzdc;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGd:I

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/tagmanager/zzdc;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->connected:Z

    return v0
.end method

.method static synthetic zze(Lcom/google/android/gms/tagmanager/zzdc;)Lcom/google/android/gms/tagmanager/zzaw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGb:Lcom/google/android/gms/tagmanager/zzaw;

    return-object v0
.end method

.method private zzog()V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzdc;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGi:Lcom/google/android/gms/tagmanager/zzdc$zza;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzdc$zza;->cancel()V

    const-string v0, "PowerSaveMode initiated."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->v(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGi:Lcom/google/android/gms/tagmanager/zzdc$zza;

    iget v1, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGd:I

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/tagmanager/zzdc$zza;->zzx(J)V

    const-string v0, "PowerSaveMode terminated."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->v(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized dispatch()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGf:Z

    if-nez v0, :cond_0

    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGe:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGc:Lcom/google/android/gms/tagmanager/zzau;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzdc$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/zzdc$2;-><init>(Lcom/google/android/gms/tagmanager/zzdc;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzau;->zzp(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized zzPW()Lcom/google/android/gms/tagmanager/zzaw;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGb:Lcom/google/android/gms/tagmanager/zzaw;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGa:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/tagmanager/zzcg;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGh:Lcom/google/android/gms/tagmanager/zzax;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGa:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzcg;-><init>(Lcom/google/android/gms/tagmanager/zzax;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGb:Lcom/google/android/gms/tagmanager/zzaw;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGi:Lcom/google/android/gms/tagmanager/zzdc$zza;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzdc;->zzPV()V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGf:Z

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGe:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzdc;->dispatch()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGe:Z

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGj:Lcom/google/android/gms/tagmanager/zzbt;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGg:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzdc;->zzPU()V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGb:Lcom/google/android/gms/tagmanager/zzaw;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method declared-synchronized zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzau;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGa:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGa:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGc:Lcom/google/android/gms/tagmanager/zzau;

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGc:Lcom/google/android/gms/tagmanager/zzau;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zzaN(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGk:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tagmanager/zzdc;->zze(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized zze(ZZ)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzdc;->isPowerSaveMode()Z

    move-result v0

    iput-boolean p1, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGk:Z

    iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/zzdc;->connected:Z

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzdc;->isPowerSaveMode()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzdc;->zzog()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zznn()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzdc;->isPowerSaveMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdc;->zzbGi:Lcom/google/android/gms/tagmanager/zzdc$zza;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzdc$zza;->zzPY()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
