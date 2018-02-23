.class final Lcom/tapjoy/TJCorePlacement$6;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/ff$a;

.field final synthetic b:Lcom/tapjoy/internal/el;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/tapjoy/TJPlacement;

.field final synthetic e:Lcom/tapjoy/internal/fi;

.field final synthetic f:Lcom/tapjoy/TJCorePlacement;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/internal/ff$a;Lcom/tapjoy/internal/el;Ljava/lang/String;Lcom/tapjoy/TJPlacement;Lcom/tapjoy/internal/fi;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    iput-object p2, p0, Lcom/tapjoy/TJCorePlacement$6;->a:Lcom/tapjoy/internal/ff$a;

    iput-object p3, p0, Lcom/tapjoy/TJCorePlacement$6;->b:Lcom/tapjoy/internal/el;

    iput-object p4, p0, Lcom/tapjoy/TJCorePlacement$6;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/tapjoy/TJCorePlacement$6;->d:Lcom/tapjoy/TJPlacement;

    iput-object p6, p0, Lcom/tapjoy/TJCorePlacement$6;->e:Lcom/tapjoy/internal/fi;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v10, 0x0

    .line 320
    invoke-static {}, Lcom/tapjoy/TJCorePlacement;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending content request for placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v2}, Lcom/tapjoy/TJCorePlacement;->f(Lcom/tapjoy/TJCorePlacement;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v9, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {}, Lcom/tapjoy/internal/fz;->a()Lcom/tapjoy/internal/fz;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v1}, Lcom/tapjoy/TJCorePlacement;->f(Lcom/tapjoy/TJCorePlacement;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v1}, Lcom/tapjoy/TJCorePlacement;->h(Lcom/tapjoy/TJCorePlacement;)Landroid/content/Context;

    move-result-object v6

    .line 1882
    iget-object v1, v0, Lcom/tapjoy/internal/fz;->a:Lcom/tapjoy/internal/gh;

    .line 2158
    iget-object v0, v1, Lcom/tapjoy/internal/gh;->a:Lcom/tapjoy/internal/fz;

    invoke-virtual {v0, v7}, Lcom/tapjoy/internal/fz;->a(Z)Lcom/tapjoy/internal/ee;

    move-result-object v4

    .line 2159
    new-instance v0, Lcom/tapjoy/internal/hj;

    iget-object v1, v1, Lcom/tapjoy/internal/gh;->a:Lcom/tapjoy/internal/fz;

    iget-object v2, v4, Lcom/tapjoy/internal/ee;->d:Lcom/tapjoy/internal/ed;

    iget-object v3, v4, Lcom/tapjoy/internal/ee;->e:Lcom/tapjoy/internal/dx;

    iget-object v4, v4, Lcom/tapjoy/internal/ee;->f:Lcom/tapjoy/internal/ek;

    invoke-direct/range {v0 .. v6}, Lcom/tapjoy/internal/hj;-><init>(Lcom/tapjoy/internal/fz;Lcom/tapjoy/internal/ed;Lcom/tapjoy/internal/dx;Lcom/tapjoy/internal/ek;Ljava/lang/String;Landroid/content/Context;)V

    .line 322
    invoke-static {v9, v0}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/internal/hj;)Lcom/tapjoy/internal/hj;

    .line 323
    new-instance v0, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    .line 324
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v2}, Lcom/tapjoy/TJCorePlacement;->g(Lcom/tapjoy/TJCorePlacement;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v13, v13, v2}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v2

    .line 326
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->i(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object v0

    iget v1, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJPlacementData;->setHttpStatusCode(I)V

    .line 327
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->i(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object v0

    iget-object v1, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJPlacementData;->setHttpResponse(Ljava/lang/String;)V

    .line 328
    const-string v0, "x-tapjoy-prerender"

    invoke-virtual {v2, v0}, Lcom/tapjoy/TapjoyHttpURLResponse;->getHeaderFieldAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->i(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/tapjoy/TJPlacementData;->setPrerenderingRequested(Z)V

    .line 333
    :cond_0
    const-string v0, "X-Tapjoy-Debug"

    invoke-virtual {v2, v0}, Lcom/tapjoy/TapjoyHttpURLResponse;->getHeaderFieldAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_1

    .line 335
    invoke-static {}, Lcom/tapjoy/TJCorePlacement;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Tapjoy-Server-Debug: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_1
    iget-wide v0, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->expires:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_5

    .line 341
    iget-wide v4, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->expires:J

    iget-wide v0, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->date:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_4

    iget-wide v0, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->date:J

    :goto_0
    sub-long v0, v4, v0

    .line 342
    cmp-long v3, v0, v10

    if-lez v3, :cond_2

    .line 343
    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-static {v3, v0, v1}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJCorePlacement;J)J

    .line 350
    :cond_2
    :goto_1
    const-string v0, "X-Tapjoy-Mediation-Content"

    invoke-virtual {v2, v0}, Lcom/tapjoy/TapjoyHttpURLResponse;->getHeaderFieldAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {v0}, Lcom/tapjoy/internal/ct;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    new-instance v1, Lcom/tapjoy/mediation/TJMediatedPlacementData;

    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v2}, Lcom/tapjoy/TJCorePlacement;->i(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getHttpResponse()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tapjoy/mediation/TJMediatedPlacementData;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/mediation/TJMediatedPlacementData;)Lcom/tapjoy/mediation/TJMediatedPlacementData;

    .line 354
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->j(Lcom/tapjoy/TJCorePlacement;)V
    :try_end_0
    .catch Lcom/tapjoy/TapjoyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->l(Lcom/tapjoy/TJCorePlacement;)Z

    move v0, v8

    .line 440
    :goto_3
    return v0

    .line 341
    :cond_4
    invoke-static {}, Lcom/tapjoy/internal/y;->b()J

    move-result-wide v0

    goto :goto_0

    .line 346
    :cond_5
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0, v10, v11}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJCorePlacement;J)J

    goto :goto_1

    .line 355
    :catch_0
    move-exception v0

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v1}, Lcom/tapjoy/TJCorePlacement;->f(Lcom/tapjoy/TJCorePlacement;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    const-string v1, "TJPlacement.requestContent"

    invoke-static {v1}, Lcom/tapjoy/internal/ff;->b(Ljava/lang/String;)Lcom/tapjoy/internal/ff$a;

    move-result-object v1

    const-string v2, "mediation error"

    .line 358
    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/ff$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/ff$a;

    move-result-object v1

    .line 359
    invoke-virtual {v1}, Lcom/tapjoy/internal/ff$a;->c()V

    .line 360
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement$6;->d:Lcom/tapjoy/TJPlacement;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v4, Lcom/tapjoy/TJError;

    iget-object v5, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v5}, Lcom/tapjoy/TJCorePlacement;->i(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/TJPlacementData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tapjoy/TJPlacementData;->getHttpStatusCode()I

    move-result v5

    invoke-direct {v4, v5, v0}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/TJError;)V

    goto :goto_2

    .line 362
    :cond_6
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->d:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 363
    iget v0, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    sparse-switch v0, :sswitch_data_0

    .line 430
    const-string v0, "TJPlacement.requestContent"

    invoke-static {v0}, Lcom/tapjoy/internal/ff;->b(Ljava/lang/String;)Lcom/tapjoy/internal/ff$a;

    move-result-object v0

    const-string v1, "content_type"

    const-string v3, "none"

    .line 431
    invoke-virtual {v0, v1, v3}, Lcom/tapjoy/internal/ff$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/ff$a;

    move-result-object v0

    const-string v1, "code"

    iget v2, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    .line 432
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/ff$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/ff$a;

    move-result-object v0

    .line 433
    invoke-virtual {v0}, Lcom/tapjoy/internal/ff$a;->c()V

    .line 434
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->d:Lcom/tapjoy/TJPlacement;

    invoke-static {v0, v1}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TJPlacement;)V

    goto/16 :goto_2

    .line 366
    :sswitch_0
    const-string v0, "Content-Type"

    invoke-virtual {v2, v0}, Lcom/tapjoy/TapjoyHttpURLResponse;->getHeaderFieldAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-static {v0}, Lcom/tapjoy/internal/ct;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 368
    const-string v0, "X-Tapjoy-Disable-Preload"

    invoke-virtual {v2, v0}, Lcom/tapjoy/TapjoyHttpURLResponse;->getHeaderFieldAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 370
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    iget-object v1, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJCorePlacement;Ljava/lang/String;)V

    .line 371
    const-string v0, "TJPlacement.requestContent"

    invoke-static {v0}, Lcom/tapjoy/internal/ff;->b(Ljava/lang/String;)Lcom/tapjoy/internal/ff$a;

    move-result-object v0

    const-string v1, "content_type"

    const-string v3, "ad"

    .line 372
    invoke-virtual {v0, v1, v3}, Lcom/tapjoy/internal/ff$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/ff$a;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Lcom/tapjoy/internal/ff$a;->c()V

    .line 374
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->k(Lcom/tapjoy/TJCorePlacement;)V

    .line 375
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJCorePlacement;)V
    :try_end_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 376
    :catch_1
    move-exception v0

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v1}, Lcom/tapjoy/TJCorePlacement;->f(Lcom/tapjoy/TJCorePlacement;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    const-string v1, "TJPlacement.requestContent"

    invoke-static {v1}, Lcom/tapjoy/internal/ff;->b(Ljava/lang/String;)Lcom/tapjoy/internal/ff$a;

    move-result-object v1

    const-string v3, "server error"

    .line 379
    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/ff$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/ff$a;

    move-result-object v1

    .line 380
    invoke-virtual {v1}, Lcom/tapjoy/internal/ff$a;->c()V

    .line 381
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement$6;->d:Lcom/tapjoy/TJPlacement;

    sget-object v4, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SERVER_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v5, Lcom/tapjoy/TJError;

    iget v2, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    invoke-direct {v5, v2, v0}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3, v4, v5}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/TJError;)V

    goto/16 :goto_2

    .line 385
    :cond_7
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    iget-object v1, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tapjoy/TJCorePlacement;->b(Lcom/tapjoy/TJCorePlacement;Ljava/lang/String;)Z

    move-result v0

    .line 386
    if-eqz v0, :cond_8

    .line 387
    const-string v0, "TJPlacement.requestContent"

    invoke-static {v0}, Lcom/tapjoy/internal/ff;->b(Ljava/lang/String;)Lcom/tapjoy/internal/ff$a;

    move-result-object v0

    const-string v1, "content_type"

    const-string v2, "mm"

    .line 388
    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/ff$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/ff$a;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Lcom/tapjoy/internal/ff$a;->c()V

    .line 390
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->k(Lcom/tapjoy/TJCorePlacement;)V

    .line 391
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJCorePlacement;)V

    goto/16 :goto_2

    .line 393
    :cond_8
    const-string v0, "TJPlacement.requestContent"

    invoke-static {v0}, Lcom/tapjoy/internal/ff;->b(Ljava/lang/String;)Lcom/tapjoy/internal/ff$a;

    move-result-object v0

    const-string v1, "asset error"

    .line 394
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ff$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/ff$a;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Lcom/tapjoy/internal/ff$a;->c()V

    .line 396
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->d:Lcom/tapjoy/TJPlacement;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SERVER_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v4, Lcom/tapjoy/TJError;

    iget v5, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    iget-object v2, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-direct {v4, v5, v2}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v3, v4}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/TJError;)V

    goto/16 :goto_2

    .line 401
    :cond_9
    const-string v0, "TJPlacement.requestContent"

    invoke-static {v0}, Lcom/tapjoy/internal/ff;->b(Ljava/lang/String;)Lcom/tapjoy/internal/ff$a;

    move-result-object v0

    const-string v1, "content_type"

    const-string v3, "ad"

    .line 402
    invoke-virtual {v0, v1, v3}, Lcom/tapjoy/internal/ff$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/ff$a;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Lcom/tapjoy/internal/ff$a;->c()V

    .line 404
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v0}, Lcom/tapjoy/TJCorePlacement;->k(Lcom/tapjoy/TJCorePlacement;)V

    .line 406
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    new-instance v1, Lcom/tapjoy/TJCorePlacement$6$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJCorePlacement$6$1;-><init>(Lcom/tapjoy/TJCorePlacement$6;)V

    .line 2574
    sget-object v3, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Checking if there is content to cache for placement "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2836
    iget-object v5, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v5}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v5

    .line 2574
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2577
    const-string v3, "x-tapjoy-cacheable-assets"

    invoke-virtual {v2, v3}, Lcom/tapjoy/TapjoyHttpURLResponse;->getHeaderFieldAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2580
    :try_start_2
    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->canCachePlacement()Z

    move-result v3

    if-nez v3, :cond_a

    .line 2581
    sget-object v2, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Placement caching limit reached. No content will be cached for placement "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3836
    iget-object v0, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    .line 2581
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2582
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Lcom/tapjoy/TJCacheListener;->onCachingComplete(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 2606
    :catch_2
    move-exception v0

    invoke-interface {v1, v12}, Lcom/tapjoy/TJCacheListener;->onCachingComplete(I)V

    goto/16 :goto_2

    .line 2584
    :cond_a
    :try_start_3
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2585
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_b

    .line 2586
    sget-object v2, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Begin caching content for placement "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4836
    iget-object v5, v0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v5}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v5

    .line 2586
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2588
    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->incrementPlacementCacheCount()V

    .line 2589
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/tapjoy/TJCorePlacement;->h:Z

    .line 2592
    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v2

    new-instance v4, Lcom/tapjoy/TJCorePlacement$9;

    invoke-direct {v4, v0, v1}, Lcom/tapjoy/TJCorePlacement$9;-><init>(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TJCacheListener;)V

    invoke-virtual {v2, v3, v4}, Lcom/tapjoy/TapjoyCache;->cacheAssetGroup(Lorg/json/JSONArray;Lcom/tapjoy/TJCacheListener;)V

    goto/16 :goto_2

    .line 2601
    :cond_b
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/tapjoy/TJCacheListener;->onCachingComplete(I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 416
    :sswitch_1
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->b:Lcom/tapjoy/internal/el;

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->e:Lcom/tapjoy/internal/fi;

    .line 5068
    iget-wide v4, v1, Lcom/tapjoy/internal/fi;->e:J

    .line 416
    invoke-virtual {v0, v4, v5}, Lcom/tapjoy/internal/el;->a(J)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 417
    const-string v0, "TJPlacement.requestContent"

    invoke-static {v0}, Lcom/tapjoy/internal/ff;->b(Ljava/lang/String;)Lcom/tapjoy/internal/ff$a;

    move-result-object v0

    const-string v1, "network error"

    .line 418
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ff$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/ff$a;

    move-result-object v0

    const-string v1, "retry_timeout"

    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement$6;->b:Lcom/tapjoy/internal/el;

    iget-wide v4, v3, Lcom/tapjoy/internal/el;->b:J

    .line 419
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/tapjoy/internal/ff$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/ff$a;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Lcom/tapjoy/internal/ff$a;->c()V

    .line 421
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->d:Lcom/tapjoy/TJPlacement;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->NETWORK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v4, Lcom/tapjoy/TJError;

    iget v5, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    iget-object v2, v2, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-direct {v4, v5, v2}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v3, v4}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/TJError;)V

    goto/16 :goto_2

    .line 423
    :cond_c
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement$6;->e:Lcom/tapjoy/internal/fi;

    .line 6089
    iget-wide v4, v2, Lcom/tapjoy/internal/fi;->e:J

    .line 7075
    iget-wide v0, v2, Lcom/tapjoy/internal/fi;->e:J

    long-to-double v0, v0

    iget-wide v8, v2, Lcom/tapjoy/internal/fi;->d:D

    mul-double/2addr v0, v8

    double-to-long v0, v0

    .line 7076
    iget-wide v8, v2, Lcom/tapjoy/internal/fi;->b:J

    cmp-long v3, v0, v8

    if-gez v3, :cond_f

    .line 7077
    iget-wide v0, v2, Lcom/tapjoy/internal/fi;->b:J

    .line 7081
    :cond_d
    :goto_4
    iput-wide v0, v2, Lcom/tapjoy/internal/fi;->e:J

    .line 5113
    cmp-long v0, v4, v10

    if-lez v0, :cond_e

    .line 5114
    monitor-enter v2

    .line 5116
    :try_start_4
    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5119
    :goto_5
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_e
    move v0, v7

    .line 424
    goto/16 :goto_3

    .line 7078
    :cond_f
    iget-wide v8, v2, Lcom/tapjoy/internal/fi;->c:J

    cmp-long v3, v0, v8

    if-lez v3, :cond_d

    .line 7079
    iget-wide v0, v2, Lcom/tapjoy/internal/fi;->c:J

    goto :goto_4

    .line 5119
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :catch_3
    move-exception v0

    goto :goto_5

    .line 363
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 304
    const-string v0, "TJPlacement.requestContent"

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->a:Lcom/tapjoy/internal/ff$a;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/ff;->a(Ljava/lang/String;Lcom/tapjoy/internal/ff$a;)V

    .line 306
    const/4 v0, 0x0

    .line 307
    :goto_0
    invoke-direct {p0}, Lcom/tapjoy/TJCorePlacement$6;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 308
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->f:Lcom/tapjoy/TJCorePlacement;

    invoke-static {v1}, Lcom/tapjoy/TJCorePlacement;->g(Lcom/tapjoy/TJCorePlacement;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "retry"

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->a:Lcom/tapjoy/internal/ff$a;

    const-string v2, "retry_timeout"

    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement$6;->b:Lcom/tapjoy/internal/el;

    iget-wide v4, v3, Lcom/tapjoy/internal/el;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/ff$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/ff$a;

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$6;->a:Lcom/tapjoy/internal/ff$a;

    const-string v2, "retry_count"

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/tapjoy/internal/ff$a;->a(Ljava/lang/String;J)Lcom/tapjoy/internal/ff$a;

    goto :goto_0

    .line 314
    :cond_1
    return-void
.end method
