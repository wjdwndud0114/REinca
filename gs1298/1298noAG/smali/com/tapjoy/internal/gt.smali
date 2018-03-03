.class public final Lcom/tapjoy/internal/gt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/gt;


# instance fields
.field public b:Landroid/content/Context;

.field public c:Landroid/content/SharedPreferences;

.field public d:Landroid/content/SharedPreferences;

.field e:Ljava/util/concurrent/ExecutorService;

.field private f:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/tapjoy/internal/gt;

    invoke-direct {v0}, Lcom/tapjoy/internal/gt;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gt;->a:Lcom/tapjoy/internal/gt;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/tapjoy/internal/gt;->c:Landroid/content/SharedPreferences;

    .line 54
    iput-object v0, p0, Lcom/tapjoy/internal/gt;->d:Landroid/content/SharedPreferences;

    .line 60
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/tapjoy/internal/gt;->e:Ljava/util/concurrent/ExecutorService;

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gt;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tapjoy/internal/gt;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(J)Z
    .locals 2

    .prologue
    .line 72
    const-wide/16 v0, 0xe10

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/tapjoy/internal/gt;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/tapjoy/internal/gt;->c()V

    return-void
.end method

.method static synthetic c(Lcom/tapjoy/internal/gt;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tapjoy/internal/gt;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private declared-synchronized c()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 255
    monitor-enter p0

    .line 256
    :try_start_0
    invoke-static {}, Lcom/tapjoy/internal/y;->b()J

    move-result-wide v6

    .line 257
    invoke-virtual {p0}, Lcom/tapjoy/internal/gt;->b()Ljava/io/File;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 262
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 263
    if-eqz v1, :cond_0

    .line 264
    array-length v3, v1

    move v0, v4

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v8, v1, v0

    .line 265
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/gt;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 270
    iget-object v0, p0, Lcom/tapjoy/internal/gt;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 271
    new-instance v10, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/tapjoy/internal/gt;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 272
    new-instance v3, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/tapjoy/internal/gt;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 275
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v1, v4

    .line 276
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 278
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 279
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    .line 280
    invoke-interface {v8, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 281
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v1, v12

    move v0, v2

    :goto_2
    move v1, v0

    .line 284
    goto :goto_1

    .line 286
    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 287
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 289
    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 290
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 291
    invoke-interface {v9, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 292
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v1, v11

    move v0, v2

    :goto_4
    move v1, v0

    .line 295
    goto :goto_3

    .line 298
    :cond_2
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v3, v1

    .line 299
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 300
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 301
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 302
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 303
    cmp-long v0, v12, v6

    if-gez v0, :cond_3

    .line 304
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    .line 305
    invoke-interface {v8, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 306
    invoke-interface {v9, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v3, v2

    .line 307
    goto :goto_5

    .line 309
    :cond_3
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 314
    :cond_4
    :try_start_1
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 315
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 316
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 318
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    goto :goto_6

    .line 322
    :cond_5
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_6

    .line 325
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1e

    .line 327
    new-instance v0, Ljava/util/LinkedList;

    .line 328
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 329
    new-instance v1, Lcom/tapjoy/internal/gt$3;

    invoke-direct {v1, p0}, Lcom/tapjoy/internal/gt$3;-><init>(Lcom/tapjoy/internal/gt;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 339
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    :goto_7
    if-ge v3, v5, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 340
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 341
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 342
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 344
    invoke-interface {v8, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 345
    invoke-interface {v9, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 346
    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/gt;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 347
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 348
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v4, v7

    const/4 v1, 0x1

    aput-object v0, v4, v1

    .line 349
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    .line 350
    goto :goto_7

    :cond_6
    move v2, v3

    .line 361
    :cond_7
    if-eqz v2, :cond_8

    .line 362
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 363
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    :cond_8
    monitor-exit p0

    return-void

    :cond_9
    move v0, v1

    goto/16 :goto_4

    :cond_a
    move v0, v1

    goto/16 :goto_2
.end method


# virtual methods
.method final a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/tapjoy/internal/gt;->b()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/net/URL;)Ljava/io/File;
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v0, 0x0

    .line 88
    iget-object v1, p0, Lcom/tapjoy/internal/gt;->b:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 111
    :goto_0
    return-object v0

    .line 92
    :cond_0
    monitor-enter p0

    .line 93
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/gt;->b(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/gt;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 96
    monitor-exit p0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 99
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/tapjoy/internal/y;->b()J

    move-result-wide v4

    .line 100
    iget-object v3, p0, Lcom/tapjoy/internal/gt;->c:Landroid/content/SharedPreferences;

    const-wide/16 v6, 0x0

    invoke-interface {v3, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 101
    cmp-long v3, v6, v4

    if-ltz v3, :cond_2

    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object p1, v0, v2

    .line 103
    monitor-exit p0

    move-object v0, v1

    goto :goto_0

    .line 105
    :cond_2
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v3, v8

    const/4 v8, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 106
    cmp-long v3, v6, v10

    if-eqz v3, :cond_3

    .line 107
    iget-object v3, p0, Lcom/tapjoy/internal/gt;->c:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    iget-object v3, p0, Lcom/tapjoy/internal/gt;->d:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 111
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tapjoy/internal/gt;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tapjoy/internal/gt$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/internal/gt$1;-><init>(Lcom/tapjoy/internal/gt;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 85
    return-void
.end method

.method final b()Ljava/io/File;
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/tapjoy/internal/gt;->f:Ljava/io/File;

    .line 197
    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tapjoy/internal/gt;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "tapjoy_mm_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 199
    iput-object v0, p0, Lcom/tapjoy/internal/gt;->f:Ljava/io/File;

    .line 202
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 203
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 205
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 206
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 209
    :cond_2
    return-object v0
.end method

.method final declared-synchronized b(Ljava/net/URL;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/internal/cm;->a([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/internal/if;->a([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 173
    iget-object v1, p0, Lcom/tapjoy/internal/gt;->d:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    if-nez v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/tapjoy/internal/gt;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 177
    :cond_1
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    const/4 v1, 0x0

    .line 184
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    iget-object v4, p0, Lcom/tapjoy/internal/gt;->d:Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 187
    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/gt;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 190
    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v1, v2

    goto :goto_1
.end method
