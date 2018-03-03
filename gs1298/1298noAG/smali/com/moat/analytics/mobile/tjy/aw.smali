.class Lcom/moat/analytics/mobile/tjy/aw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/tjy/ar;

.field final synthetic b:Lcom/moat/analytics/mobile/tjy/av;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/tjy/av;Lcom/moat/analytics/mobile/tjy/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/tjy/aw;->b:Lcom/moat/analytics/mobile/tjy/av;

    iput-object p2, p0, Lcom/moat/analytics/mobile/tjy/aw;->a:Lcom/moat/analytics/mobile/tjy/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/aw;->b:Lcom/moat/analytics/mobile/tjy/av;

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/av;->a(Lcom/moat/analytics/mobile/tjy/av;)Lcom/moat/analytics/mobile/tjy/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/tjy/aw;->a:Lcom/moat/analytics/mobile/tjy/ar;

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/tjy/ax;->a(Lcom/moat/analytics/mobile/tjy/ar;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/base/exception/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
