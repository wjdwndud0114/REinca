.class public final Lcom/google/android/gms/analytics/zzc;
.super Ljava/lang/Object;


# direct methods
.method public static zzal(I)Ljava/lang/String;
    .locals 1

    const-string v0, "&cd"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzc;->zzc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzam(I)Ljava/lang/String;
    .locals 1

    const-string v0, "cd"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzc;->zzc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzan(I)Ljava/lang/String;
    .locals 1

    const-string v0, "&cm"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzc;->zzc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzao(I)Ljava/lang/String;
    .locals 1

    const-string v0, "cm"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzc;->zzc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzap(I)Ljava/lang/String;
    .locals 1

    const-string v0, "&pr"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzc;->zzc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzaq(I)Ljava/lang/String;
    .locals 1

    const-string v0, "pr"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzc;->zzc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzar(I)Ljava/lang/String;
    .locals 1

    const-string v0, "&promo"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzc;->zzc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzas(I)Ljava/lang/String;
    .locals 1

    const-string v0, "promo"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzc;->zzc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzat(I)Ljava/lang/String;
    .locals 1

    const-string v0, "pi"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzc;->zzc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzau(I)Ljava/lang/String;
    .locals 1

    const-string v0, "&il"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzc;->zzc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzav(I)Ljava/lang/String;
    .locals 1

    const-string v0, "il"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzc;->zzc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzaw(I)Ljava/lang/String;
    .locals 1

    const-string v0, "cd"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzc;->zzc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzax(I)Ljava/lang/String;
    .locals 1

    const-string v0, "cm"

    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzc;->zzc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static zzc(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const-string v0, "index out of range for prefix"

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzsw;->zzf(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
