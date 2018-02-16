.class public final Lextern/okhttp3/internal/http2/Header;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field public static final RESPONSE_STATUS:Lextern/okio/ByteString;

.field public static final TARGET_AUTHORITY:Lextern/okio/ByteString;

.field public static final TARGET_METHOD:Lextern/okio/ByteString;

.field public static final TARGET_PATH:Lextern/okio/ByteString;

.field public static final TARGET_SCHEME:Lextern/okio/ByteString;


# instance fields
.field final hpackSize:I

.field public final name:Lextern/okio/ByteString;

.field public final value:Lextern/okio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, ":status"

    invoke-static {v0}, Lextern/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lextern/okio/ByteString;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/internal/http2/Header;->RESPONSE_STATUS:Lextern/okio/ByteString;

    .line 25
    const-string v0, ":method"

    invoke-static {v0}, Lextern/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lextern/okio/ByteString;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/internal/http2/Header;->TARGET_METHOD:Lextern/okio/ByteString;

    .line 26
    const-string v0, ":path"

    invoke-static {v0}, Lextern/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lextern/okio/ByteString;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/internal/http2/Header;->TARGET_PATH:Lextern/okio/ByteString;

    .line 27
    const-string v0, ":scheme"

    invoke-static {v0}, Lextern/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lextern/okio/ByteString;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/internal/http2/Header;->TARGET_SCHEME:Lextern/okio/ByteString;

    .line 28
    const-string v0, ":authority"

    invoke-static {v0}, Lextern/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lextern/okio/ByteString;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lextern/okio/ByteString;

    return-void
.end method

.method public constructor <init>(Lextern/okio/ByteString;Lextern/okio/ByteString;)V
    .locals 2
    .param p1, "name"    # Lextern/okio/ByteString;
    .param p2, "value"    # Lextern/okio/ByteString;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lextern/okhttp3/internal/http2/Header;->name:Lextern/okio/ByteString;

    .line 47
    iput-object p2, p0, Lextern/okhttp3/internal/http2/Header;->value:Lextern/okio/ByteString;

    .line 48
    invoke-virtual {p1}, Lextern/okio/ByteString;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-virtual {p2}, Lextern/okio/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lextern/okhttp3/internal/http2/Header;->hpackSize:I

    .line 49
    return-void
.end method

.method public constructor <init>(Lextern/okio/ByteString;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Lextern/okio/ByteString;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p2}, Lextern/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lextern/okio/ByteString;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lextern/okhttp3/internal/http2/Header;-><init>(Lextern/okio/ByteString;Lextern/okio/ByteString;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {p1}, Lextern/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lextern/okio/ByteString;

    move-result-object v0

    invoke-static {p2}, Lextern/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lextern/okio/ByteString;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lextern/okhttp3/internal/http2/Header;-><init>(Lextern/okio/ByteString;Lextern/okio/ByteString;)V

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 52
    instance-of v2, p1, Lextern/okhttp3/internal/http2/Header;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 53
    check-cast v0, Lextern/okhttp3/internal/http2/Header;

    .line 54
    .local v0, "that":Lextern/okhttp3/internal/http2/Header;
    iget-object v2, p0, Lextern/okhttp3/internal/http2/Header;->name:Lextern/okio/ByteString;

    iget-object v3, v0, Lextern/okhttp3/internal/http2/Header;->name:Lextern/okio/ByteString;

    invoke-virtual {v2, v3}, Lextern/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lextern/okhttp3/internal/http2/Header;->value:Lextern/okio/ByteString;

    iget-object v3, v0, Lextern/okhttp3/internal/http2/Header;->value:Lextern/okio/ByteString;

    invoke-virtual {v2, v3}, Lextern/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 57
    .end local v0    # "that":Lextern/okhttp3/internal/http2/Header;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 61
    const/16 v0, 0x11

    .line 62
    .local v0, "result":I
    iget-object v1, p0, Lextern/okhttp3/internal/http2/Header;->name:Lextern/okio/ByteString;

    invoke-virtual {v1}, Lextern/okio/ByteString;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 63
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lextern/okhttp3/internal/http2/Header;->value:Lextern/okio/ByteString;

    invoke-virtual {v2}, Lextern/okio/ByteString;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 64
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 68
    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lextern/okhttp3/internal/http2/Header;->name:Lextern/okio/ByteString;

    invoke-virtual {v3}, Lextern/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lextern/okhttp3/internal/http2/Header;->value:Lextern/okio/ByteString;

    invoke-virtual {v3}, Lextern/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lextern/okhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
