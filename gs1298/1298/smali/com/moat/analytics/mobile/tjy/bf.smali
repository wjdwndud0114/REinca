.class Lcom/moat/analytics/mobile/tjy/bf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/tjy/ba;


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/tjy/a;

.field final synthetic b:Lcom/moat/analytics/mobile/tjy/ap;

.field final synthetic c:Lcom/moat/analytics/mobile/tjy/ReactiveVideoTrackerPlugin;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/tjy/ReactiveVideoTrackerPlugin;Lcom/moat/analytics/mobile/tjy/a;Lcom/moat/analytics/mobile/tjy/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/tjy/bf;->c:Lcom/moat/analytics/mobile/tjy/ReactiveVideoTrackerPlugin;

    iput-object p2, p0, Lcom/moat/analytics/mobile/tjy/bf;->a:Lcom/moat/analytics/mobile/tjy/a;

    iput-object p3, p0, Lcom/moat/analytics/mobile/tjy/bf;->b:Lcom/moat/analytics/mobile/tjy/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/moat/analytics/mobile/tjy/base/functional/a;
    .locals 4

    new-instance v0, Lcom/moat/analytics/mobile/tjy/bd;

    iget-object v1, p0, Lcom/moat/analytics/mobile/tjy/bf;->c:Lcom/moat/analytics/mobile/tjy/ReactiveVideoTrackerPlugin;

    invoke-static {v1}, Lcom/moat/analytics/mobile/tjy/ReactiveVideoTrackerPlugin;->a(Lcom/moat/analytics/mobile/tjy/ReactiveVideoTrackerPlugin;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/moat/analytics/mobile/tjy/bf;->a:Lcom/moat/analytics/mobile/tjy/a;

    iget-object v3, p0, Lcom/moat/analytics/mobile/tjy/bf;->b:Lcom/moat/analytics/mobile/tjy/ap;

    invoke-direct {v0, v1, v2, v3}, Lcom/moat/analytics/mobile/tjy/bd;-><init>(Ljava/lang/String;Lcom/moat/analytics/mobile/tjy/a;Lcom/moat/analytics/mobile/tjy/ap;)V

    invoke-static {v0}, Lcom/moat/analytics/mobile/tjy/base/functional/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/tjy/base/functional/a;

    move-result-object v0

    return-object v0
.end method
