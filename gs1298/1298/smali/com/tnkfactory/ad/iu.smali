.class Lcom/tnkfactory/ad/iu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/ir;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tnkfactory/ad/ir;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/tnkfactory/ad/iu;->a:Lcom/tnkfactory/ad/ir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tnkfactory/ad/iu;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/tnkfactory/ad/iu;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/tnkfactory/ad/iu;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/tnkfactory/ad/iu;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/tnkfactory/ad/iu;->a:Lcom/tnkfactory/ad/ir;

    iget-object v0, v0, Lcom/tnkfactory/ad/ir;->d:Lcom/tnkfactory/ad/cz;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/cz;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "VideoAd : request manager has shutdown.. cancel request submit."

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tnkfactory/ad/iu;->a:Lcom/tnkfactory/ad/ir;

    iget-object v0, v0, Lcom/tnkfactory/ad/ir;->d:Lcom/tnkfactory/ad/cz;

    iget-object v1, p0, Lcom/tnkfactory/ad/iu;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/cz;->d(Ljava/lang/String;)Lcom/tnkfactory/ad/cy;

    move-result-object v0

    check-cast v0, Lcom/tnkfactory/ad/is;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tnkfactory/ad/iu;->a:Lcom/tnkfactory/ad/ir;

    invoke-static {v1}, Lcom/tnkfactory/ad/ir;->a(Lcom/tnkfactory/ad/ir;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/tnkfactory/ad/it;

    iget-object v3, p0, Lcom/tnkfactory/ad/iu;->a:Lcom/tnkfactory/ad/ir;

    iget-object v4, p0, Lcom/tnkfactory/ad/iu;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v4, v0}, Lcom/tnkfactory/ad/it;-><init>(Lcom/tnkfactory/ad/ir;Landroid/content/Context;Lcom/tnkfactory/ad/is;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method
