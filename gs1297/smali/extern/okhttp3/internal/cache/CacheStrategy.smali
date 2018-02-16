.class public final Lextern/okhttp3/internal/cache/CacheStrategy;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lextern/okhttp3/internal/cache/CacheStrategy$1;,
        Lextern/okhttp3/internal/cache/CacheStrategy$Factory;
    }
.end annotation


# instance fields
.field public final cacheResponse:Lextern/okhttp3/Response;

.field public final networkRequest:Lextern/okhttp3/Request;


# direct methods
.method private constructor <init>(Lextern/okhttp3/Request;Lextern/okhttp3/Response;)V
    .locals 0
    .param p1, "networkRequest"    # Lextern/okhttp3/Request;
    .param p2, "cacheResponse"    # Lextern/okhttp3/Response;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lextern/okhttp3/internal/cache/CacheStrategy;->networkRequest:Lextern/okhttp3/Request;

    .line 59
    iput-object p2, p0, Lextern/okhttp3/internal/cache/CacheStrategy;->cacheResponse:Lextern/okhttp3/Response;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lextern/okhttp3/Request;Lextern/okhttp3/Response;Lextern/okhttp3/internal/cache/CacheStrategy$1;)V
    .locals 0
    .param p1, "x0"    # Lextern/okhttp3/Request;
    .param p2, "x1"    # Lextern/okhttp3/Response;
    .param p3, "x2"    # Lextern/okhttp3/internal/cache/CacheStrategy$1;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lextern/okhttp3/internal/cache/CacheStrategy;-><init>(Lextern/okhttp3/Request;Lextern/okhttp3/Response;)V

    return-void
.end method

.method public static isCacheable(Lextern/okhttp3/Response;Lextern/okhttp3/Request;)Z
    .locals 3
    .param p0, "response"    # Lextern/okhttp3/Response;
    .param p1, "request"    # Lextern/okhttp3/Request;

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0}, Lextern/okhttp3/Response;->code()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 86
    :sswitch_0
    const-string v1, "Expires"

    invoke-virtual {p0, v1}, Lextern/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lextern/okhttp3/Response;->cacheControl()Lextern/okhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/CacheControl;->maxAgeSeconds()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lextern/okhttp3/Response;->cacheControl()Lextern/okhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/CacheControl;->isPublic()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lextern/okhttp3/Response;->cacheControl()Lextern/okhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/CacheControl;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    :cond_1
    :sswitch_1
    invoke-virtual {p0}, Lextern/okhttp3/Response;->cacheControl()Lextern/okhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/CacheControl;->noStore()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lextern/okhttp3/Request;->cacheControl()Lextern/okhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/CacheControl;->noStore()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 66
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xcb -> :sswitch_1
        0xcc -> :sswitch_1
        0x12c -> :sswitch_1
        0x12d -> :sswitch_1
        0x12e -> :sswitch_0
        0x133 -> :sswitch_0
        0x134 -> :sswitch_1
        0x194 -> :sswitch_1
        0x195 -> :sswitch_1
        0x19a -> :sswitch_1
        0x19e -> :sswitch_1
        0x1f5 -> :sswitch_1
    .end sparse-switch
.end method
