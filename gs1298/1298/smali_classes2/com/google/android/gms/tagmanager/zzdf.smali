.class Lcom/google/android/gms/tagmanager/zzdf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzad;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzdf$zzb;,
        Lcom/google/android/gms/tagmanager/zzdf$zza;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzHY:Ljava/lang/String;

.field private final zzbGt:Lcom/google/android/gms/tagmanager/zzdf$zzb;

.field private final zzbGu:Lcom/google/android/gms/tagmanager/zzdf$zza;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzdf$zza;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdf$1;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzdf$1;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/tagmanager/zzdf;-><init>(Lcom/google/android/gms/tagmanager/zzdf$zzb;Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzdf$zza;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/tagmanager/zzdf$zzb;Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzdf$zza;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzdf;->zzbGt:Lcom/google/android/gms/tagmanager/zzdf$zzb;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzdf;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzdf;->zzbGu:Lcom/google/android/gms/tagmanager/zzdf$zza;

    const-string v1, "GoogleTagManager"

    const-string v2, "4.00"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdf;->zzc(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/zzdf;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzdf;->zzHY:Ljava/lang/String;

    return-void
.end method

.method static zzc(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public zzM(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/zzas;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x28

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v1, 0x1

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_6

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzas;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzdf;->zzd(Lcom/google/android/gms/tagmanager/zzas;)Ljava/net/URL;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "No destination: discarding hit."

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzbo;->zzbe(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzdf;->zzbGu:Lcom/google/android/gms/tagmanager/zzdf$zza;

    invoke-interface {v2, v0}, Lcom/google/android/gms/tagmanager/zzdf$zza;->zzb(Lcom/google/android/gms/tagmanager/zzas;)V

    move v0, v1

    :goto_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/google/android/gms/tagmanager/zzdf;->zzbGt:Lcom/google/android/gms/tagmanager/zzdf$zzb;

    invoke-interface {v7, v2}, Lcom/google/android/gms/tagmanager/zzdf$zzb;->zzd(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzdf;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzbt;->zzbK(Landroid/content/Context;)V

    move v1, v4

    :cond_1
    const-string v2, "User-Agent"

    iget-object v8, p0, Lcom/google/android/gms/tagmanager/zzdf;->zzHY:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    const/16 v8, 0xc8

    if-eq v2, v8, :cond_3

    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x19

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Bad response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzbo;->zzbe(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzdf;->zzbGu:Lcom/google/android/gms/tagmanager/zzdf$zza;

    invoke-interface {v2, v0}, Lcom/google/android/gms/tagmanager/zzdf$zza;->zzc(Lcom/google/android/gms/tagmanager/zzas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_2
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move v0, v1

    goto :goto_1

    :cond_3
    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzdf;->zzbGu:Lcom/google/android/gms/tagmanager/zzdf$zza;

    invoke-interface {v2, v0}, Lcom/google/android/gms/tagmanager/zzdf$zza;->zza(Lcom/google/android/gms/tagmanager/zzas;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    move-object v10, v2

    move-object v2, v3

    move v3, v1

    move-object v1, v10

    :goto_3
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_4
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v1

    move v2, v3

    move-object v3, v1

    :goto_4
    const-string v7, "Exception sending hit: "

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbo;->zzbe(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbo;->zzbe(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdf;->zzbGu:Lcom/google/android/gms/tagmanager/zzdf$zza;

    invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/zzdf$zza;->zzc(Lcom/google/android/gms/tagmanager/zzas;)V

    move v0, v2

    goto/16 :goto_1

    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    return-void

    :catch_1
    move-exception v2

    move-object v3, v2

    move v2, v1

    goto :goto_4

    :catchall_1
    move-exception v2

    move-object v10, v2

    move-object v2, v3

    move v3, v1

    move-object v1, v10

    goto :goto_3
.end method

.method public zzPa()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdf;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "...no network connectivity"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->v(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "%s/%s (Linux; U; Android %s; %s; %s Build/%s)"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method zzd(Lcom/google/android/gms/tagmanager/zzas;)Ljava/net/URL;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzas;->zzPk()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Error trying to parse the GTM url."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
