.class public Lcom/google/android/gms/internal/zzuy;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;Lcom/google/android/gms/auth/api/credentials/HintRequest;)Landroid/app/PendingIntent;
    .locals 3

    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "request must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzuy;->zza(Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/google/android/gms/internal/zzuu;->zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/HintRequest;Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x7d0

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;->zzqt()Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;->zzqt()Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzaiy:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    goto :goto_0
.end method
