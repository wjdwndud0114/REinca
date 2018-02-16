.class Lcom/tnkfactory/ad/dt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/ds;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/ds;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/dt;->a:Lcom/tnkfactory/ad/ds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-wide/16 v4, 0x2bc

    iget-object v0, p0, Lcom/tnkfactory/ad/dt;->a:Lcom/tnkfactory/ad/ds;

    invoke-static {v0}, Lcom/tnkfactory/ad/ds;->a(Lcom/tnkfactory/ad/ds;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tnkfactory/ad/dt;->a:Lcom/tnkfactory/ad/ds;

    invoke-static {v2}, Lcom/tnkfactory/ad/ds;->b(Lcom/tnkfactory/ad/ds;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/dt;->a:Lcom/tnkfactory/ad/ds;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/ds;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tnkfactory/ad/dt;->a:Lcom/tnkfactory/ad/ds;

    invoke-static {v0}, Lcom/tnkfactory/ad/ds;->c(Lcom/tnkfactory/ad/ds;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
