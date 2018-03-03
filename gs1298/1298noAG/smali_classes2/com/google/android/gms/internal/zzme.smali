.class public final Lcom/google/android/gms/internal/zzme;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzme$zzb;,
        Lcom/google/android/gms/internal/zzme$zza;
    }
.end annotation


# direct methods
.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/internal/zzqi;Lcom/google/android/gms/internal/zzme$zza;)Lcom/google/android/gms/internal/zzpk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzqa;",
            "Lcom/google/android/gms/internal/zzqi",
            "<",
            "Lcom/google/android/gms/internal/zzmh;",
            ">;",
            "Lcom/google/android/gms/internal/zzme$zza;",
            ")",
            "Lcom/google/android/gms/internal/zzpk;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzme$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzme$1;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzme;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/internal/zzqi;Lcom/google/android/gms/internal/zzme$zza;Lcom/google/android/gms/internal/zzme$zzb;)Lcom/google/android/gms/internal/zzpk;

    move-result-object v0

    return-object v0
.end method

.method static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/internal/zzqi;Lcom/google/android/gms/internal/zzme$zza;Lcom/google/android/gms/internal/zzme$zzb;)Lcom/google/android/gms/internal/zzpk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzqa;",
            "Lcom/google/android/gms/internal/zzqi",
            "<",
            "Lcom/google/android/gms/internal/zzmh;",
            ">;",
            "Lcom/google/android/gms/internal/zzme$zza;",
            "Lcom/google/android/gms/internal/zzme$zzb;",
            ")",
            "Lcom/google/android/gms/internal/zzpk;"
        }
    .end annotation

    invoke-interface {p4, p1}, Lcom/google/android/gms/internal/zzme$zzb;->zza(Lcom/google/android/gms/internal/zzqa;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/zzme;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqi;Lcom/google/android/gms/internal/zzme$zza;)Lcom/google/android/gms/internal/zzpk;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzme;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/internal/zzqi;Lcom/google/android/gms/internal/zzme$zza;)Lcom/google/android/gms/internal/zzpk;

    move-result-object v0

    goto :goto_0
.end method

.method private static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzqi;Lcom/google/android/gms/internal/zzme$zza;)Lcom/google/android/gms/internal/zzpk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzqi",
            "<",
            "Lcom/google/android/gms/internal/zzmh;",
            ">;",
            "Lcom/google/android/gms/internal/zzme$zza;",
            ")",
            "Lcom/google/android/gms/internal/zzpk;"
        }
    .end annotation

    const-string v0, "Fetching ad response from local ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpe;->zzbc(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzmf$zza;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzmf$zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqi;Lcom/google/android/gms/internal/zzme$zza;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmf;->zziw()Ljava/lang/Object;

    return-object v0
.end method

.method private static zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/internal/zzqi;Lcom/google/android/gms/internal/zzme$zza;)Lcom/google/android/gms/internal/zzpk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzqa;",
            "Lcom/google/android/gms/internal/zzqi",
            "<",
            "Lcom/google/android/gms/internal/zzmh;",
            ">;",
            "Lcom/google/android/gms/internal/zzme$zza;",
            ")",
            "Lcom/google/android/gms/internal/zzpk;"
        }
    .end annotation

    const-string v0, "Fetching ad response from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpe;->zzbc(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzeh;->zzeO()Lcom/google/android/gms/internal/zzpx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzpx;->zzP(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Failed to connect to remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpe;->zzbe(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzmf$zzb;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzmf$zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqa;Lcom/google/android/gms/internal/zzqi;Lcom/google/android/gms/internal/zzme$zza;)V

    goto :goto_0
.end method
