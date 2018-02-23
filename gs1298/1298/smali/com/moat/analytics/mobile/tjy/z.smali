.class Lcom/moat/analytics/mobile/tjy/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/tjy/ba;


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/tjy/ap;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/moat/analytics/mobile/tjy/v;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/tjy/v;Lcom/moat/analytics/mobile/tjy/ap;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/tjy/z;->c:Lcom/moat/analytics/mobile/tjy/v;

    iput-object p2, p0, Lcom/moat/analytics/mobile/tjy/z;->a:Lcom/moat/analytics/mobile/tjy/ap;

    iput-object p3, p0, Lcom/moat/analytics/mobile/tjy/z;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/moat/analytics/mobile/tjy/base/functional/a;
    .locals 4

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/z;->a:Lcom/moat/analytics/mobile/tjy/ap;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/tjy/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MoatFactory"

    const-string v1, "Creating NativeVideo tracker."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/moat/analytics/mobile/tjy/ah;

    iget-object v1, p0, Lcom/moat/analytics/mobile/tjy/z;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/moat/analytics/mobile/tjy/z;->c:Lcom/moat/analytics/mobile/tjy/v;

    invoke-static {v2}, Lcom/moat/analytics/mobile/tjy/v;->a(Lcom/moat/analytics/mobile/tjy/v;)Lcom/moat/analytics/mobile/tjy/a;

    move-result-object v2

    iget-object v3, p0, Lcom/moat/analytics/mobile/tjy/z;->a:Lcom/moat/analytics/mobile/tjy/ap;

    invoke-direct {v0, v1, v2, v3}, Lcom/moat/analytics/mobile/tjy/ah;-><init>(Ljava/lang/String;Lcom/moat/analytics/mobile/tjy/a;Lcom/moat/analytics/mobile/tjy/ap;)V

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/base/functional/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/tjy/base/functional/a;

    move-result-object v0

    return-object v0
.end method
