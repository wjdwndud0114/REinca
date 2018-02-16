.class public final Lcom/google/android/gms/internal/zzrn;
.super Lcom/google/android/gms/analytics/zzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzf",
        "<",
        "Lcom/google/android/gms/internal/zzrn;",
        ">;"
    }
.end annotation


# instance fields
.field private zzacf:Ljava/lang/String;

.field private zzacg:Ljava/lang/String;

.field private zzach:Ljava/lang/String;

.field private zzaci:Ljava/lang/String;

.field private zzacj:Z

.field private zzack:Ljava/lang/String;

.field private zzacl:Z

.field private zzacm:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzf;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrn;->zzach:Ljava/lang/String;

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrn;->zzacg:Ljava/lang/String;

    return-void
.end method

.method public setSampleRate(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Sample rate must be between 0% and 100%"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzrn;->zzacm:D

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrn;->zzach:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "hitType"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrn;->zzacf:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clientId"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrn;->zzacg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "userId"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrn;->zzach:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "androidAdId"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrn;->zzaci:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AdTargetingEnabled"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzrn;->zzacj:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sessionControl"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrn;->zzack:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nonInteraction"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzrn;->zzacl:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sampleRate"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzrn;->zzacm:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrn;->zzj(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzR(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzrn;->zzacj:Z

    return-void
.end method

.method public zzS(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzrn;->zzacl:Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzrn;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrn;->zzacf:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrn;->zzacf:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrn;->zzbD(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrn;->zzacg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrn;->zzacg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrn;->setClientId(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrn;->zzach:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrn;->zzach:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrn;->setUserId(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrn;->zzaci:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrn;->zzaci:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrn;->zzbE(Ljava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrn;->zzacj:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrn;->zzR(Z)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrn;->zzack:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrn;->zzack:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrn;->zzbF(Ljava/lang/String;)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrn;->zzacl:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrn;->zzacl:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrn;->zzS(Z)V

    :cond_6
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzrn;->zzacm:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzrn;->zzacm:D

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrn;->setSampleRate(D)V

    :cond_7
    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/analytics/zzf;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzrn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrn;->zza(Lcom/google/android/gms/internal/zzrn;)V

    return-void
.end method

.method public zzbD(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrn;->zzacf:Ljava/lang/String;

    return-void
.end method

.method public zzbE(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrn;->zzaci:Ljava/lang/String;

    return-void
.end method

.method public zzbF(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrn;->zzack:Ljava/lang/String;

    return-void
.end method

.method public zzlX()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrn;->zzacg:Ljava/lang/String;

    return-object v0
.end method

.method public zzmT()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrn;->zzacf:Ljava/lang/String;

    return-object v0
.end method

.method public zzmU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrn;->zzaci:Ljava/lang/String;

    return-object v0
.end method

.method public zzmV()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrn;->zzacj:Z

    return v0
.end method

.method public zzmW()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrn;->zzack:Ljava/lang/String;

    return-object v0
.end method

.method public zzmX()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrn;->zzacl:Z

    return v0
.end method

.method public zzmY()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzrn;->zzacm:D

    return-wide v0
.end method
