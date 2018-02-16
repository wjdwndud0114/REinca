.class public Lextern/okhttp3/internal/cache/CacheStrategy$Factory;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/internal/cache/CacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private ageSeconds:I

.field final cacheResponse:Lextern/okhttp3/Response;

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private lastModified:Ljava/util/Date;

.field private lastModifiedString:Ljava/lang/String;

.field final nowMillis:J

.field private receivedResponseMillis:J

.field final request:Lextern/okhttp3/Request;

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private servedDateString:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLextern/okhttp3/Request;Lextern/okhttp3/Response;)V
    .locals 9
    .param p1, "nowMillis"    # J
    .param p3, "request"    # Lextern/okhttp3/Request;
    .param p4, "cacheResponse"    # Lextern/okhttp3/Response;

    .prologue
    const/4 v8, -0x1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput v8, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    .line 141
    iput-wide p1, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->nowMillis:J

    .line 142
    iput-object p3, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->request:Lextern/okhttp3/Request;

    .line 143
    iput-object p4, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lextern/okhttp3/Response;

    .line 145
    if-eqz p4, :cond_5

    .line 146
    invoke-virtual {p4}, Lextern/okhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    .line 147
    invoke-virtual {p4}, Lextern/okhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    .line 148
    invoke-virtual {p4}, Lextern/okhttp3/Response;->headers()Lextern/okhttp3/Headers;

    move-result-object v1

    .line 149
    .local v1, "headers":Lextern/okhttp3/Headers;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Lextern/okhttp3/Headers;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 150
    invoke-virtual {v1, v2}, Lextern/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lextern/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "value":Ljava/lang/String;
    const-string v5, "Date"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 153
    invoke-static {v4}, Lextern/okhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    .line 154
    iput-object v4, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    .line 149
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    :cond_1
    const-string v5, "Expires"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 156
    invoke-static {v4}, Lextern/okhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    goto :goto_1

    .line 157
    :cond_2
    const-string v5, "Last-Modified"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 158
    invoke-static {v4}, Lextern/okhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    .line 159
    iput-object v4, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_1

    .line 160
    :cond_3
    const-string v5, "ETag"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 161
    iput-object v4, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    goto :goto_1

    .line 162
    :cond_4
    const-string v5, "Age"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 163
    invoke-static {v4, v8}, Lextern/okhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    goto :goto_1

    .line 167
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v1    # "headers":Lextern/okhttp3/Headers;
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private cacheResponseAge()J
    .locals 12

    .prologue
    const-wide/16 v0, 0x0

    .line 297
    iget-object v8, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v8, :cond_0

    iget-wide v8, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-object v10, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 300
    .local v0, "apparentReceivedAge":J
    :cond_0
    iget v8, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v9, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 303
    .local v2, "receivedAge":J
    :goto_0
    iget-wide v8, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-wide v10, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    sub-long v6, v8, v10

    .line 304
    .local v6, "responseDuration":J
    iget-wide v8, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->nowMillis:J

    iget-wide v10, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    sub-long v4, v8, v10

    .line 305
    .local v4, "residentDuration":J
    add-long v8, v2, v6

    add-long/2addr v8, v4

    return-wide v8

    .end local v2    # "receivedAge":J
    .end local v4    # "residentDuration":J
    .end local v6    # "responseDuration":J
    :cond_1
    move-wide v2, v0

    .line 300
    goto :goto_0
.end method

