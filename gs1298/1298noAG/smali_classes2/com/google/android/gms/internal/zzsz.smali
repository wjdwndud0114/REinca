.class Lcom/google/android/gms/internal/zzsz;
.super Lcom/google/android/gms/internal/zzru;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzsz$zza;
    }
.end annotation


# static fields
.field private static final zzafy:[B


# instance fields
.field private final zzHY:Ljava/lang/String;

.field private final zzafx:Lcom/google/android/gms/internal/zztd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzsz;->zzafy:[B

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzrw;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzru;-><init>(Lcom/google/android/gms/internal/zzrw;)V

    const-string v0, "GoogleAnalytics"

    sget-object v1, Lcom/google/android/gms/internal/zzrv;->VERSION:Ljava/lang/String;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zztg;->zza(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzsz;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz;->zzHY:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/zztd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zznq()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zztd;-><init>(Lcom/google/android/gms/common/util/zze;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsz;->zzafx:Lcom/google/android/gms/internal/zztd;

    return-void
.end method

.method private zza(Ljava/net/URL;[B)I
    .locals 5

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "POST bytes, url"

    array-length v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p1}, Lcom/google/android/gms/internal/zzsz;->zzb(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zzkh()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Post payload\n"

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzsz;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsz;->zzc(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    array-length v0, p2

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzsz;->zzb(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zzlZ()Lcom/google/android/gms/internal/zzrs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzrs;->zzno()V

    :cond_1
    const-string v3, "POST status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/zzsz;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    :goto_1
    return v0

    :catch_0
    move-exception v1

    const-string v3, "Error closing http post connection output stream"

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/internal/zzsz;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_2
    :try_start_3
    const-string v3, "Network POST connection error"

    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/internal/zzsz;->zzd(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "Error closing http post connection output stream"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsz;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v1, :cond_6

    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :goto_5
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    throw v0

    :catch_3
    move-exception v1

    const-string v3, "Error closing http post connection output stream"

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/internal/zzsz;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method private static zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "%s/%s (Linux; U; Android %s; %s; %s Build/%s)"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private zza(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "UTF-8"

    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "UTF-8"

    invoke-static {p3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private zzb(Ljava/net/URL;)I
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "GET request"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzsz;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsz;->zzc(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzsz;->zzb(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zzlZ()Lcom/google/android/gms/internal/zzrs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzrs;->zzno()V

    :cond_0
    const-string v2, "GET status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/zzsz;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "Network GET connection error"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zzsz;->zzd(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0
.end method

.method private zzb(Ljava/net/URL;[B)I
    .locals 10

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzsz;->zzk([B)[B

    move-result-object v4

    const-string v0, "POST compressed size, ratio %, url"

    array-length v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/16 v6, 0x64

    array-length v3, v4

    int-to-long v8, v3

    mul-long/2addr v6, v8

    array-length v3, p2

    int-to-long v8, v3

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/google/android/gms/internal/zzsz;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    array-length v0, v4

    array-length v2, p2

    if-le v0, v2, :cond_0

    const-string v0, "Compressed payload is larger then uncompressed. compressed, uncompressed"

    array-length v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/zzsz;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zzkh()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "Post payload"

    const-string v3, "\n"

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zzsz;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsz;->zzc(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v0, "Content-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v3, v0, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, v4

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    :try_start_2
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzsz;->zzb(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zzlZ()Lcom/google/android/gms/internal/zzrs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzrs;->zzno()V

    :cond_2
    const-string v2, "POST status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/google/android/gms/internal/zzsz;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    :goto_1
    return v0

    :cond_4
    :try_start_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_2
    :try_start_5
    const-string v3, "Network compressed POST connection error"

    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/internal/zzsz;->zzd(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v1, :cond_5

    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "Error closing http compressed post connection output stream"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsz;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_4
    if-eqz v1, :cond_7

    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_7
    :goto_5
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw v0

    :catch_2
    move-exception v1

    const-string v2, "Error closing http compressed post connection output stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/zzsz;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2
.end method

.method private zzb(Lcom/google/android/gms/internal/zzst;Ljava/lang/String;)Ljava/net/URL;
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzst;->zzps()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsj;->zzoJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsj;->zzoL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsj;->zzoK()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsj;->zzoL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error trying to parse the hardcoded host url"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsz;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private zzb(Ljava/net/HttpURLConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v0, 0x400

    new-array v0, v0, [B

    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gtz v2, :cond_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error closing http connection input stream"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsz;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    throw v0

    :catch_1
    move-exception v1

    const-string v2, "Error closing http connection input stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/zzsz;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private zzg(Lcom/google/android/gms/internal/zzst;)Z
    .locals 6

    const/16 v5, 0xc8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzst;->zzps()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzsz;->zza(Lcom/google/android/gms/internal/zzst;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zznr()Lcom/google/android/gms/internal/zzsx;

    move-result-object v0

    const-string v2, "Error formatting hit for upload"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/zzsx;->zza(Lcom/google/android/gms/internal/zzst;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzsj;->zzoy()I

    move-result v4

    if-gt v3, v4, :cond_4

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzsz;->zzb(Lcom/google/android/gms/internal/zzst;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "Failed to build collect GET endpoint url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsz;->zzbS(Ljava/lang/String;)V

    move v1, v2

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzsz;->zzb(Ljava/net/URL;)I

    move-result v0

    if-eq v0, v5, :cond_0

    move v1, v2

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/zzsz;->zza(Lcom/google/android/gms/internal/zzst;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zznr()Lcom/google/android/gms/internal/zzsx;

    move-result-object v0

    const-string v2, "Error formatting hit for POST upload"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/zzsx;->zza(Lcom/google/android/gms/internal/zzst;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v3, v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzsj;->zzoA()I

    move-result v4

    if-le v3, v4, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zznr()Lcom/google/android/gms/internal/zzsx;

    move-result-object v0

    const-string v2, "Hit payload exceeds size limit"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/zzsx;->zza(Lcom/google/android/gms/internal/zzst;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzsz;->zzh(Lcom/google/android/gms/internal/zzst;)Ljava/net/URL;

    move-result-object v3

    if-nez v3, :cond_7

    const-string v0, "Failed to build collect POST endpoint url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsz;->zzbS(Ljava/lang/String;)V

    move v1, v2

    goto :goto_1

    :cond_7
    invoke-direct {p0, v3, v0}, Lcom/google/android/gms/internal/zzsz;->zza(Ljava/net/URL;[B)I

    move-result v0

    if-eq v0, v5, :cond_0

    move v1, v2

    goto :goto_1
.end method

.method private zzh(Lcom/google/android/gms/internal/zzst;)Ljava/net/URL;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzst;->zzps()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsj;->zzoJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsj;->zzoL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v1, v0

    :goto_1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsj;->zzoK()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsj;->zzoL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v1, v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "Error trying to parse the hardcoded host url"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsz;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_2
.end method

.method private zzi(Lcom/google/android/gms/internal/zzst;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzst;->zzpp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static zzk([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private zzpB()Ljava/net/URL;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsj;->zzoJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsj;->zzoM()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error trying to parse the hardcoded host url"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsz;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic zzpC()[B
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzsz;->zzafy:[B

    return-object v0
.end method


# virtual methods
.method zza(Lcom/google/android/gms/internal/zzst;Z)Ljava/lang/String;
    .locals 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzst;->zzfz()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "ht"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "qt"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "AppUID"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "z"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "_gmsv"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/gms/internal/zzsz;->zza(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to encode name or value"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzsz;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    :try_start_1
    const-string v0, "ht"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzst;->zzpq()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/internal/zzsz;->zza(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zznq()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzst;->zzpq()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-string v3, "qt"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/gms/internal/zzsz;->zza(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzst;->zzpt()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const-string v1, "z"

    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/gms/internal/zzsz;->zza(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzsz;->zzi(Lcom/google/android/gms/internal/zzst;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2
.end method

.method zza(Ljava/util/List;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzst;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzas(Z)V

    const-string v0, "Uploading batched hits. compression, count"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzsz;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/zzsz$zza;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzsz$zza;-><init>(Lcom/google/android/gms/internal/zzsz;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzst;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzsz$zza;->zzj(Lcom/google/android/gms/internal/zzst;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsz$zza;->zzpD()I

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzst;->zzpp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsz;->zzpB()Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "Failed to build batching endpoint url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsz;->zzbS(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsz$zza;->getPayload()[B

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/internal/zzsz;->zzb(Ljava/net/URL;[B)I

    move-result v0

    :goto_3
    const/16 v3, 0xc8

    if-ne v3, v0, :cond_6

    const-string v0, "Batched upload completed. Hits batched"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsz$zza;->zzpD()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzsz;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsz$zza;->getPayload()[B

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/internal/zzsz;->zza(Ljava/net/URL;[B)I

    move-result v0

    goto :goto_3

    :cond_6
    const-string v1, "Network error uploading hits. status code"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzsz;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsj;->zzoP()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Server instructed the client to stop batching"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsz;->zzbR(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz;->zzafx:Lcom/google/android/gms/internal/zztd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztd;->start()V

    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_2
.end method

.method zzc(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-nez v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to obtain http connection"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsj;->zzoW()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsj;->zzoX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsz;->zzHY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-object v0
.end method

.method protected zzmr()V
    .locals 2

    const-string v0, "Network initialized. User agent"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsz;->zzHY:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzsz;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public zzpA()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zzmq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zznA()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "No network connectivity"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsz;->zzbO(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    return v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public zzt(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzst;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zzmq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zznA()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsj;->zzoP()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsz;->zzafx:Lcom/google/android/gms/internal/zztd;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzsj;->zzoI()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zztd;->zzz(J)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v1, v2

    move v0, v2

    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/zzsz;->zza(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsj;->zzoN()Lcom/google/android/gms/internal/zzsd;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/zzsd;->zzadK:Lcom/google/android/gms/internal/zzsd;

    if-eq v0, v3, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzsj;->zzoO()Lcom/google/android/gms/internal/zzsg;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/zzsg;->zzadV:Lcom/google/android/gms/internal/zzsg;

    if-eq v3, v4, :cond_1

    move v1, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsz;->zzu(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method zzu(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzst;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzst;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzsz;->zzg(Lcom/google/android/gms/internal/zzst;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzst;->zzpp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsz;->zzns()Lcom/google/android/gms/internal/zzsj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzsj;->zzoG()I

    move-result v3

    if-lt v0, v3, :cond_0

    goto :goto_0
.end method
