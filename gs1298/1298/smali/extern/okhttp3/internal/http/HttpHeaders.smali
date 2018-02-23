.class public final Lextern/okhttp3/internal/http/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static contentLength(Lextern/okhttp3/Headers;)J
    .locals 2
    .param p0, "headers"    # Lextern/okhttp3/Headers;

    .prologue
    .line 47
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lextern/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lextern/okhttp3/internal/http/HttpHeaders;->stringToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static contentLength(Lextern/okhttp3/Response;)J
    .locals 2
    .param p0, "response"    # Lextern/okhttp3/Response;

    .prologue
    .line 43
    invoke-virtual {p0}, Lextern/okhttp3/Response;->headers()Lextern/okhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lextern/okhttp3/internal/http/HttpHeaders;->contentLength(Lextern/okhttp3/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hasBody(Lextern/okhttp3/Response;)Z
    .locals 8
    .param p0, "response"    # Lextern/okhttp3/Response;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 194
    invoke-virtual {p0}, Lextern/okhttp3/Response;->request()Lextern/okhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lextern/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HEAD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v1

    .line 198
    :cond_1
    invoke-virtual {p0}, Lextern/okhttp3/Response;->code()I

    move-result v0

    .line 199
    .local v0, "responseCode":I
    const/16 v3, 0x64

    if-lt v0, v3, :cond_2

    const/16 v3, 0xc8

    if-lt v0, v3, :cond_3

    :cond_2
    const/16 v3, 0xcc

    if-eq v0, v3, :cond_3

    const/16 v3, 0x130

    if-eq v0, v3, :cond_3

    move v1, v2

    .line 202
    goto :goto_0

    .line 207
    :cond_3
    invoke-static {p0}, Lextern/okhttp3/internal/http/HttpHeaders;->contentLength(Lextern/okhttp3/Response;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    const-string v3, "chunked"

    const-string v4, "Transfer-Encoding"

    invoke-virtual {p0, v4}, Lextern/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    .line 209
    goto :goto_0
.end method

.method public static hasVaryAll(Lextern/okhttp3/Headers;)Z
    .locals 2
    .param p0, "responseHeaders"    # Lextern/okhttp3/Headers;

    .prologue
    .line 82
    invoke-static {p0}, Lextern/okhttp3/internal/http/HttpHeaders;->varyFields(Lextern/okhttp3/Headers;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasVaryAll(Lextern/okhttp3/Response;)Z
    .locals 1
    .param p0, "response"    # Lextern/okhttp3/Response;

    .prologue
    .line 75
    invoke-virtual {p0}, Lextern/okhttp3/Response;->headers()Lextern/okhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lextern/okhttp3/internal/http/HttpHeaders;->hasVaryAll(Lextern/okhttp3/Headers;)Z

    move-result v0

    return v0
.end method

.method public static parseChallenges(Lextern/okhttp3/Headers;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p0, "responseHeaders"    # Lextern/okhttp3/Headers;
    .param p1, "challengeHeader"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lextern/okhttp3/Headers;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lextern/okhttp3/Challenge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/Challenge;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-virtual {p0}, Lextern/okhttp3/Headers;->size()I

    move-result v11

    .local v11, "size":I
    :goto_0
    if-ge v6, v11, :cond_2

    .line 148
    invoke-virtual {p0, v6}, Lextern/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p0, v6}, Lextern/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .line 153
    .local v2, "pos":I
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 154
    move v12, v2

    .line 155
    .local v12, "tokenStart":I
    const-string v1, " "

    invoke-static {v0, v2, v1}, Lextern/okhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 157
    invoke-virtual {v0, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 158
    .local v10, "scheme":Ljava/lang/String;
    invoke-static {v0, v2}, Lextern/okhttp3/internal/http/HttpHeaders;->skipWhitespace(Ljava/lang/String;I)I

    move-result v2

    .line 164
    const/4 v1, 0x1

    const-string v3, "realm=\""

    const/4 v4, 0x0

    const-string v5, "realm=\""

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    const-string v1, "realm=\""

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v2, v1

    .line 169
    move v8, v2

    .line 170
    .local v8, "realmStart":I
    const-string v1, "\""

    invoke-static {v0, v2, v1}, Lextern/okhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 171
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 172
    .local v7, "realm":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 173
    const-string v1, ","

    invoke-static {v0, v2, v1}, Lextern/okhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 174
    add-int/lit8 v2, v2, 0x1

    .line 175
    invoke-static {v0, v2}, Lextern/okhttp3/internal/http/HttpHeaders;->skipWhitespace(Ljava/lang/String;I)I

    move-result v2

    .line 176
    new-instance v1, Lextern/okhttp3/Challenge;

    invoke-direct {v1, v10, v7}, Lextern/okhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 179
    .end local v0    # "value":Ljava/lang/String;
    .end local v2    # "pos":I
    .end local v7    # "realm":Ljava/lang/String;
    .end local v8    # "realmStart":I
    .end local v10    # "scheme":Ljava/lang/String;
    .end local v12    # "tokenStart":I
    :cond_2
    return-object v9
.end method

.method public static parseSeconds(Ljava/lang/String;I)I
    .locals 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 248
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 249
    .local v2, "seconds":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 250
    const p1, 0x7fffffff

    .line 257
    .end local v2    # "seconds":J
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .line 251
    .restart local v2    # "seconds":J
    .restart local p1    # "defaultValue":I
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 252
    const/4 p1, 0x0

    goto :goto_0

    .line 254
    :cond_1
    long-to-int p1, v2

    goto :goto_0

    .line 256
    .end local v2    # "seconds":J
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static receiveHeaders(Lextern/okhttp3/CookieJar;Lextern/okhttp3/HttpUrl;Lextern/okhttp3/Headers;)V
    .locals 2
    .param p0, "cookieJar"    # Lextern/okhttp3/CookieJar;
    .param p1, "url"    # Lextern/okhttp3/HttpUrl;
    .param p2, "headers"    # Lextern/okhttp3/Headers;

    .prologue
    .line 183
    sget-object v1, Lextern/okhttp3/CookieJar;->NO_COOKIES:Lextern/okhttp3/CookieJar;

    if-ne p0, v1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-static {p1, p2}, Lextern/okhttp3/Cookie;->parseAll(Lextern/okhttp3/HttpUrl;Lextern/okhttp3/Headers;)Ljava/util/List;

    move-result-object v0

    .line 186
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Lextern/okhttp3/Cookie;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    invoke-interface {p0, p1, v0}, Lextern/okhttp3/CookieJar;->saveFromResponse(Lextern/okhttp3/HttpUrl;Ljava/util/List;)V

    goto :goto_0
.end method

.method public static skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "characters"    # Ljava/lang/String;

    .prologue
    .line 220
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 221
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 225
    :cond_0
    return p1

    .line 220
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static skipWhitespace(Ljava/lang/String;I)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I

    .prologue
    .line 233
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 234
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 235
    .local v0, "c":C
    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 239
    .end local v0    # "c":C
    :cond_0
    return p1

    .line 233
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static stringToLong(Ljava/lang/String;)J
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    .line 51
    if-nez p0, :cond_0

    .line 55
    :goto_0
    return-wide v2

    .line 53
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static varyFields(Lextern/okhttp3/Headers;)Ljava/util/Set;
    .locals 10
    .param p0, "responseHeaders"    # Lextern/okhttp3/Headers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lextern/okhttp3/Headers;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    .line 94
    .local v4, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lextern/okhttp3/Headers;->size()I

    move-result v5

    .local v5, "size":I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 95
    const-string v8, "Vary"

    invoke-virtual {p0, v1}, Lextern/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 94
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p0, v1}, Lextern/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, "value":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 99
    new-instance v4, Ljava/util/TreeSet;

    .end local v4    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v8, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v4, v8}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 101
    .restart local v4    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v7, v0, v2

    .line 102
    .local v7, "varyField":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 105
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "varyField":Ljava/lang/String;
    :cond_3
    return-object v4
.end method

.method private static varyFields(Lextern/okhttp3/Response;)Ljava/util/Set;
    .locals 1
    .param p0, "response"    # Lextern/okhttp3/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lextern/okhttp3/Response;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0}, Lextern/okhttp3/Response;->headers()Lextern/okhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lextern/okhttp3/internal/http/HttpHeaders;->varyFields(Lextern/okhttp3/Headers;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static varyHeaders(Lextern/okhttp3/Headers;Lextern/okhttp3/Headers;)Lextern/okhttp3/Headers;
    .locals 6
    .param p0, "requestHeaders"    # Lextern/okhttp3/Headers;
    .param p1, "responseHeaders"    # Lextern/okhttp3/Headers;

    .prologue
    .line 126
    invoke-static {p1}, Lextern/okhttp3/internal/http/HttpHeaders;->varyFields(Lextern/okhttp3/Headers;)Ljava/util/Set;

    move-result-object v4

    .line 127
    .local v4, "varyFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lextern/okhttp3/Headers$Builder;

    invoke-direct {v5}, Lextern/okhttp3/Headers$Builder;-><init>()V

    invoke-virtual {v5}, Lextern/okhttp3/Headers$Builder;->build()Lextern/okhttp3/Headers;

    move-result-object v5

    .line 136
    :goto_0
    return-object v5

    .line 129
    :cond_0
    new-instance v2, Lextern/okhttp3/Headers$Builder;

    invoke-direct {v2}, Lextern/okhttp3/Headers$Builder;-><init>()V

    .line 130
    .local v2, "result":Lextern/okhttp3/Headers$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lextern/okhttp3/Headers;->size()I

    move-result v3

    .local v3, "size":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 131
    invoke-virtual {p0, v1}, Lextern/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "fieldName":Ljava/lang/String;
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 133
    invoke-virtual {p0, v1}, Lextern/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lextern/okhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/Headers$Builder;

    .line 130
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 136
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Lextern/okhttp3/Headers$Builder;->build()Lextern/okhttp3/Headers;

    move-result-object v5

    goto :goto_0
.end method

.method public static varyHeaders(Lextern/okhttp3/Response;)Lextern/okhttp3/Headers;
    .locals 3
    .param p0, "response"    # Lextern/okhttp3/Response;

    .prologue
    .line 116
    invoke-virtual {p0}, Lextern/okhttp3/Response;->networkResponse()Lextern/okhttp3/Response;

    move-result-object v2

    invoke-virtual {v2}, Lextern/okhttp3/Response;->request()Lextern/okhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lextern/okhttp3/Request;->headers()Lextern/okhttp3/Headers;

    move-result-object v0

    .line 117
    .local v0, "requestHeaders":Lextern/okhttp3/Headers;
    invoke-virtual {p0}, Lextern/okhttp3/Response;->headers()Lextern/okhttp3/Headers;

    move-result-object v1

    .line 118
    .local v1, "responseHeaders":Lextern/okhttp3/Headers;
    invoke-static {v0, v1}, Lextern/okhttp3/internal/http/HttpHeaders;->varyHeaders(Lextern/okhttp3/Headers;Lextern/okhttp3/Headers;)Lextern/okhttp3/Headers;

    move-result-object v2

    return-object v2
.end method

.method public static varyMatches(Lextern/okhttp3/Response;Lextern/okhttp3/Headers;Lextern/okhttp3/Request;)Z
    .locals 4
    .param p0, "cachedResponse"    # Lextern/okhttp3/Response;
    .param p1, "cachedRequest"    # Lextern/okhttp3/Headers;
    .param p2, "newRequest"    # Lextern/okhttp3/Request;

    .prologue
    .line 65
    invoke-static {p0}, Lextern/okhttp3/internal/http/HttpHeaders;->varyFields(Lextern/okhttp3/Response;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    .local v0, "field":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lextern/okhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v0}, Lextern/okhttp3/Request;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lextern/okhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 68
    .end local v0    # "field":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
