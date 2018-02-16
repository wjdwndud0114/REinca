.class public abstract Lcom/google/android/gms/internal/zznh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract zza(Landroid/content/Context;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/internal/zzqa;)V
.end method

.method protected zze(Lcom/google/android/gms/internal/zznb;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zznb;->zzjg()Lcom/google/android/gms/internal/zzja$zzc;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zznb;->zzjg()Lcom/google/android/gms/internal/zzja$zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzja$zzc;->release()V

    :cond_0
    return-void
.end method
