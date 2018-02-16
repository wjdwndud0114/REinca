.class final Lcom/tnkfactory/ad/im;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Z

.field final synthetic c:Lcom/tnkfactory/ad/TnkAdListener;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;ZLcom/tnkfactory/ad/TnkAdListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/im;->a:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/tnkfactory/ad/im;->b:Z

    iput-object p3, p0, Lcom/tnkfactory/ad/im;->c:Lcom/tnkfactory/ad/TnkAdListener;

    iput-object p4, p0, Lcom/tnkfactory/ad/im;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/tnkfactory/ad/im;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/tnkfactory/ad/im;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/tnkfactory/ad/im;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/tnkfactory/ad/in;->a(Landroid/app/Activity;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    iget-object v2, p0, Lcom/tnkfactory/ad/im;->a:Landroid/app/Activity;

    iget-boolean v3, p0, Lcom/tnkfactory/ad/im;->b:Z

    invoke-static {v2, v0, v1, v3}, Lcom/tnkfactory/ad/fy;->a(Landroid/content/Context;IIZ)Lcom/tnkfactory/ad/fy;

    move-result-object v0

    iget-object v1, p0, Lcom/tnkfactory/ad/im;->c:Lcom/tnkfactory/ad/TnkAdListener;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/fy;->setListener(Lcom/tnkfactory/ad/TnkAdListener;)V

    iget-object v1, p0, Lcom/tnkfactory/ad/im;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/fy;->setTitle(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/tnkfactory/ad/im;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tnkfactory/ad/im;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/fy;->setRightButtonText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tnkfactory/ad/im;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/fy;->setLeftButtonText(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v4, v4}, Lcom/tnkfactory/ad/fy;->setAnimationType(II)V

    iget-object v1, p0, Lcom/tnkfactory/ad/im;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/fy;->show(Landroid/app/Activity;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v1

    iget-object v1, v1, Lcom/tnkfactory/ad/ha;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/fy;->setRightButtonText(Ljava/lang/String;)V

    goto :goto_0
.end method
