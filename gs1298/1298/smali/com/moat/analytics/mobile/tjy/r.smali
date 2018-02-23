.class Lcom/moat/analytics/mobile/tjy/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/tjy/q;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/tjy/q;)V
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/tjy/r;->a:Lcom/moat/analytics/mobile/tjy/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/r;->a:Lcom/moat/analytics/mobile/tjy/q;

    iget-object v0, v0, Lcom/moat/analytics/mobile/tjy/q;->a:Lcom/moat/analytics/mobile/tjy/n;

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/n;->f(Lcom/moat/analytics/mobile/tjy/n;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/base/exception/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
