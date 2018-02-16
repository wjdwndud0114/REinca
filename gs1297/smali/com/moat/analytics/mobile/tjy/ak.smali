.class public Lcom/moat/analytics/mobile/tjy/ak;
.super Lcom/moat/analytics/mobile/tjy/MoatFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/tjy/MoatFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createCustomTracker(Lcom/moat/analytics/mobile/tjy/ac;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public createNativeDisplayTracker(Landroid/view/View;Ljava/lang/String;)Lcom/moat/analytics/mobile/tjy/NativeDisplayTracker;
    .locals 1

    new-instance v0, Lcom/moat/analytics/mobile/tjy/al;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/tjy/al;-><init>()V

    return-object v0
.end method

.method public createNativeVideoTracker(Ljava/lang/String;)Lcom/moat/analytics/mobile/tjy/NativeVideoTracker;
    .locals 1

    new-instance v0, Lcom/moat/analytics/mobile/tjy/am;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/tjy/am;-><init>()V

    return-object v0
.end method

.method public createWebAdTracker(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/tjy/WebAdTracker;
    .locals 1

    new-instance v0, Lcom/moat/analytics/mobile/tjy/ao;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/tjy/ao;-><init>()V

    return-object v0
.end method

.method public createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/tjy/WebAdTracker;
    .locals 1

    new-instance v0, Lcom/moat/analytics/mobile/tjy/ao;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/tjy/ao;-><init>()V

    return-object v0
.end method

.method public createWebDisplayTracker(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/tjy/WebAdTracker;
    .locals 1

    new-instance v0, Lcom/moat/analytics/mobile/tjy/ao;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/tjy/ao;-><init>()V

    return-object v0
.end method

.method public createWebDisplayTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/tjy/WebAdTracker;
    .locals 1

    new-instance v0, Lcom/moat/analytics/mobile/tjy/ao;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/tjy/ao;-><init>()V

    return-object v0
.end method
