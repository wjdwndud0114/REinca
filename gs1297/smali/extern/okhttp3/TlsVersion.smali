.class public final enum Lextern/okhttp3/TlsVersion;
.super Ljava/lang/Enum;
.source "TlsVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lextern/okhttp3/TlsVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lextern/okhttp3/TlsVersion;

.field public static final enum SSL_3_0:Lextern/okhttp3/TlsVersion;

.field public static final enum TLS_1_0:Lextern/okhttp3/TlsVersion;

.field public static final enum TLS_1_1:Lextern/okhttp3/TlsVersion;

.field public static final enum TLS_1_2:Lextern/okhttp3/TlsVersion;


# instance fields
.field final javaName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lextern/okhttp3/TlsVersion;

    const-string v1, "TLS_1_2"

    const-string v2, "TLSv1.2"

    invoke-direct {v0, v1, v3, v2}, Lextern/okhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lextern/okhttp3/TlsVersion;->TLS_1_2:Lextern/okhttp3/TlsVersion;

    .line 24
    new-instance v0, Lextern/okhttp3/TlsVersion;

    const-string v1, "TLS_1_1"

    const-string v2, "TLSv1.1"

    invoke-direct {v0, v1, v4, v2}, Lextern/okhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lextern/okhttp3/TlsVersion;->TLS_1_1:Lextern/okhttp3/TlsVersion;

    .line 25
    new-instance v0, Lextern/okhttp3/TlsVersion;

    const-string v1, "TLS_1_0"

    const-string v2, "TLSv1"

    invoke-direct {v0, v1, v5, v2}, Lextern/okhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lextern/okhttp3/TlsVersion;->TLS_1_0:Lextern/okhttp3/TlsVersion;

    .line 26
    new-instance v0, Lextern/okhttp3/TlsVersion;

    const-string v1, "SSL_3_0"

    const-string v2, "SSLv3"

    invoke-direct {v0, v1, v6, v2}, Lextern/okhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lextern/okhttp3/TlsVersion;->SSL_3_0:Lextern/okhttp3/TlsVersion;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lextern/okhttp3/TlsVersion;

    sget-object v1, Lextern/okhttp3/TlsVersion;->TLS_1_2:Lextern/okhttp3/TlsVersion;

    aput-object v1, v0, v3

    sget-object v1, Lextern/okhttp3/TlsVersion;->TLS_1_1:Lextern/okhttp3/TlsVersion;

    aput-object v1, v0, v4

    sget-object v1, Lextern/okhttp3/TlsVersion;->TLS_1_0:Lextern/okhttp3/TlsVersion;

    aput-object v1, v0, v5

    sget-object v1, Lextern/okhttp3/TlsVersion;->SSL_3_0:Lextern/okhttp3/TlsVersion;

    aput-object v1, v0, v6

    sput-object v0, Lextern/okhttp3/TlsVersion;->$VALUES:[Lextern/okhttp3/TlsVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "javaName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lextern/okhttp3/TlsVersion;->javaName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static forJavaName(Ljava/lang/String;)Lextern/okhttp3/TlsVersion;
    .locals 3
    .param p0, "javaName"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v0, "TLSv1.2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 37
    sget-object v0, Lextern/okhttp3/TlsVersion;->TLS_1_2:Lextern/okhttp3/TlsVersion;

    .line 43
    :goto_0
    return-object v0

    .line 38
    :cond_0
    const-string v0, "TLSv1.1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 39
    sget-object v0, Lextern/okhttp3/TlsVersion;->TLS_1_1:Lextern/okhttp3/TlsVersion;

    goto :goto_0

    .line 40
    :cond_1
    const-string v0, "TLSv1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 41
    sget-object v0, Lextern/okhttp3/TlsVersion;->TLS_1_0:Lextern/okhttp3/TlsVersion;

    goto :goto_0

    .line 42
    :cond_2
    const-string v0, "SSLv3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 43
    sget-object v0, Lextern/okhttp3/TlsVersion;->SSL_3_0:Lextern/okhttp3/TlsVersion;

    goto :goto_0

    .line 45
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected TLS version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lextern/okhttp3/TlsVersion;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lextern/okhttp3/TlsVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lextern/okhttp3/TlsVersion;

    return-object v0
.end method

.method public static values()[Lextern/okhttp3/TlsVersion;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lextern/okhttp3/TlsVersion;->$VALUES:[Lextern/okhttp3/TlsVersion;

    invoke-virtual {v0}, [Lextern/okhttp3/TlsVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lextern/okhttp3/TlsVersion;

    return-object v0
.end method


# virtual methods
.method public javaName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lextern/okhttp3/TlsVersion;->javaName:Ljava/lang/String;

    return-object v0
.end method
