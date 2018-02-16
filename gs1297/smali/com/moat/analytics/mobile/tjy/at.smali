.class Lcom/moat/analytics/mobile/tjy/at;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/tjy/as;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/tjy/as;)V
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/tjy/at;->a:Lcom/moat/analytics/mobile/tjy/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MoatStatus"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method
