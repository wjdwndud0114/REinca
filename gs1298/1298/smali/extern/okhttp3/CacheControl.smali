.class public final Lextern/okhttp3/CacheControl;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lextern/okhttp3/CacheControl$1;,
        Lextern/okhttp3/CacheControl$Builder;
    }
.end annotation


# static fields
.field public static final FORCE_CACHE:Lextern/okhttp3/CacheControl;

.field public static final FORCE_NETWORK:Lextern/okhttp3/CacheControl;


# instance fields
.field headerValue:Ljava/lang/String;

.field private final isPrivate:Z

.field private final isPublic:Z

.field private final maxAgeSeconds:I

.field private final maxStaleSeconds:I

.field private final minFreshSeconds:I

.field private final mustRevalidate:Z

.field private final noCache:Z

.field private final noStore:Z

.field private final noTransform:Z

.field private final onlyIfCached:Z

.field private final sMaxAgeSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Lextern/okhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lextern/okhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lextern/okhttp3/CacheControl$Builder;->noCache()Lextern/okhttp3/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/CacheControl$Builder;->build()Lextern/okhttp3/CacheControl;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/CacheControl;->FORCE_NETWORK:Lextern/okhttp3/CacheControl;

    .line 26
    new-instance v0, Lextern/okhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lextern/okhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lextern/okhttp3/CacheControl$Builder;->onlyIfCached()Lextern/okhttp3/CacheControl$Builder;

    move-result-object v0

    const v1, 0x7fffffff

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lextern/okhttp3/CacheControl$Builder;->maxStale(ILjava/util/concurrent/TimeUnit;)Lextern/okhttp3/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lextern/okhttp3/CacheControl$Builder;->build()Lextern/okhttp3/CacheControl;

    move-result-object v0

    sput-object v0, Lextern/okhttp3/CacheControl;->FORCE_CACHE:Lextern/okhttp3/CacheControl;

    return-void
.end method

