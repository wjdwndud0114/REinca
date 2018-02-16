.class public Lcom/google/android/gms/internal/zzsb;
.super Lcom/google/android/gms/internal/zzru;


# instance fields
.field private final zzabk:Lcom/google/android/gms/internal/zzre;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrw;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzru;-><init>(Lcom/google/android/gms/internal/zzrw;)V

    new-instance v0, Lcom/google/android/gms/internal/zzre;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzre;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzabk:Lcom/google/android/gms/internal/zzre;

    return-void
.end method


# virtual methods
.method public zzlV()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsb;->zzma()Lcom/google/android/gms/internal/zzth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzth;->zzmx()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb;->zzabk:Lcom/google/android/gms/internal/zzre;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzre;->setAppName(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzth;->zzmy()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzabk:Lcom/google/android/gms/internal/zzre;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzre;->setAppVersion(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected zzmr()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsb;->zznt()Lcom/google/android/gms/analytics/zzh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzh;->zzmo()Lcom/google/android/gms/internal/zzre;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzabk:Lcom/google/android/gms/internal/zzre;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzre;->zza(Lcom/google/android/gms/internal/zzre;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsb;->zzlV()V

    return-void
.end method

.method public zznX()Lcom/google/android/gms/internal/zzre;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsb;->zznA()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzabk:Lcom/google/android/gms/internal/zzre;

    return-object v0
.end method
