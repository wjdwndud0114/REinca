.class Lcom/tnkfactory/ad/ir;
.super Lcom/tnkfactory/ad/b;


# instance fields
.field protected d:Lcom/tnkfactory/ad/cz;

.field private e:Landroid/os/Handler;

.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tnkfactory/ad/hl;Lcom/tnkfactory/ad/hz;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/tnkfactory/ad/b;-><init>(Landroid/content/Context;Lcom/tnkfactory/ad/hl;Lcom/tnkfactory/ad/hz;)V

    iput-object v0, p0, Lcom/tnkfactory/ad/ir;->e:Landroid/os/Handler;

    iput-object v0, p0, Lcom/tnkfactory/ad/ir;->f:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x2

    iput v0, p0, Lcom/tnkfactory/ad/ir;->g:I

    new-instance v0, Lcom/tnkfactory/ad/cz;

    invoke-direct {v0}, Lcom/tnkfactory/ad/cz;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/ir;->d:Lcom/tnkfactory/ad/cz;

    iput p4, p0, Lcom/tnkfactory/ad/ir;->g:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/ir;->e:Landroid/os/Handler;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/ir;->f:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/tnkfactory/ad/ir;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ir;->f:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/tnkfactory/ad/VideoAdListener;ZJ)V
    .locals 13

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/tnkfactory/ad/ir;->d:Lcom/tnkfactory/ad/cz;

    invoke-virtual {v2, p2}, Lcom/tnkfactory/ad/cz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "VideoAd : already has a video ad."

    invoke-static {v2}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tnkfactory/ad/ir;->d:Lcom/tnkfactory/ad/cz;

    invoke-virtual {v2, p2}, Lcom/tnkfactory/ad/cz;->c(Ljava/lang/String;)Lcom/tnkfactory/ad/cy;

    move-result-object v2

    check-cast v2, Lcom/tnkfactory/ad/is;

    :cond_0
    :goto_0
    if-eqz v2, :cond_5

    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/tnkfactory/ad/is;->c:Lcom/tnkfactory/ad/TnkAdListener;

    :cond_1
    if-eqz p4, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/tnkfactory/ad/is;->d:Z

    :cond_2
    iget-object v3, p0, Lcom/tnkfactory/ad/ir;->d:Lcom/tnkfactory/ad/cz;

    invoke-virtual {v3, v2}, Lcom/tnkfactory/ad/cz;->b(Lcom/tnkfactory/ad/cy;)V

    if-eqz p3, :cond_3

    invoke-interface/range {p3 .. p3}, Lcom/tnkfactory/ad/VideoAdListener;->onLoad()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    :try_start_0
    invoke-static {p1, p2}, Lcom/tnkfactory/ad/ia;->i(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_9

    new-instance v4, Lcom/tnkfactory/ad/VideoAdItem;

    invoke-static {v2}, Lcom/tnkfactory/ad/in;->b([B)Landroid/os/Parcel;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/tnkfactory/ad/VideoAdItem;-><init>(Landroid/os/Parcel;)V

    iget-wide v6, v4, Lcom/tnkfactory/ad/VideoAdItem;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x36ee80

    sub-long/2addr v8, v10

    cmp-long v2, v6, v8

    if-lez v2, :cond_9

    iget-object v2, v4, Lcom/tnkfactory/ad/VideoAdItem;->z:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/tnkfactory/ad/jb;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VideoAd : got marshalled video ad. "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    new-instance v2, Lcom/tnkfactory/ad/is;

    invoke-direct {v2, p0, p2}, Lcom/tnkfactory/ad/is;-><init>(Lcom/tnkfactory/ad/ir;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iput-object v4, v2, Lcom/tnkfactory/ad/is;->a:Lcom/tnkfactory/ad/VideoAdItem;

    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/tnkfactory/ad/is;->c:Lcom/tnkfactory/ad/TnkAdListener;

    if-eqz p4, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/tnkfactory/ad/is;->d:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v3, v2

    :goto_2
    move-object v2, v3

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/tnkfactory/ad/ir;->d:Lcom/tnkfactory/ad/cz;

    invoke-virtual {v2, p2}, Lcom/tnkfactory/ad/cz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoAd : previous ad-fetching not completed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    if-eqz p4, :cond_6

    iget-object v2, p0, Lcom/tnkfactory/ad/ir;->d:Lcom/tnkfactory/ad/cz;

    move-object/from16 v0, p3

    invoke-virtual {v2, p2, v0}, Lcom/tnkfactory/ad/cz;->a(Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;)Lcom/tnkfactory/ad/cy;

    goto :goto_1

    :cond_6
    if-eqz p3, :cond_3

    const/4 v2, -0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lcom/tnkfactory/ad/VideoAdListener;->onFailure(I)V

    goto/16 :goto_1

    :cond_7
    const-string v2, "VideoAd : ad-fetching from server."

    invoke-static {v2}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    new-instance v2, Lcom/tnkfactory/ad/is;

    invoke-direct {v2, p0, p2}, Lcom/tnkfactory/ad/is;-><init>(Lcom/tnkfactory/ad/ir;Ljava/lang/String;)V

    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/tnkfactory/ad/is;->c:Lcom/tnkfactory/ad/TnkAdListener;

    if-eqz p4, :cond_8

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/tnkfactory/ad/is;->d:Z

    :cond_8
    iget-object v3, p0, Lcom/tnkfactory/ad/ir;->d:Lcom/tnkfactory/ad/cz;

    invoke-virtual {v3, v2}, Lcom/tnkfactory/ad/cz;->a(Lcom/tnkfactory/ad/cy;)V

    iget-object v2, p0, Lcom/tnkfactory/ad/ir;->e:Landroid/os/Handler;

    new-instance v3, Lcom/tnkfactory/ad/iu;

    invoke-direct {v3, p0, p1, p2}, Lcom/tnkfactory/ad/iu;-><init>(Lcom/tnkfactory/ad/ir;Landroid/content/Context;Ljava/lang/String;)V

    move-wide/from16 v0, p5

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :catch_1
    move-exception v2

    goto :goto_2

    :cond_9
    move-object v2, v3

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/tnkfactory/ad/ir;)I
    .locals 1

    iget v0, p0, Lcom/tnkfactory/ad/ir;->g:I

    return v0
.end method

.method static synthetic c(Lcom/tnkfactory/ad/ir;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ir;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ir;->d:Lcom/tnkfactory/ad/cz;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/cz;->b()V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/tnkfactory/ad/VideoAdListener;Z)V
    .locals 8

    invoke-static {p1, p2}, Lcom/tnkfactory/ad/ia;->k(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/tnkfactory/ad/ir;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tnkfactory/ad/VideoAdListener;ZJ)V

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/tnkfactory/ad/ir;->d:Lcom/tnkfactory/ad/cz;

    invoke-virtual {v0, p2}, Lcom/tnkfactory/ad/cz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/ir;->d:Lcom/tnkfactory/ad/cz;

    invoke-virtual {v0, p2}, Lcom/tnkfactory/ad/cz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/ir;->d:Lcom/tnkfactory/ad/cz;

    invoke-virtual {v0, p2}, Lcom/tnkfactory/ad/cz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ir;->d:Lcom/tnkfactory/ad/cz;

    invoke-virtual {v0, p2}, Lcom/tnkfactory/ad/cz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/ir;->d:Lcom/tnkfactory/ad/cz;

    invoke-virtual {v0, p2}, Lcom/tnkfactory/ad/cz;->c(Ljava/lang/String;)Lcom/tnkfactory/ad/cy;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/is;

    iget-object v2, v0, Lcom/tnkfactory/ad/is;->a:Lcom/tnkfactory/ad/VideoAdItem;

    invoke-static {p1, p2}, Lcom/tnkfactory/ad/ia;->h(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tnkfactory/ad/ir;->b:Lcom/tnkfactory/ad/hz;

    invoke-virtual {v2}, Lcom/tnkfactory/ad/VideoAdItem;->getAppId()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/tnkfactory/ad/hz;->n:J

    iget-object v1, v0, Lcom/tnkfactory/ad/is;->c:Lcom/tnkfactory/ad/TnkAdListener;

    check-cast v1, Lcom/tnkfactory/ad/VideoAdListener;

    invoke-static {v1}, Lcom/tnkfactory/ad/AdMediaActivity;->a(Lcom/tnkfactory/ad/VideoAdListener;)V

    invoke-static {p0}, Lcom/tnkfactory/ad/AdMediaActivity;->a(Lcom/tnkfactory/ad/ir;)V

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/tnkfactory/ad/AdMediaActivity;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "extra_aditem"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "extra_repeat"

    iget-boolean v0, v0, Lcom/tnkfactory/ad/is;->d:Z

    if-eqz v0, :cond_2

    const-string v0, "Y"

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_name"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v0, "N"

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/tnkfactory/ad/ir;->d:Lcom/tnkfactory/ad/cz;

    invoke-virtual {v0, p1}, Lcom/tnkfactory/ad/cz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
