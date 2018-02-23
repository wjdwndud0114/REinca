.class Lcom/tnkfactory/ad/it;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/ir;

.field private b:Landroid/content/Context;

.field private c:Lcom/tnkfactory/ad/hl;

.field private d:Lcom/tnkfactory/ad/is;


# direct methods
.method public constructor <init>(Lcom/tnkfactory/ad/ir;Landroid/content/Context;Lcom/tnkfactory/ad/is;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/tnkfactory/ad/it;->a:Lcom/tnkfactory/ad/ir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/it;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/tnkfactory/ad/it;->c:Lcom/tnkfactory/ad/hl;

    iput-object v0, p0, Lcom/tnkfactory/ad/it;->d:Lcom/tnkfactory/ad/is;

    iput-object p2, p0, Lcom/tnkfactory/ad/it;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    iput-object v0, p0, Lcom/tnkfactory/ad/it;->c:Lcom/tnkfactory/ad/hl;

    iput-object p3, p0, Lcom/tnkfactory/ad/it;->d:Lcom/tnkfactory/ad/is;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tnkfactory/ad/it;->a:Lcom/tnkfactory/ad/ir;

    iget-object v2, v2, Lcom/tnkfactory/ad/ir;->d:Lcom/tnkfactory/ad/cz;

    invoke-virtual {v2}, Lcom/tnkfactory/ad/cz;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "VideoAd : request manager has shutdown.. cancel request task."

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/tnkfactory/ad/it;->c:Lcom/tnkfactory/ad/hl;

    iget-object v3, p0, Lcom/tnkfactory/ad/it;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/tnkfactory/ad/it;->d:Lcom/tnkfactory/ad/is;

    invoke-virtual {v4}, Lcom/tnkfactory/ad/is;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tnkfactory/ad/it;->a:Lcom/tnkfactory/ad/ir;

    invoke-static {v5}, Lcom/tnkfactory/ad/ir;->b(Lcom/tnkfactory/ad/ir;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/tnkfactory/ad/hl;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/tnkfactory/framework/vo/ValueObject;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/tnkfactory/framework/vo/ValueObject;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    :goto_1
    if-gez v0, :cond_0

    iget-object v1, p0, Lcom/tnkfactory/ad/it;->a:Lcom/tnkfactory/ad/ir;

    iget-object v1, v1, Lcom/tnkfactory/ad/ir;->b:Lcom/tnkfactory/ad/hz;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/tnkfactory/ad/hz;->n:J

    iget-object v1, p0, Lcom/tnkfactory/ad/it;->d:Lcom/tnkfactory/ad/is;

    iget-boolean v1, v1, Lcom/tnkfactory/ad/is;->d:Z

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/tnkfactory/ad/it;->a:Lcom/tnkfactory/ad/ir;

    iget-object v0, v0, Lcom/tnkfactory/ad/ir;->d:Lcom/tnkfactory/ad/cz;

    iget-object v1, p0, Lcom/tnkfactory/ad/it;->d:Lcom/tnkfactory/ad/is;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/cz;->a(Lcom/tnkfactory/ad/cy;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/it;->a:Lcom/tnkfactory/ad/ir;

    invoke-static {v0}, Lcom/tnkfactory/ad/ir;->c(Lcom/tnkfactory/ad/ir;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tnkfactory/ad/iu;

    iget-object v2, p0, Lcom/tnkfactory/ad/it;->a:Lcom/tnkfactory/ad/ir;

    iget-object v3, p0, Lcom/tnkfactory/ad/it;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/tnkfactory/ad/it;->d:Lcom/tnkfactory/ad/is;

    invoke-virtual {v4}, Lcom/tnkfactory/ad/is;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/tnkfactory/ad/iu;-><init>(Lcom/tnkfactory/ad/ir;Landroid/content/Context;Ljava/lang/String;)V

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v3, "vdo_url"

    invoke-virtual {v2, v3}, Lcom/tnkfactory/framework/vo/ValueObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v0, Lcom/tnkfactory/ad/VideoAdItem;

    invoke-direct {v0, v2}, Lcom/tnkfactory/ad/VideoAdItem;-><init>(Lcom/tnkfactory/framework/vo/ValueObject;)V

    invoke-static {v0}, Lcom/tnkfactory/ad/in;->a(Landroid/os/Parcelable;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/tnkfactory/ad/it;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/tnkfactory/ad/it;->d:Lcom/tnkfactory/ad/is;

    invoke-virtual {v4}, Lcom/tnkfactory/ad/is;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/tnkfactory/ad/ia;->a(Landroid/content/Context;Ljava/lang/String;[B)V

    iget-object v2, p0, Lcom/tnkfactory/ad/it;->d:Lcom/tnkfactory/ad/is;

    iput-object v0, v2, Lcom/tnkfactory/ad/is;->a:Lcom/tnkfactory/ad/VideoAdItem;

    iget-object v0, p0, Lcom/tnkfactory/ad/it;->d:Lcom/tnkfactory/ad/is;

    iget-object v0, v0, Lcom/tnkfactory/ad/is;->a:Lcom/tnkfactory/ad/VideoAdItem;

    iget-wide v2, v0, Lcom/tnkfactory/ad/VideoAdItem;->O:J

    iget-object v0, p0, Lcom/tnkfactory/ad/it;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/tnkfactory/ad/it;->d:Lcom/tnkfactory/ad/is;

    invoke-virtual {v4}, Lcom/tnkfactory/ad/is;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v2, v3}, Lcom/tnkfactory/ad/ia;->a(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/tnkfactory/ad/it;->a:Lcom/tnkfactory/ad/ir;

    iget-object v0, v0, Lcom/tnkfactory/ad/ir;->d:Lcom/tnkfactory/ad/cz;

    iget-object v2, p0, Lcom/tnkfactory/ad/it;->d:Lcom/tnkfactory/ad/is;

    invoke-virtual {v0, v2}, Lcom/tnkfactory/ad/cz;->b(Lcom/tnkfactory/ad/cy;)V

    iget-object v0, p0, Lcom/tnkfactory/ad/it;->d:Lcom/tnkfactory/ad/is;

    iget-object v0, v0, Lcom/tnkfactory/ad/is;->c:Lcom/tnkfactory/ad/TnkAdListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tnkfactory/ad/it;->d:Lcom/tnkfactory/ad/is;

    iget-object v0, v0, Lcom/tnkfactory/ad/is;->c:Lcom/tnkfactory/ad/TnkAdListener;

    invoke-interface {v0}, Lcom/tnkfactory/ad/TnkAdListener;->onLoad()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    const/16 v0, -0x9

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/tnkfactory/ad/it;->d:Lcom/tnkfactory/ad/is;

    iget-object v1, v1, Lcom/tnkfactory/ad/is;->c:Lcom/tnkfactory/ad/TnkAdListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tnkfactory/ad/it;->d:Lcom/tnkfactory/ad/is;

    iget-object v1, v1, Lcom/tnkfactory/ad/is;->c:Lcom/tnkfactory/ad/TnkAdListener;

    invoke-interface {v1, v0}, Lcom/tnkfactory/ad/TnkAdListener;->onFailure(I)V

    goto/16 :goto_0
.end method
