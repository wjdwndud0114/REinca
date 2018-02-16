.class public Lcom/google/android/gms/common/internal/zzb;
.super Ljava/lang/Object;


# direct methods
.method public static zzF(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/zza;
    .locals 1
    .param p0    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/zzd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/zzd;-><init>(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/zza;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method

.method public static zzl(Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/zza;
    .locals 4
    .param p0    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzF(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/zza;

    move-result-object v0

    return-object v0
.end method
