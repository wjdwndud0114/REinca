.class public Lcom/moat/analytics/mobile/tjy/ReactiveVideoTrackerPlugin;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/tjy/ac;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/tjy/ReactiveVideoTrackerPlugin;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/tjy/ReactiveVideoTrackerPlugin;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/ReactiveVideoTrackerPlugin;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/tjy/ReactiveVideoTrackerPlugin;->b()Lcom/moat/analytics/mobile/tjy/ReactiveVideoTracker;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/moat/analytics/mobile/tjy/a;Lcom/moat/analytics/mobile/tjy/ap;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/moat/analytics/mobile/tjy/ReactiveVideoTrackerPlugin;->b(Lcom/moat/analytics/mobile/tjy/a;Lcom/moat/analytics/mobile/tjy/ap;)Lcom/moat/analytics/mobile/tjy/ReactiveVideoTracker;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/moat/analytics/mobile/tjy/ReactiveVideoTracker;
    .locals 1

    new-instance v0, Lcom/moat/analytics/mobile/tjy/bg;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/tjy/bg;-><init>()V

    return-object v0
.end method

.method public b(Lcom/moat/analytics/mobile/tjy/a;Lcom/moat/analytics/mobile/tjy/ap;)Lcom/moat/analytics/mobile/tjy/ReactiveVideoTracker;
    .locals 2

    new-instance v0, Lcom/moat/analytics/mobile/tjy/bf;

    invoke-direct {v0, p0, p1, p2}, Lcom/moat/analytics/mobile/tjy/bf;-><init>(Lcom/moat/analytics/mobile/tjy/ReactiveVideoTrackerPlugin;Lcom/moat/analytics/mobile/tjy/a;Lcom/moat/analytics/mobile/tjy/ap;)V

    new-instance v1, Lcom/moat/analytics/mobile/tjy/be;

    invoke-direct {v1}, Lcom/moat/analytics/mobile/tjy/be;-><init>()V

    invoke-static {p2, v0, v1}, Lcom/moat/analytics/mobile/tjy/ay;->a(Lcom/moat/analytics/mobile/tjy/ap;Lcom/moat/analytics/mobile/tjy/ba;Lcom/moat/analytics/mobile/tjy/bc;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/tjy/ReactiveVideoTracker;

    return-object v0
.end method