.method private computeFreshnessLifetime()J
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    .line 268
    iget-object v3, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lextern/okhttp3/Response;

    invoke-virtual {v3}, Lextern/okhttp3/Response;->cacheControl()Lextern/okhttp3/CacheControl;

    move-result-object v2

    .line 269
    .local v2, "responseCaching":Lextern/okhttp3/CacheControl;
    invoke-virtual {v2}, Lextern/okhttp3/CacheControl;->maxAgeSeconds()I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_1

    .line 270
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Lextern/okhttp3/CacheControl;->maxAgeSeconds()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 289
    :cond_0
    :goto_0
    return-wide v6

    .line 271
    :cond_1
    iget-object v3, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-eqz v3, :cond_4

    .line 272
    iget-object v3, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 275
    .local v4, "servedMillis":J
    :goto_1
    iget-object v3, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v0, v8, v4

    .line 276
    .local v0, "delta":J
    cmp-long v3, v0, v6

    if-lez v3, :cond_3

    .end local v0    # "delta":J
    :goto_2
    move-wide v6, v0

    goto :goto_0

    .line 272
    .end local v4    # "servedMillis":J
    :cond_2
    iget-wide v4, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    goto :goto_1

    .restart local v0    # "delta":J
    .restart local v4    # "servedMillis":J
    :cond_3
    move-wide v0, v6

    .line 276
    goto :goto_2

    .line 277
    .end local v0    # "delta":J
    .end local v4    # "servedMillis":J
    :cond_4
    iget-object v3, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lextern/okhttp3/Response;

    invoke-virtual {v3}, Lextern/okhttp3/Response;->request()Lextern/okhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lextern/okhttp3/Request;->url()Lextern/okhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lextern/okhttp3/HttpUrl;->query()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 283
    iget-object v3, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 286
    .restart local v4    # "servedMillis":J
    :goto_3
    iget-object v3, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v0, v4, v8

    .line 287
    .restart local v0    # "delta":J
    cmp-long v3, v0, v6

    if-lez v3, :cond_0

    const-wide/16 v6, 0xa

    div-long v6, v0, v6

    goto :goto_0

    .line 283
    .end local v0    # "delta":J
    .end local v4    # "servedMillis":J
    :cond_5
    iget-wide v4, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    goto :goto_3
.end method

