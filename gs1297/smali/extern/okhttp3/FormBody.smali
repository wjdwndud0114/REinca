.class public final Lextern/okhttp3/FormBody;
.super Lextern/okhttp3/RequestBody;
.source "FormBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lextern/okhttp3/FormBody$1;,
        Lextern/okhttp3/FormBody$Builder;
    }
.end annotation


# static fields
.field private static final CONTENT_TYPE:Lextern/okhttp3/MediaType;


# instance fields
.field private final encodedNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final encodedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lextern/okhttp3/MediaType;->parse(Ljava/lang/String;)Lextern/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/FormBody;->CONTENT_TYPE:Lextern/okhttp3/MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "encodedNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "encodedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lextern/okhttp3/RequestBody;-><init>()V

    .line 37
    invoke-static {p1}, Lextern/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/FormBody;->encodedNames:Ljava/util/List;

    .line 38
    invoke-static {p2}, Lextern/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/FormBody;->encodedValues:Ljava/util/List;

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Lextern/okhttp3/FormBody$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Lextern/okhttp3/FormBody$1;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lextern/okhttp3/FormBody;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private writeOrCountBytes(Lextern/okio/BufferedSink;Z)J
    .locals 6
    .param p1, "sink"    # Lextern/okio/BufferedSink;
    .param p2, "countBytes"    # Z

    .prologue
    .line 81
    const-wide/16 v2, 0x0

    .line 84
    .local v2, "byteCount":J
    if-eqz p2, :cond_1

    .line 85
    new-instance v0, Lextern/okio/Buffer;

    invoke-direct {v0}, Lextern/okio/Buffer;-><init>()V

    .line 90
    .local v0, "buffer":Lextern/okio/Buffer;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lextern/okhttp3/FormBody;->encodedNames:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 91
    if-lez v1, :cond_0

    const/16 v5, 0x26

    invoke-virtual {v0, v5}, Lextern/okio/Buffer;->writeByte(I)Lextern/okio/Buffer;

    .line 92
    :cond_0
    iget-object v5, p0, Lextern/okhttp3/FormBody;->encodedNames:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lextern/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lextern/okio/Buffer;

    .line 93
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Lextern/okio/Buffer;->writeByte(I)Lextern/okio/Buffer;

    .line 94
    iget-object v5, p0, Lextern/okhttp3/FormBody;->encodedValues:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lextern/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lextern/okio/Buffer;

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    .end local v0    # "buffer":Lextern/okio/Buffer;
    .end local v1    # "i":I
    .end local v4    # "size":I
    :cond_1
    invoke-interface {p1}, Lextern/okio/BufferedSink;->buffer()Lextern/okio/Buffer;

    move-result-object v0

    .restart local v0    # "buffer":Lextern/okio/Buffer;
    goto :goto_0

    .line 97
    .restart local v1    # "i":I
    .restart local v4    # "size":I
    :cond_2
    if-eqz p2, :cond_3

    .line 98
    invoke-virtual {v0}, Lextern/okio/Buffer;->size()J

    move-result-wide v2

    .line 99
    invoke-virtual {v0}, Lextern/okio/Buffer;->clear()V

    .line 102
    :cond_3
    return-wide v2
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lextern/okhttp3/FormBody;->writeOrCountBytes(Lextern/okio/BufferedSink;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lextern/okhttp3/MediaType;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lextern/okhttp3/FormBody;->CONTENT_TYPE:Lextern/okhttp3/MediaType;

    return-object v0
.end method

.method public encodedName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lextern/okhttp3/FormBody;->encodedNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public encodedValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lextern/okhttp3/FormBody;->encodedValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public name(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lextern/okhttp3/FormBody;->encodedName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lextern/okhttp3/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lextern/okhttp3/FormBody;->encodedNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public value(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lextern/okhttp3/FormBody;->encodedValue(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lextern/okhttp3/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lextern/okio/BufferedSink;)V
    .locals 1
    .param p1, "sink"    # Lextern/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lextern/okhttp3/FormBody;->writeOrCountBytes(Lextern/okio/BufferedSink;Z)J

    .line 72
    return-void
.end method
