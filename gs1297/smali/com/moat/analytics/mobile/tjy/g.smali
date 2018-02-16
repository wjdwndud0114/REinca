.class Lcom/moat/analytics/mobile/tjy/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/tjy/f;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/tjy/f;)V
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/tjy/g;->a:Lcom/moat/analytics/mobile/tjy/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/g;->a:Lcom/moat/analytics/mobile/tjy/f;

    const-string v1, "Shutting down."

    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/tjy/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/g;->a:Lcom/moat/analytics/mobile/tjy/f;

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/f;->a(Lcom/moat/analytics/mobile/tjy/f;)Lcom/moat/analytics/mobile/tjy/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/tjy/ad;->b()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/g;->a:Lcom/moat/analytics/mobile/tjy/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/tjy/f;->a(Lcom/moat/analytics/mobile/tjy/f;Lcom/moat/analytics/mobile/tjy/ad;)Lcom/moat/analytics/mobile/tjy/ad;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/base/exception/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
