.class final Lextern/okhttp3/internal/cache/CacheInterceptor$1;
.super Lextern/okhttp3/ResponseBody;
.source "CacheInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/internal/cache/CacheInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lextern/okhttp3/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 55
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public contentType()Lextern/okhttp3/MediaType;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public source()Lextern/okio/BufferedSource;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lextern/okio/Buffer;

    invoke-direct {v0}, Lextern/okio/Buffer;-><init>()V

    return-object v0
.end method
