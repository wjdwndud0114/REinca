.class Lcom/tnkfactory/ad/hs;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/hl;

.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tnkfactory/ad/hl;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/tnkfactory/ad/hs;->a:Lcom/tnkfactory/ad/hl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v1, p0, Lcom/tnkfactory/ad/hs;->b:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tnkfactory/ad/hs;->c:Z

    iput-object v1, p0, Lcom/tnkfactory/ad/hs;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/tnkfactory/ad/hs;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/tnkfactory/ad/hs;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/tnkfactory/ad/hs;->b:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/tnkfactory/ad/hs;->c:Z

    iput-object p4, p0, Lcom/tnkfactory/ad/hs;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/tnkfactory/ad/hs;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/tnkfactory/ad/hs;->f:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 10

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tnkfactory/ad/hs;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x2710

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/tnkfactory/ad/hs;->a:Lcom/tnkfactory/ad/hl;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lcom/tnkfactory/ad/hs;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/tnkfactory/ad/in;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/hs;->a:Lcom/tnkfactory/ad/hl;

    iget-object v3, p0, Lcom/tnkfactory/ad/hs;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/tnkfactory/ad/hs;->a:Lcom/tnkfactory/ad/hl;

    iget-object v4, v4, Lcom/tnkfactory/ad/hl;->a:Lcom/tnkfactory/ad/hz;

    invoke-virtual {v0, v3, v4}, Lcom/tnkfactory/ad/hl;->a(Landroid/content/Context;Lcom/tnkfactory/ad/hz;)Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/tnkfactory/ad/hs;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/tnkfactory/ad/hs;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/tnkfactory/ad/ia;->p(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    monitor-exit v2

    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/hs;->a:Lcom/tnkfactory/ad/hl;

    iget-object v0, v0, Lcom/tnkfactory/ad/hl;->a:Lcom/tnkfactory/ad/hz;

    iget-object v3, p0, Lcom/tnkfactory/ad/hs;->f:Ljava/lang/String;

    iput-object v3, v0, Lcom/tnkfactory/ad/hz;->l:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :try_start_2
    iget-boolean v0, p0, Lcom/tnkfactory/ad/hs;->c:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tnkfactory/ad/hs;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tnkfactory/ad/in;->i(Landroid/content/Context;)Z

    move-result v0

    iget-object v3, p0, Lcom/tnkfactory/ad/hs;->b:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/tnkfactory/ad/ia;->a(Landroid/content/Context;Z)V

    iget-object v3, p0, Lcom/tnkfactory/ad/hs;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/tnkfactory/ad/ia;->r(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/tnkfactory/ad/hs;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/tnkfactory/ad/ia;->q(Landroid/content/Context;)Z

    move-result v4

    if-eqz v0, :cond_4

    if-nez v3, :cond_4

    if-nez v4, :cond_4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/tnkfactory/ad/hs;->b:Landroid/content/Context;

    const-class v4, Lcom/tnkfactory/ad/TnkReceiver;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "com.tnkfactory.action.PAY_FOR_ACTION"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "actn_nm"

    iget-object v4, p0, Lcom/tnkfactory/ad/hs;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "app_hex"

    iget-object v4, p0, Lcom/tnkfactory/ad/hs;->e:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "adid"

    iget-object v4, p0, Lcom/tnkfactory/ad/hs;->a:Lcom/tnkfactory/ad/hl;

    iget-object v4, v4, Lcom/tnkfactory/ad/hl;->a:Lcom/tnkfactory/ad/hz;

    iget-object v4, v4, Lcom/tnkfactory/ad/hz;->l:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/tnkfactory/ad/hs;->b:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v0, p0, Lcom/tnkfactory/ad/hs;->b:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x7530

    add-long/2addr v6, v8

    invoke-virtual {v0, v4, v6, v7, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    const/16 v4, 0x14

    if-ge v1, v4, :cond_3

    const-wide/16 v4, 0x3e8

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    :try_start_4
    iget-object v4, p0, Lcom/tnkfactory/ad/hs;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/tnkfactory/ad/ia;->r(Landroid/content/Context;)I

    move-result v4

    if-eqz v4, :cond_7

    :cond_3
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/hs;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tnkfactory/ad/ia;->p(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/tnkfactory/ad/hs;->a:Lcom/tnkfactory/ad/hl;

    iget-object v0, v0, Lcom/tnkfactory/ad/hl;->a:Lcom/tnkfactory/ad/hz;

    iget-object v1, p0, Lcom/tnkfactory/ad/hs;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/hz;->c(Landroid/content/Context;)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v1

    const-string v0, "tnk_ref"

    iget-object v3, p0, Lcom/tnkfactory/ad/hs;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/tnkfactory/ad/ia;->r(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;I)V

    const-string v0, "have_ref"

    iget-object v3, p0, Lcom/tnkfactory/ad/hs;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/tnkfactory/ad/ia;->t(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v1, v0, v3}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tnkfactory/ad/hs;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tnkfactory/ad/ia;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v3, "tnk_sid"

    invoke-virtual {v1, v3, v0}, Lcom/tnkfactory/framework/vo/ValueObject;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/tnkfactory/ad/hs;->e:Ljava/lang/String;

    if-eqz v3, :cond_6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "override_app_id"

    iget-object v4, p0, Lcom/tnkfactory/ad/hs;->e:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v3, p0, Lcom/tnkfactory/ad/hs;->a:Lcom/tnkfactory/ad/hl;

    sget-object v4, Lcom/tnkfactory/ad/fd;->n:Ljava/lang/String;

    invoke-static {v4}, Lcom/tnkfactory/ad/fd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/tnkfactory/ad/fd;->D:Ljava/lang/String;

    invoke-static {v5}, Lcom/tnkfactory/ad/fd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    iget-object v7, p0, Lcom/tnkfactory/ad/hs;->d:Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/tnkfactory/ad/hl;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/tnkfactory/ad/hv;

    iget-object v3, p0, Lcom/tnkfactory/ad/hs;->a:Lcom/tnkfactory/ad/hl;

    iget-object v3, v3, Lcom/tnkfactory/ad/hl;->a:Lcom/tnkfactory/ad/hz;

    iget-object v3, v3, Lcom/tnkfactory/ad/hz;->a:Ljava/lang/String;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/tnkfactory/ad/hs;->d:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5}, Lcom/tnkfactory/ad/hv;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v3, p0, Lcom/tnkfactory/ad/hs;->b:Landroid/content/Context;

    invoke-virtual {v1, v3, v0}, Lcom/tnkfactory/ad/ServiceCallback;->onReturn(Landroid/content/Context;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_5
    :try_start_6
    monitor-exit v2

    goto/16 :goto_2

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RPFA "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :catch_2
    move-exception v4

    goto/16 :goto_4
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tnkfactory/ad/hs;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/hs;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tnkfactory/ad/hs;->a:Lcom/tnkfactory/ad/hl;

    iget-object v1, v1, Lcom/tnkfactory/ad/hl;->a:Lcom/tnkfactory/ad/hz;

    iget-object v1, v1, Lcom/tnkfactory/ad/hz;->a:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/tnkfactory/ad/ia;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/hs;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tnkfactory/ad/hs;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tnkfactory/ad/ia;->p(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/tnkfactory/ad/hs;->a()V

    goto :goto_0
.end method