.method private getCandidate()Lextern/okhttp3/internal/cache/CacheStrategy;
    .locals 26

    .prologue
    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lextern/okhttp3/Response;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 187
    new-instance v21, Lextern/okhttp3/internal/cache/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->request:Lextern/okhttp3/Request;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Lextern/okhttp3/internal/cache/CacheStrategy;-><init>(Lextern/okhttp3/Request;Lextern/okhttp3/Response;Lextern/okhttp3/internal/cache/CacheStrategy$1;)V

    .line 260
    :goto_0
    return-object v21

    .line 191
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->request:Lextern/okhttp3/Request;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lextern/okhttp3/Request;->isHttps()Z

    move-result v21

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lextern/okhttp3/Response;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lextern/okhttp3/Response;->handshake()Lextern/okhttp3/Handshake;

    move-result-object v21

    if-nez v21, :cond_1

    .line 192
    new-instance v21, Lextern/okhttp3/internal/cache/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->request:Lextern/okhttp3/Request;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Lextern/okhttp3/internal/cache/CacheStrategy;-><init>(Lextern/okhttp3/Request;Lextern/okhttp3/Response;Lextern/okhttp3/internal/cache/CacheStrategy$1;)V

    goto :goto_0

    .line 198
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lextern/okhttp3/Response;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->request:Lextern/okhttp3/Request;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lextern/okhttp3/internal/cache/CacheStrategy;->isCacheable(Lextern/okhttp3/Response;Lextern/okhttp3/Request;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 199
    new-instance v21, Lextern/okhttp3/internal/cache/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->request:Lextern/okhttp3/Request;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Lextern/okhttp3/internal/cache/CacheStrategy;-><init>(Lextern/okhttp3/Request;Lextern/okhttp3/Response;Lextern/okhttp3/internal/cache/CacheStrategy$1;)V

    goto :goto_0

    .line 202
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->request:Lextern/okhttp3/Request;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lextern/okhttp3/Request;->cacheControl()Lextern/okhttp3/CacheControl;

    move-result-object v11

    .line 203
    .local v11, "requestCaching":Lextern/okhttp3/CacheControl;
    invoke-virtual {v11}, Lextern/okhttp3/CacheControl;->noCache()Z

    move-result v21

    if-nez v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->request:Lextern/okhttp3/Request;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->hasConditions(Lextern/okhttp3/Request;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 204
    :cond_3
    new-instance v21, Lextern/okhttp3/internal/cache/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->request:Lextern/okhttp3/Request;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Lextern/okhttp3/internal/cache/CacheStrategy;-><init>(Lextern/okhttp3/Request;Lextern/okhttp3/Response;Lextern/okhttp3/internal/cache/CacheStrategy$1;)V

    goto :goto_0

    .line 207
    :cond_4
    invoke-direct/range {p0 .. p0}, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponseAge()J

    move-result-wide v4

    .line 208
    .local v4, "ageMillis":J
    invoke-direct/range {p0 .. p0}, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->computeFreshnessLifetime()J

    move-result-wide v12

    .line 210
    .local v12, "freshMillis":J
    invoke-virtual {v11}, Lextern/okhttp3/CacheControl;->maxAgeSeconds()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 211
    sget-object v21, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11}, Lextern/okhttp3/CacheControl;->maxAgeSeconds()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 214
    :cond_5
    const-wide/16 v16, 0x0

    .line 215
    .local v16, "minFreshMillis":J
    invoke-virtual {v11}, Lextern/okhttp3/CacheControl;->minFreshSeconds()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    .line 216
    sget-object v21, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11}, Lextern/okhttp3/CacheControl;->minFreshSeconds()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v16

    .line 219
    :cond_6
    const-wide/16 v14, 0x0

    .line 220
    .local v14, "maxStaleMillis":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lextern/okhttp3/Response;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lextern/okhttp3/Response;->cacheControl()Lextern/okhttp3/CacheControl;

    move-result-object v20

    .line 221
    .local v20, "responseCaching":Lextern/okhttp3/CacheControl;
    invoke-virtual/range {v20 .. v20}, Lextern/okhttp3/CacheControl;->mustRevalidate()Z

    move-result v21

    if-nez v21, :cond_7

    invoke-virtual {v11}, Lextern/okhttp3/CacheControl;->maxStaleSeconds()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    .line 222
    sget-object v21, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11}, Lextern/okhttp3/CacheControl;->maxStaleSeconds()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    .line 225
    :cond_7
    invoke-virtual/range {v20 .. v20}, Lextern/okhttp3/CacheControl;->noCache()Z

    move-result v21

    if-nez v21, :cond_a

    add-long v22, v4, v16

    add-long v24, v12, v14

    cmp-long v21, v22, v24

    if-gez v21, :cond_a

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lextern/okhttp3/Response;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lextern/okhttp3/Response;->newBuilder()Lextern/okhttp3/Response$Builder;

    move-result-object v6

    .line 227
    .local v6, "builder":Lextern/okhttp3/Response$Builder;
    add-long v22, v4, v16

    cmp-long v21, v22, v12

    if-ltz v21, :cond_8

    .line 228
    const-string v21, "Warning"

    const-string v22, "110 HttpURLConnection \"Response is stale\""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lextern/okhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/Response$Builder;

    .line 230
    :cond_8
    const-wide/32 v18, 0x5265c00

    .line 231
    .local v18, "oneDayMillis":J
    cmp-long v21, v4, v18

    if-lez v21, :cond_9

    invoke-direct/range {p0 .. p0}, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->isFreshnessLifetimeHeuristic()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 232
    const-string v21, "Warning"

    const-string v22, "113 HttpURLConnection \"Heuristic expiration\""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lextern/okhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/Response$Builder;

    .line 234
    :cond_9
    new-instance v21, Lextern/okhttp3/internal/cache/CacheStrategy;

    const/16 v22, 0x0

    invoke-virtual {v6}, Lextern/okhttp3/Response$Builder;->build()Lextern/okhttp3/Response;

    move-result-object v23

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Lextern/okhttp3/internal/cache/CacheStrategy;-><init>(Lextern/okhttp3/Request;Lextern/okhttp3/Response;Lextern/okhttp3/internal/cache/CacheStrategy$1;)V

    goto/16 :goto_0

    .line 241
    .end local v6    # "builder":Lextern/okhttp3/Response$Builder;
    .end local v18    # "oneDayMillis":J
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b

    .line 242
    const-string v7, "If-None-Match"

    .line 243
    .local v7, "conditionName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    .line 254
    .local v8, "conditionValue":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->request:Lextern/okhttp3/Request;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lextern/okhttp3/Request;->headers()Lextern/okhttp3/Headers;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lextern/okhttp3/Headers;->newBuilder()Lextern/okhttp3/Headers$Builder;

    move-result-object v10

    .line 255
    .local v10, "conditionalRequestHeaders":Lextern/okhttp3/Headers$Builder;
    sget-object v21, Lextern/okhttp3/internal/Internal;->instance:Lextern/okhttp3/internal/Internal;

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v7, v8}, Lextern/okhttp3/internal/Internal;->addLenient(Lextern/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->request:Lextern/okhttp3/Request;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lextern/okhttp3/Request;->newBuilder()Lextern/okhttp3/Request$Builder;

    move-result-object v21

    invoke-virtual {v10}, Lextern/okhttp3/Headers$Builder;->build()Lextern/okhttp3/Headers;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lextern/okhttp3/Request$Builder;->headers(Lextern/okhttp3/Headers;)Lextern/okhttp3/Request$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lextern/okhttp3/Request$Builder;->build()Lextern/okhttp3/Request;

    move-result-object v9

    .line 260
    .local v9, "conditionalRequest":Lextern/okhttp3/Request;
    new-instance v21, Lextern/okhttp3/internal/cache/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lextern/okhttp3/Response;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v9, v1, v2}, Lextern/okhttp3/internal/cache/CacheStrategy;-><init>(Lextern/okhttp3/Request;Lextern/okhttp3/Response;Lextern/okhttp3/internal/cache/CacheStrategy$1;)V

    goto/16 :goto_0

    .line 244
    .end local v7    # "conditionName":Ljava/lang/String;
    .end local v8    # "conditionValue":Ljava/lang/String;
    .end local v9    # "conditionalRequest":Lextern/okhttp3/Request;
    .end local v10    # "conditionalRequestHeaders":Lextern/okhttp3/Headers$Builder;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    move-object/from16 v21, v0

    if-eqz v21, :cond_c

    .line 245
    const-string v7, "If-Modified-Since"

    .line 246
    .restart local v7    # "conditionName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    .restart local v8    # "conditionValue":Ljava/lang/String;
    goto :goto_1

    .line 247
    .end local v7    # "conditionName":Ljava/lang/String;
    .end local v8    # "conditionValue":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    .line 248
    const-string v7, "If-Modified-Since"

    .line 249
    .restart local v7    # "conditionName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    .restart local v8    # "conditionValue":Ljava/lang/String;
    goto :goto_1

    .line 251
    .end local v7    # "conditionName":Ljava/lang/String;
    .end local v8    # "conditionValue":Ljava/lang/String;
    :cond_d
    new-instance v21, Lextern/okhttp3/internal/cache/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->request:Lextern/okhttp3/Request;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v21 .. v24}, Lextern/okhttp3/internal/cache/CacheStrategy;-><init>(Lextern/okhttp3/Request;Lextern/okhttp3/Response;Lextern/okhttp3/internal/cache/CacheStrategy$1;)V

    goto/16 :goto_0