.method private constructor <init>(Lextern/okhttp3/CacheControl$Builder;)V
    .locals 2
    .param p1, "builder"    # Lextern/okhttp3/CacheControl$Builder;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iget-boolean v0, p1, Lextern/okhttp3/CacheControl$Builder;->noCache:Z

    iput-boolean v0, p0, Lextern/okhttp3/CacheControl;->noCache:Z

    .line 64
    iget-boolean v0, p1, Lextern/okhttp3/CacheControl$Builder;->noStore:Z

    iput-boolean v0, p0, Lextern/okhttp3/CacheControl;->noStore:Z

    .line 65
    iget v0, p1, Lextern/okhttp3/CacheControl$Builder;->maxAgeSeconds:I

    iput v0, p0, Lextern/okhttp3/CacheControl;->maxAgeSeconds:I

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lextern/okhttp3/CacheControl;->sMaxAgeSeconds:I

    .line 67
    iput-boolean v1, p0, Lextern/okhttp3/CacheControl;->isPrivate:Z

    .line 68
    iput-boolean v1, p0, Lextern/okhttp3/CacheControl;->isPublic:Z

    .line 69
    iput-boolean v1, p0, Lextern/okhttp3/CacheControl;->mustRevalidate:Z

    .line 70
    iget v0, p1, Lextern/okhttp3/CacheControl$Builder;->maxStaleSeconds:I

    iput v0, p0, Lextern/okhttp3/CacheControl;->maxStaleSeconds:I

    .line 71
    iget v0, p1, Lextern/okhttp3/CacheControl$Builder;->minFreshSeconds:I

    iput v0, p0, Lextern/okhttp3/CacheControl;->minFreshSeconds:I

    .line 72
    iget-boolean v0, p1, Lextern/okhttp3/CacheControl$Builder;->onlyIfCached:Z

    iput-boolean v0, p0, Lextern/okhttp3/CacheControl;->onlyIfCached:Z

    .line 73
    iget-boolean v0, p1, Lextern/okhttp3/CacheControl$Builder;->noTransform:Z

    iput-boolean v0, p0, Lextern/okhttp3/CacheControl;->noTransform:Z

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Lextern/okhttp3/CacheControl$Builder;Lextern/okhttp3/CacheControl$1;)V
    .locals 0
    .param p1, "x0"    # Lextern/okhttp3/CacheControl$Builder;
    .param p2, "x1"    # Lextern/okhttp3/CacheControl$1;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lextern/okhttp3/CacheControl;-><init>(Lextern/okhttp3/CacheControl$Builder;)V

    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZLjava/lang/String;)V
    .locals 0
    .param p1, "noCache"    # Z
    .param p2, "noStore"    # Z
    .param p3, "maxAgeSeconds"    # I
    .param p4, "sMaxAgeSeconds"    # I
    .param p5, "isPrivate"    # Z
    .param p6, "isPublic"    # Z
    .param p7, "mustRevalidate"    # Z
    .param p8, "maxStaleSeconds"    # I
    .param p9, "minFreshSeconds"    # I
    .param p10, "onlyIfCached"    # Z
    .param p11, "noTransform"    # Z
    .param p12, "headerValue"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean p1, p0, Lextern/okhttp3/CacheControl;->noCache:Z

    .line 49
    iput-boolean p2, p0, Lextern/okhttp3/CacheControl;->noStore:Z

    .line 50
    iput p3, p0, Lextern/okhttp3/CacheControl;->maxAgeSeconds:I

    .line 51
    iput p4, p0, Lextern/okhttp3/CacheControl;->sMaxAgeSeconds:I

    .line 52
    iput-boolean p5, p0, Lextern/okhttp3/CacheControl;->isPrivate:Z

    .line 53
    iput-boolean p6, p0, Lextern/okhttp3/CacheControl;->isPublic:Z

    .line 54
    iput-boolean p7, p0, Lextern/okhttp3/CacheControl;->mustRevalidate:Z

    .line 55
    iput p8, p0, Lextern/okhttp3/CacheControl;->maxStaleSeconds:I

    .line 56
    iput p9, p0, Lextern/okhttp3/CacheControl;->minFreshSeconds:I

    .line 57
    iput-boolean p10, p0, Lextern/okhttp3/CacheControl;->onlyIfCached:Z

    .line 58
    iput-boolean p11, p0, Lextern/okhttp3/CacheControl;->noTransform:Z

    .line 59
    iput-object p12, p0, Lextern/okhttp3/CacheControl;->headerValue:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private headerValue()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lextern/okhttp3/CacheControl;->noCache:Z

    if-eqz v1, :cond_0

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_0
    iget-boolean v1, p0, Lextern/okhttp3/CacheControl;->noStore:Z

    if-eqz v1, :cond_1

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_1
    iget v1, p0, Lextern/okhttp3/CacheControl;->maxAgeSeconds:I

    if-eq v1, v3, :cond_2

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lextern/okhttp3/CacheControl;->maxAgeSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_2
    iget v1, p0, Lextern/okhttp3/CacheControl;->sMaxAgeSeconds:I

    if-eq v1, v3, :cond_3

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lextern/okhttp3/CacheControl;->sMaxAgeSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_3
    iget-boolean v1, p0, Lextern/okhttp3/CacheControl;->isPrivate:Z

    if-eqz v1, :cond_4

    const-string v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_4
    iget-boolean v1, p0, Lextern/okhttp3/CacheControl;->isPublic:Z

    if-eqz v1, :cond_5

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_5
    iget-boolean v1, p0, Lextern/okhttp3/CacheControl;->mustRevalidate:Z

    if-eqz v1, :cond_6

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_6
    iget v1, p0, Lextern/okhttp3/CacheControl;->maxStaleSeconds:I

    if-eq v1, v3, :cond_7

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lextern/okhttp3/CacheControl;->maxStaleSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_7
    iget v1, p0, Lextern/okhttp3/CacheControl;->minFreshSeconds:I

    if-eq v1, v3, :cond_8

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lextern/okhttp3/CacheControl;->minFreshSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_8
    iget-boolean v1, p0, Lextern/okhttp3/CacheControl;->onlyIfCached:Z

    if-eqz v1, :cond_9

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_9
    iget-boolean v1, p0, Lextern/okhttp3/CacheControl;->noTransform:Z

    if-eqz v1, :cond_a

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_b

    const-string v1, ""

    .line 262
    :goto_0
    return-object v1

    .line 261
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static parse(Lextern/okhttp3/Headers;)Lextern/okhttp3/CacheControl;
    .locals 27
    .param p0, "headers"    # Lextern/okhttp3/Headers;

    .prologue
    .line 146
    const/4 v4, 0x0

    .line 147
    .local v4, "noCache":Z
    const/4 v5, 0x0

    .line 148
    .local v5, "noStore":Z
    const/4 v6, -0x1

    .line 149
    .local v6, "maxAgeSeconds":I
    const/4 v7, -0x1

    .line 150
    .local v7, "sMaxAgeSeconds":I
    const/4 v8, 0x0

    .line 151
    .local v8, "isPrivate":Z
    const/4 v9, 0x0

    .line 152
    .local v9, "isPublic":Z
    const/4 v10, 0x0

    .line 153
    .local v10, "mustRevalidate":Z
    const/4 v11, -0x1

    .line 154
    .local v11, "maxStaleSeconds":I
    const/4 v12, -0x1

    .line 155
    .local v12, "minFreshSeconds":I
    const/4 v13, 0x0

    .line 156
    .local v13, "onlyIfCached":Z
    const/4 v14, 0x0

    .line 158
    .local v14, "noTransform":Z
    const/16 v16, 0x1

    .line 159
    .local v16, "canUseHeaderValue":Z
    const/4 v15, 0x0

    .line 161
    .local v15, "headerValue":Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, "i":I
    invoke-virtual/range {p0 .. p0}, Lextern/okhttp3/Headers;->size()I

    move-result v23

    .local v23, "size":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_11

    .line 162
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lextern/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v19

    .line 163
    .local v19, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lextern/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v25

    .line 165
    .local v25, "value":Ljava/lang/String;
    const-string v3, "Cache-Control"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 166
    if-eqz v15, :cond_2

    .line 168
    const/16 v16, 0x0

    .line 179
    :goto_1
    const/16 v22, 0x0

    .line 180
    .local v22, "pos":I
    :cond_0
    :goto_2
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_10

    .line 181
    move/from16 v24, v22

    .line 182
    .local v24, "tokenStart":I
    const-string v3, "=,;"

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-static {v0, v1, v3}, Lextern/okhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v22

    .line 183
    move-object/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 186
    .local v17, "directive":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v22

    if-eq v0, v3, :cond_1

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v26, 0x2c

    move/from16 v0, v26

    if-eq v3, v0, :cond_1

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v26, 0x3b

    move/from16 v0, v26

    if-ne v3, v0, :cond_4

    .line 187
    :cond_1
    add-int/lit8 v22, v22, 0x1

    .line 188
    const/16 v20, 0x0

    .line 209
    .local v20, "parameter":Ljava/lang/String;
    :goto_3
    const-string v3, "no-cache"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 210
    const/4 v4, 0x1

    goto :goto_2

    .line 170
    .end local v17    # "directive":Ljava/lang/String;
    .end local v20    # "parameter":Ljava/lang/String;
    .end local v22    # "pos":I
    .end local v24    # "tokenStart":I
    :cond_2
    move-object/from16 v15, v25

    goto :goto_1

    .line 172
    :cond_3
    const-string v3, "Pragma"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 174
    const/16 v16, 0x0

    goto :goto_1

    .line 190
    .restart local v17    # "directive":Ljava/lang/String;
    .restart local v22    # "pos":I
    .restart local v24    # "tokenStart":I
    :cond_4
    add-int/lit8 v22, v22, 0x1

    .line 191
    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-static {v0, v1}, Lextern/okhttp3/internal/http/HttpHeaders;->skipWhitespace(Ljava/lang/String;I)I

    move-result v22

    .line 194
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_5

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v26, 0x22

    move/from16 v0, v26

    if-ne v3, v0, :cond_5

    .line 195
    add-int/lit8 v22, v22, 0x1

    .line 196
    move/from16 v21, v22

    .line 197
    .local v21, "parameterStart":I
    const-string v3, "\""

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-static {v0, v1, v3}, Lextern/okhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v22

    .line 198
    move-object/from16 v0, v25

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 199
    .restart local v20    # "parameter":Ljava/lang/String;
    add-int/lit8 v22, v22, 0x1

    .line 202
    goto :goto_3

    .line 203
    .end local v20    # "parameter":Ljava/lang/String;
    .end local v21    # "parameterStart":I
    :cond_5
    move/from16 v21, v22

    .line 204
    .restart local v21    # "parameterStart":I
    const-string v3, ",;"

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-static {v0, v1, v3}, Lextern/okhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v22

    .line 205
    move-object/from16 v0, v25

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "parameter":Ljava/lang/String;
    goto :goto_3

    .line 211
    .end local v21    # "parameterStart":I
    :cond_6
    const-string v3, "no-store"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 212
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 213
    :cond_7
    const-string v3, "max-age"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 214
    const/4 v3, -0x1

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lextern/okhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v6

    goto/16 :goto_2

    .line 215
    :cond_8
    const-string v3, "s-maxage"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 216
    const/4 v3, -0x1

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lextern/okhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v7

    goto/16 :goto_2

    .line 217
    :cond_9
    const-string v3, "private"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 218
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 219
    :cond_a
    const-string v3, "public"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 220
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 221
    :cond_b
    const-string v3, "must-revalidate"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 222
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 223
    :cond_c
    const-string v3, "max-stale"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 224
    const v3, 0x7fffffff

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lextern/okhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v11

    goto/16 :goto_2

    .line 225
    :cond_d
    const-string v3, "min-fresh"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 226
    const/4 v3, -0x1

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lextern/okhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v12

    goto/16 :goto_2

    .line 227
    :cond_e
    const-string v3, "only-if-cached"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 228
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 229
    :cond_f
    const-string v3, "no-transform"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 161
    .end local v17    # "directive":Ljava/lang/String;
    .end local v20    # "parameter":Ljava/lang/String;
    .end local v22    # "pos":I
    .end local v24    # "tokenStart":I
    :cond_10
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 235
    .end local v19    # "name":Ljava/lang/String;
    .end local v25    # "value":Ljava/lang/String;
    :cond_11
    if-nez v16, :cond_12

    .line 236
    const/4 v15, 0x0

    .line 238
    :cond_12
    new-instance v3, Lextern/okhttp3/CacheControl;

    invoke-direct/range {v3 .. v15}, Lextern/okhttp3/CacheControl;-><init>(ZZIIZZZIIZZLjava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public isPrivate()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lextern/okhttp3/CacheControl;->isPrivate:Z

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lextern/okhttp3/CacheControl;->isPublic:Z

    return v0
.end method

.method public maxAgeSeconds()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lextern/okhttp3/CacheControl;->maxAgeSeconds:I

    return v0
.end method

.method public maxStaleSeconds()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lextern/okhttp3/CacheControl;->maxStaleSeconds:I

    return v0
.end method

.method public minFreshSeconds()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lextern/okhttp3/CacheControl;->minFreshSeconds:I

    return v0
.end method

.method public mustRevalidate()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lextern/okhttp3/CacheControl;->mustRevalidate:Z

    return v0
.end method

.method public noCache()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lextern/okhttp3/CacheControl;->noCache:Z

    return v0
.end method

.method public noStore()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lextern/okhttp3/CacheControl;->noStore:Z

    return v0
.end method

.method public noTransform()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lextern/okhttp3/CacheControl;->noTransform:Z

    return v0
.end method

.method public onlyIfCached()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lextern/okhttp3/CacheControl;->onlyIfCached:Z

    return v0
.end method

.method public sMaxAgeSeconds()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lextern/okhttp3/CacheControl;->sMaxAgeSeconds:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lextern/okhttp3/CacheControl;->headerValue:Ljava/lang/String;

    .line 244
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lextern/okhttp3/CacheControl;->headerValue()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/String;
    iput-object v0, p0, Lextern/okhttp3/CacheControl;->headerValue:Ljava/lang/String;

    goto :goto_0
.end method
