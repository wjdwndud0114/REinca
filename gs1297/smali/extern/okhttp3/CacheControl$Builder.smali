.class public final Lextern/okhttp3/CacheControl$Builder;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/CacheControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field maxAgeSeconds:I

.field maxStaleSeconds:I

.field minFreshSeconds:I

.field noCache:Z

.field noStore:Z

.field noTransform:Z

.field onlyIfCached:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput v0, p0, Lextern/okhttp3/CacheControl$Builder;->maxAgeSeconds:I

    .line 270
    iput v0, p0, Lextern/okhttp3/CacheControl$Builder;->maxStaleSeconds:I

    .line 271
    iput v0, p0, Lextern/okhttp3/CacheControl$Builder;->minFreshSeconds:I

    return-void
.end method


# virtual methods
.method public build()Lextern/okhttp3/CacheControl;
    .locals 2

    .prologue
    .line 352
    new-instance v0, Lextern/okhttp3/CacheControl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lextern/okhttp3/CacheControl;-><init>(Lextern/okhttp3/CacheControl$Builder;Lextern/okhttp3/CacheControl$1;)V

    return-object v0
.end method

.method public maxAge(ILjava/util/concurrent/TimeUnit;)Lextern/okhttp3/CacheControl$Builder;
    .locals 5
    .param p1, "maxAge"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 295
    if-gez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maxAge < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 296
    :cond_0
    int-to-long v2, p1

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 297
    .local v0, "maxAgeSecondsLong":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const v2, 0x7fffffff

    :goto_0
    iput v2, p0, Lextern/okhttp3/CacheControl$Builder;->maxAgeSeconds:I

    .line 300
    return-object p0

    .line 297
    :cond_1
    long-to-int v2, v0

    goto :goto_0
.end method

.method public maxStale(ILjava/util/concurrent/TimeUnit;)Lextern/okhttp3/CacheControl$Builder;
    .locals 5
    .param p1, "maxStale"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 311
    if-gez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maxStale < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 312
    :cond_0
    int-to-long v2, p1

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 313
    .local v0, "maxStaleSecondsLong":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const v2, 0x7fffffff

    :goto_0
    iput v2, p0, Lextern/okhttp3/CacheControl$Builder;->maxStaleSeconds:I

    .line 316
    return-object p0

    .line 313
    :cond_1
    long-to-int v2, v0

    goto :goto_0
.end method

.method public minFresh(ILjava/util/concurrent/TimeUnit;)Lextern/okhttp3/CacheControl$Builder;
    .locals 5
    .param p1, "minFresh"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 328
    if-gez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "minFresh < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 329
    :cond_0
    int-to-long v2, p1

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 330
    .local v0, "minFreshSecondsLong":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const v2, 0x7fffffff

    :goto_0
    iput v2, p0, Lextern/okhttp3/CacheControl$Builder;->minFreshSeconds:I

    .line 333
    return-object p0

    .line 330
    :cond_1
    long-to-int v2, v0

    goto :goto_0
.end method

.method public noCache()Lextern/okhttp3/CacheControl$Builder;
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lextern/okhttp3/CacheControl$Builder;->noCache:Z

    .line 278
    return-object p0
.end method

.method public noStore()Lextern/okhttp3/CacheControl$Builder;
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lextern/okhttp3/CacheControl$Builder;->noStore:Z

    .line 284
    return-object p0
.end method

.method public noTransform()Lextern/okhttp3/CacheControl$Builder;
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lextern/okhttp3/CacheControl$Builder;->noTransform:Z

    .line 348
    return-object p0
.end method

.method public onlyIfCached()Lextern/okhttp3/CacheControl$Builder;
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lextern/okhttp3/CacheControl$Builder;->onlyIfCached:Z

    .line 342
    return-object p0
.end method
