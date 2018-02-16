.class Lcom/google/android/gms/tagmanager/zzdq;
.super Ljava/lang/Object;


# direct methods
.method private static zza(Lcom/google/android/gms/tagmanager/zzce;)Lcom/google/android/gms/tagmanager/zzce;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/zzce",
            "<",
            "Lcom/google/android/gms/internal/zzaj$zza;",
            ">;)",
            "Lcom/google/android/gms/tagmanager/zzce",
            "<",
            "Lcom/google/android/gms/internal/zzaj$zza;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzce;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaj$zza;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdm;->zze(Lcom/google/android/gms/internal/zzaj$zza;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdq;->zzhG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/tagmanager/zzce;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdm;->zzR(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaj$zza;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzce;->zzPu()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzce;-><init>(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "Escape URI: unsupported encoding"

    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/zzbo;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static zza(Lcom/google/android/gms/tagmanager/zzce;I)Lcom/google/android/gms/tagmanager/zzce;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/zzce",
            "<",
            "Lcom/google/android/gms/internal/zzaj$zza;",
            ">;I)",
            "Lcom/google/android/gms/tagmanager/zzce",
            "<",
            "Lcom/google/android/gms/internal/zzaj$zza;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzce;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaj$zza;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdq;->zzl(Lcom/google/android/gms/internal/zzaj$zza;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Escaping can only be applied to strings."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_0
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unsupported Value Escaping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdq;->zza(Lcom/google/android/gms/tagmanager/zzce;)Lcom/google/android/gms/tagmanager/zzce;

    move-result-object p0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method static varargs zza(Lcom/google/android/gms/tagmanager/zzce;[I)Lcom/google/android/gms/tagmanager/zzce;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/zzce",
            "<",
            "Lcom/google/android/gms/internal/zzaj$zza;",
            ">;[I)",
            "Lcom/google/android/gms/tagmanager/zzce",
            "<",
            "Lcom/google/android/gms/internal/zzaj$zza;",
            ">;"
        }
    .end annotation

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    invoke-static {p0, v2}, Lcom/google/android/gms/tagmanager/zzdq;->zza(Lcom/google/android/gms/tagmanager/zzce;I)Lcom/google/android/gms/tagmanager/zzce;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method static zzhG(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static zzl(Lcom/google/android/gms/internal/zzaj$zza;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdm;->zzj(Lcom/google/android/gms/internal/zzaj$zza;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    return v0
.end method
