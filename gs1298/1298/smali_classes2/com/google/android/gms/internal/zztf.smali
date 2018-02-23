.class public Lcom/google/android/gms/internal/zztf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzsh;


# instance fields
.field public zzaar:Ljava/lang/String;

.field public zzafN:D

.field public zzafO:I

.field public zzafP:I

.field public zzafQ:I

.field public zzafR:I

.field public zzafS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zztf;->zzafN:D

    iput v2, p0, Lcom/google/android/gms/internal/zztf;->zzafO:I

    iput v2, p0, Lcom/google/android/gms/internal/zztf;->zzafP:I

    iput v2, p0, Lcom/google/android/gms/internal/zztf;->zzafQ:I

    iput v2, p0, Lcom/google/android/gms/internal/zztf;->zzafR:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zztf;->zzafS:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getSessionTimeout()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztf;->zzafO:I

    return v0
.end method

.method public getTrackingId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztf;->zzaar:Ljava/lang/String;

    return-object v0
.end method

.method public zzcc(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztf;->zzafS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public zzpS()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztf;->zzaar:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzpT()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/zztf;->zzafN:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzpU()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zztf;->zzafN:D

    return-wide v0
.end method

.method public zzpV()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztf;->zzafO:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzpW()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zztf;->zzafP:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzpX()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zztf;->zzafP:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzpY()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zztf;->zzafQ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzpZ()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zztf;->zzafQ:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzqa()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zztf;->zzafR:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzr(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztf;->zzcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
