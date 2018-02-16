.class public Lcom/google/android/gms/tagmanager/zzaa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzat;


# static fields
.field private static final zzbCG:Ljava/lang/Object;

.field private static zzbDU:Lcom/google/android/gms/tagmanager/zzaa;


# instance fields
.field private zzbDV:Lcom/google/android/gms/tagmanager/zzau;

.field private zzbDi:Lcom/google/android/gms/tagmanager/zzcl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzaa;->zzbCG:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzav;->zzbI(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzav;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/tagmanager/zzda;

    invoke-direct {v1}, Lcom/google/android/gms/tagmanager/zzda;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzaa;-><init>(Lcom/google/android/gms/tagmanager/zzau;Lcom/google/android/gms/tagmanager/zzcl;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/tagmanager/zzau;Lcom/google/android/gms/tagmanager/zzcl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzbDV:Lcom/google/android/gms/tagmanager/zzau;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzbDi:Lcom/google/android/gms/tagmanager/zzcl;

    return-void
.end method

.method public static zzbB(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzat;
    .locals 2

    sget-object v1, Lcom/google/android/gms/tagmanager/zzaa;->zzbCG:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzaa;->zzbDU:Lcom/google/android/gms/tagmanager/zzaa;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/zzaa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzaa;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzaa;->zzbDU:Lcom/google/android/gms/tagmanager/zzaa;

    :cond_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzaa;->zzbDU:Lcom/google/android/gms/tagmanager/zzaa;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public zzhi(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzbDi:Lcom/google/android/gms/tagmanager/zzcl;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzcl;->zzpv()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Too many urls sent too quickly with the TagManagerSender, rate limiting invoked."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->zzbe(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zzbDV:Lcom/google/android/gms/tagmanager/zzau;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzau;->zzhm(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