.end method

.method private static hasConditions(Lextern/okhttp3/Request;)Z
    .locals 1
    .param p0, "request"    # Lextern/okhttp3/Request;

    .prologue
    .line 322
    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lextern/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lextern/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lextern/okhttp3/Response;

    invoke-virtual {v0}, Lextern/okhttp3/Response;->cacheControl()Lextern/okhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public get()Lextern/okhttp3/internal/cache/CacheStrategy;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-direct {p0}, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->getCandidate()Lextern/okhttp3/internal/cache/CacheStrategy;

    move-result-object v0

    .line 175
    .local v0, "candidate":Lextern/okhttp3/internal/cache/CacheStrategy;
    iget-object v1, v0, Lextern/okhttp3/internal/cache/CacheStrategy;->networkRequest:Lextern/okhttp3/Request;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lextern/okhttp3/internal/cache/CacheStrategy$Factory;->request:Lextern/okhttp3/Request;

    invoke-virtual {v1}, Lextern/okhttp3/Request;->cacheControl()Lextern/okhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lextern/okhttp3/CacheControl;->onlyIfCached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    new-instance v0, Lextern/okhttp3/internal/cache/CacheStrategy;

    .end local v0    # "candidate":Lextern/okhttp3/internal/cache/CacheStrategy;
    invoke-direct {v0, v2, v2, v2}, Lextern/okhttp3/internal/cache/CacheStrategy;-><init>(Lextern/okhttp3/Request;Lextern/okhttp3/Response;Lextern/okhttp3/internal/cache/CacheStrategy$1;)V

    .line 180
    :cond_0
    return-object v0
.end method
