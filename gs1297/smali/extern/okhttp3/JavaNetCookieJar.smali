.class public final Lextern/okhttp3/JavaNetCookieJar;
.super Ljava/lang/Object;
.source "JavaNetCookieJar.java"

# interfaces
.implements Lextern/okhttp3/CookieJar;


# instance fields
.field private final cookieHandler:Ljava/net/CookieHandler;


# direct methods
.method public constructor <init>(Ljava/net/CookieHandler;)V
    .locals 0
    .param p1, "cookieHandler"    # Ljava/net/CookieHandler;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lextern/okhttp3/JavaNetCookieJar;->cookieHandler:Ljava/net/CookieHandler;

    .line 38
    return-void
.end method

.method private decodeHeaderAsJavaNetCookies(Lextern/okhttp3/HttpUrl;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "url"    # Lextern/okhttp3/HttpUrl;
    .param p2, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lextern/okhttp3/HttpUrl;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/Cookie;>;"
    const/4 v4, 0x0

    .local v4, "pos":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "limit":I
    :goto_0
    if-lt v4, v1, :cond_0

    .line 111
    return-object v5

    .line 90
    :cond_0
    const-string v7, ";,"

    invoke-static {p2, v4, v1, v7}, Lextern/okhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    .line 91
    .local v3, "pairEnd":I
    const/16 v7, 0x3d

    invoke-static {p2, v4, v3, v7}, Lextern/okhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v0

    .line 92
    .local v0, "equalsSign":I
    invoke-static {p2, v4, v0}, Lextern/okhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "name":Ljava/lang/String;
    const-string v7, "$"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 89
    :goto_1
    add-int/lit8 v4, v3, 0x1

    goto :goto_0

    .line 96
    :cond_1
    if-ge v0, v3, :cond_3

    .line 97
    add-int/lit8 v7, v0, 0x1

    invoke-static {p2, v7, v3}, Lextern/okhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "value":Ljava/lang/String;
    :goto_2
    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 102
    const/4 v7, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 105
    :cond_2
    new-instance v7, Lextern/okhttp3/Cookie$Builder;

    invoke-direct {v7}, Lextern/okhttp3/Cookie$Builder;-><init>()V

    .line 106
    invoke-virtual {v7, v2}, Lextern/okhttp3/Cookie$Builder;->name(Ljava/lang/String;)Lextern/okhttp3/Cookie$Builder;

    move-result-object v7

    .line 107
    invoke-virtual {v7, v6}, Lextern/okhttp3/Cookie$Builder;->value(Ljava/lang/String;)Lextern/okhttp3/Cookie$Builder;

    move-result-object v7

    .line 108
    invoke-virtual {p1}, Lextern/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lextern/okhttp3/Cookie$Builder;->domain(Ljava/lang/String;)Lextern/okhttp3/Cookie$Builder;

    move-result-object v7

    .line 109
    invoke-virtual {v7}, Lextern/okhttp3/Cookie$Builder;->build()Lextern/okhttp3/Cookie;

    move-result-object v7

    .line 105
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 98
    .end local v6    # "value":Ljava/lang/String;
    :cond_3
    const-string v6, ""

    goto :goto_2
.end method


# virtual methods
.method public loadForRequest(Lextern/okhttp3/HttpUrl;)Ljava/util/List;
    .locals 11
    .param p1, "url"    # Lextern/okhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lextern/okhttp3/HttpUrl;",
            ")",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    .line 60
    .local v5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_0
    iget-object v7, p0, Lextern/okhttp3/JavaNetCookieJar;->cookieHandler:Ljava/net/CookieHandler;

    invoke-virtual {p1}, Lextern/okhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 66
    .local v0, "cookieHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .line 67
    .local v1, "cookies":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/Cookie;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 78
    if-eqz v1, :cond_4

    .line 79
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 78
    .end local v0    # "cookieHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "cookies":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/Cookie;>;"
    :goto_0
    return-object v7

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/io/IOException;
    invoke-static {}, Lextern/okhttp3/internal/platform/Platform;->get()Lextern/okhttp3/internal/platform/Platform;

    move-result-object v7

    const/4 v8, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Loading cookies failed for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/..."

    invoke-virtual {p1, v10}, Lextern/okhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lextern/okhttp3/HttpUrl;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v2}, Lextern/okhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    goto :goto_0

    .line 67
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "cookieHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v1    # "cookies":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/Cookie;>;"
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 68
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 69
    .local v6, "key":Ljava/lang/String;
    const-string v7, "Cookie"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "Cookie2"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 70
    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 71
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 72
    .local v4, "header":Ljava/lang/String;
    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "cookies":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/Cookie;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .restart local v1    # "cookies":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/Cookie;>;"
    :cond_3
    invoke-direct {p0, p1, v4}, Lextern/okhttp3/JavaNetCookieJar;->decodeHeaderAsJavaNetCookies(Lextern/okhttp3/HttpUrl;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 80
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "header":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    goto :goto_0
.end method

.method public saveFromResponse(Lextern/okhttp3/HttpUrl;Ljava/util/List;)V
    .locals 8
    .param p1, "url"    # Lextern/okhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lextern/okhttp3/HttpUrl;",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/Cookie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "cookies":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/Cookie;>;"
    iget-object v4, p0, Lextern/okhttp3/JavaNetCookieJar;->cookieHandler:Ljava/net/CookieHandler;

    if-eqz v4, :cond_0

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v1, "cookieStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 46
    const-string v4, "Set-Cookie"

    invoke-static {v4, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    .line 48
    .local v3, "multimap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_0
    iget-object v4, p0, Lextern/okhttp3/JavaNetCookieJar;->cookieHandler:Ljava/net/CookieHandler;

    invoke-virtual {p1}, Lextern/okhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v1    # "cookieStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "multimap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_0
    :goto_1
    return-void

    .line 43
    .restart local v1    # "cookieStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lextern/okhttp3/Cookie;

    .line 44
    .local v0, "cookie":Lextern/okhttp3/Cookie;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lextern/okhttp3/Cookie;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    .end local v0    # "cookie":Lextern/okhttp3/Cookie;
    .restart local v3    # "multimap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :catch_0
    move-exception v2

    .line 50
    .local v2, "e":Ljava/io/IOException;
    invoke-static {}, Lextern/okhttp3/internal/platform/Platform;->get()Lextern/okhttp3/internal/platform/Platform;

    move-result-object v4

    const/4 v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Saving cookies failed for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/..."

    invoke-virtual {p1, v7}, Lextern/okhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lextern/okhttp3/HttpUrl;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Lextern/okhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
