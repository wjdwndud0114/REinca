.class public Lcom/google/android/gms/tagmanager/zzz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzbp;


# instance fields
.field private zzaeb:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/gms/tagmanager/zzz;->zzaeb:I

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzz;->zzaeb:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setLogLevel(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/tagmanager/zzz;->zzaeb:I

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzz;->zzaeb:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public zzb(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzz;->zzaeb:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public zzbc(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzz;->zzaeb:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public zzbd(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzz;->zzaeb:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public zzbe(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzz;->zzaeb:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzz;->zzaeb:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
