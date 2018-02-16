.class public Lcom/tnkfactory/ad/TnkSession;
.super Ljava/lang/Object;


# static fields
.field public static final ANIMATION_ALPHA:I = 0x2

.field public static final ANIMATION_BOTTOM:I = 0x3

.field public static final ANIMATION_FLIP:I = 0x8

.field public static final ANIMATION_GROW:I = 0x9

.field public static final ANIMATION_LEFT:I = 0x5

.field public static final ANIMATION_NONE:I = 0x1

.field public static final ANIMATION_RANDOM:I = 0x0

.field public static final ANIMATION_RIGHT:I = 0x6

.field public static final ANIMATION_SHRINK:I = 0xa

.field public static final ANIMATION_SPIN:I = 0x7

.field public static final ANIMATION_TOP:I = 0x4

.field public static final CPC:Ljava/lang/String; = "__tnk_cpc__"

.field public static final MAX_ANIMATIONS:I = 0xa

.field public static final PPI:Ljava/lang/String; = "__tnk_ppi__"

.field public static final STATE_CHECK:I = 0x3

.field public static final STATE_ERROR:I = 0x9

.field public static final STATE_NO:I = 0x0

.field public static final STATE_PASSED:I = 0x4

.field public static final STATE_STOP:I = 0x8

.field public static final STATE_TEST:I = 0x2

.field public static final STATE_UNKNOWN:I = 0x63

.field public static final STATE_YES:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Lcom/tnkfactory/ad/im;

    move-object v1, p0

    move v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/tnkfactory/ad/im;-><init>(Landroid/app/Activity;ZLcom/tnkfactory/ad/TnkAdListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final actionCompleted(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v1}, Lcom/tnkfactory/ad/hl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final actionCompleted(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/tnkfactory/ad/hl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final applicationStarted(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/tnkfactory/ad/hl;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final buyCompleted(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tnkfactory/ad/hl;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static createAdListView(Landroid/app/Activity;Lcom/tnkfactory/ad/TnkLayout;)Lcom/tnkfactory/ad/AdListView;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->h()Z

    move-result v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/in;->k(Landroid/content/Context;)Lcom/tnkfactory/ad/TnkLayout;

    move-result-object p1

    :cond_0
    invoke-static {p0, p1}, Lcom/tnkfactory/ad/AdListView;->inflate(Landroid/content/Context;Lcom/tnkfactory/ad/TnkLayout;)Lcom/tnkfactory/ad/AdListView;

    move-result-object v0

    return-object v0
.end method

.method public static createAdListView(Landroid/app/Activity;Z)Lcom/tnkfactory/ad/AdListView;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->h()Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/in;->k(Landroid/content/Context;)Lcom/tnkfactory/ad/TnkLayout;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Lcom/tnkfactory/ad/AdListView;->inflate(Landroid/content/Context;Lcom/tnkfactory/ad/TnkLayout;)Lcom/tnkfactory/ad/AdListView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/tnkfactory/ad/AdListView;->inflate(Landroid/content/Context;Z)Lcom/tnkfactory/ad/AdListView;

    move-result-object v0

    goto :goto_0
.end method

.method public static final deleteTestLog(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tnkfactory/ad/hl;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static final enableLogging(Z)V
    .locals 0

    invoke-static {p0}, Lcom/tnkfactory/ad/Logger;->enableLogging(Z)V

    return-void
.end method

.method public static getCurrentInterstitialLogicName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/tnkfactory/ad/c;->getCurrentInterstitialAdView(Landroid/app/Activity;)Lcom/tnkfactory/ad/c;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/tnkfactory/ad/j;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tnkfactory/ad/j;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/j;->getLogicName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getHelpdeskUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/tnkfactory/ad/in;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getReferrer(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/tnkfactory/ad/ia;->r(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static final getUserName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/tnkfactory/ad/ia;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasInterstitialAd(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tnkfactory/ad/if;->b(Landroid/content/Context;)Lcom/tnkfactory/ad/fq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/fq;->a()Z

    move-result v0

    return v0
.end method

.method public static hasInterstitialAd(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tnkfactory/ad/if;->b(Landroid/content/Context;)Lcom/tnkfactory/ad/fq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tnkfactory/ad/fq;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasVideoAd(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "__tnk_cpc__"

    invoke-static {p0, v0}, Lcom/tnkfactory/ad/TnkSession;->hasVideoAd(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasVideoAd(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->e()Lcom/tnkfactory/ad/ir;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/tnkfactory/ad/ir;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static final initInstance(Landroid/content/Context;)V
    .locals 0

    invoke-static {}, Lcom/tnkfactory/ad/if;->b()V

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    return-void
.end method

.method public static final initInstance(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tnkfactory/ad/ia;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/tnkfactory/ad/if;->b()V

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    return-void
.end method

.method public static isAdListDetailVisible(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {p0}, Lcom/tnkfactory/ad/AdListView;->getCurrentDetailView(Landroid/app/Activity;)Lcom/tnkfactory/ad/ah;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAdListVisible(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {p0}, Lcom/tnkfactory/ad/AdListView;->getCurrentView(Landroid/app/Activity;)Lcom/tnkfactory/ad/AdListView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAdWebViewVisible(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {p0}, Lcom/tnkfactory/ad/ds;->a(Landroid/app/Activity;)Lcom/tnkfactory/ad/ds;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInterstitalAdVisible(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {p0}, Lcom/tnkfactory/ad/c;->getCurrentInterstitialAdView(Landroid/app/Activity;)Lcom/tnkfactory/ad/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMoreAppsVisible(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {p0}, Lcom/tnkfactory/ad/fy;->a(Landroid/app/Activity;)Lcom/tnkfactory/ad/fy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static popupAdList(Landroid/app/Activity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v0, v0, Lcom/tnkfactory/ad/ha;->E:Ljava/lang/String;

    invoke-static {p0, v0, v1, v1}, Lcom/tnkfactory/ad/TnkSession;->popupAdList(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;Lcom/tnkfactory/ad/TnkLayout;)V

    return-void
.end method

.method public static popupAdList(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/tnkfactory/ad/TnkSession;->popupAdList(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;Lcom/tnkfactory/ad/TnkLayout;)V

    return-void
.end method

.method public static popupAdList(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tnkfactory/ad/TnkSession;->popupAdList(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;Lcom/tnkfactory/ad/TnkLayout;)V

    return-void
.end method

.method public static popupAdList(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;Lcom/tnkfactory/ad/TnkLayout;)V
    .locals 1

    new-instance v0, Lcom/tnkfactory/ad/ii;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/tnkfactory/ad/ii;-><init>(Landroid/app/Activity;Lcom/tnkfactory/ad/TnkLayout;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static popupMoreApps(Landroid/app/Activity;)V
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v1, v0, Lcom/tnkfactory/ad/ha;->aa:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/tnkfactory/ad/TnkSession;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static popupMoreApps(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/tnkfactory/ad/TnkSession;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static popupMoreApps(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/tnkfactory/ad/TnkSession;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static popupMoreAppsWithButtons(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;)V
    .locals 6

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/tnkfactory/ad/TnkSession;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static prepareInterstitialAd(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tnkfactory/ad/TnkSession;->prepareInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;)V

    return-void
.end method

.method public static prepareInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;)V
    .locals 1

    new-instance v0, Lcom/tnkfactory/ad/ik;

    invoke-direct {v0}, Lcom/tnkfactory/ad/ik;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/tnkfactory/ad/ik;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static prepareNativeAd(Landroid/content/Context;Ljava/lang/String;ILcom/tnkfactory/ad/NativeAdListener;)Lcom/tnkfactory/ad/NativeAdItem;
    .locals 1

    new-instance v0, Lcom/tnkfactory/ad/NativeAdItem;

    invoke-direct {v0, p0, p2, p3}, Lcom/tnkfactory/ad/NativeAdItem;-><init>(Landroid/content/Context;ILcom/tnkfactory/ad/NativeAdListener;)V

    invoke-virtual {v0, p1}, Lcom/tnkfactory/ad/NativeAdItem;->prepareAd(Ljava/lang/String;)V

    return-object v0
.end method

.method public static prepareVideoAd(Landroid/app/Activity;Lcom/tnkfactory/ad/VideoAdListener;)V
    .locals 2

    const-string v0, "__tnk_cpc__"

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/tnkfactory/ad/TnkSession;->prepareVideoAd(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/VideoAdListener;Z)V

    return-void
.end method

.method public static prepareVideoAd(Landroid/app/Activity;Lcom/tnkfactory/ad/VideoAdListener;Z)V
    .locals 1

    const-string v0, "__tnk_cpc__"

    invoke-static {p0, v0, p1, p2}, Lcom/tnkfactory/ad/TnkSession;->prepareVideoAd(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/VideoAdListener;Z)V

    return-void
.end method

.method public static prepareVideoAd(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/VideoAdListener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/tnkfactory/ad/TnkSession;->prepareVideoAd(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/VideoAdListener;Z)V

    return-void
.end method

.method public static prepareVideoAd(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/VideoAdListener;Z)V
    .locals 1

    new-instance v0, Lcom/tnkfactory/ad/ij;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tnkfactory/ad/ij;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/VideoAdListener;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final prohibitConcurrentInvoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->d()Lcom/tnkfactory/ad/fc;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tnkfactory/ad/fc;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final purchaseItem(Landroid/content/Context;ILjava/lang/String;ZLcom/tnkfactory/ad/ServiceCallback;)V
    .locals 6

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p4

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tnkfactory/ad/hl;->a(Landroid/content/Context;ILjava/lang/String;Lcom/tnkfactory/ad/ServiceCallback;Z)V

    return-void
.end method

.method public static final purchaseItem(Landroid/content/Context;ILjava/lang/String;)[J
    .locals 1

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/tnkfactory/ad/hl;->a(Landroid/content/Context;ILjava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public static final queryAdvertiseCount(Landroid/content/Context;ZLcom/tnkfactory/ad/ServiceCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Lcom/tnkfactory/ad/hl;->e(Landroid/content/Context;Lcom/tnkfactory/ad/ServiceCallback;Z)V

    return-void
.end method

.method public static final queryAdvertiseState(Landroid/content/Context;ZLcom/tnkfactory/ad/ServiceCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Lcom/tnkfactory/ad/hl;->c(Landroid/content/Context;Lcom/tnkfactory/ad/ServiceCallback;Z)V

    return-void
.end method

.method public static final queryPoint(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tnkfactory/ad/hl;->a(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static final queryPoint(Landroid/content/Context;ZLcom/tnkfactory/ad/ServiceCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Lcom/tnkfactory/ad/hl;->a(Landroid/content/Context;Lcom/tnkfactory/ad/ServiceCallback;Z)V

    return-void
.end method

.method public static final queryPublishState(Landroid/content/Context;ZLcom/tnkfactory/ad/ServiceCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Lcom/tnkfactory/ad/hl;->b(Landroid/content/Context;Lcom/tnkfactory/ad/ServiceCallback;Z)V

    return-void
.end method

.method public static removeCurrentAdList(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/tnkfactory/ad/AdListView;->removeCurrentView(Landroid/app/Activity;)V

    return-void
.end method

.method public static removeCurrentAdListDetail(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/tnkfactory/ad/AdListView;->removeCurrentDetailView(Landroid/app/Activity;)V

    return-void
.end method

.method public static removeCurrentAdWebView(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/tnkfactory/ad/ds;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public static removeCurrentInterstitialAd(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/tnkfactory/ad/c;->removeCurrentInterstitialAdView(Landroid/app/Activity;Z)V

    return-void
.end method

.method public static removeCurrentMoreApps(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/tnkfactory/ad/fy;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public static final requestPayForInstalls(Landroid/content/Context;ZLcom/tnkfactory/ad/ServiceCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Lcom/tnkfactory/ad/hl;->d(Landroid/content/Context;Lcom/tnkfactory/ad/ServiceCallback;Z)V

    return-void
.end method

.method public static final requestPayForInstalls(Landroid/content/Context;)[I
    .locals 1

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tnkfactory/ad/hl;->d(Landroid/content/Context;)[I

    move-result-object v0

    return-object v0
.end method

.method public static final setAdWallReload(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/tnkfactory/ad/ia;->i(Landroid/content/Context;)V

    return-void
.end method

.method public static final setPopupAnimationResourceId(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tnkfactory/ad/ia;->b(Landroid/content/Context;I)V

    return-void
.end method

.method public static final setUserAge(Landroid/content/Context;I)V
    .locals 1

    invoke-static {}, Lcom/tnkfactory/ad/if;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tnkfactory/ad/hl;->a(I)V

    :cond_0
    invoke-static {p0, p1}, Lcom/tnkfactory/ad/ia;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static final setUserCat(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tnkfactory/ad/if;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tnkfactory/ad/hl;->c(Ljava/lang/String;)V

    :cond_0
    invoke-static {p0, p1}, Lcom/tnkfactory/ad/ia;->e(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final setUserCatExt(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tnkfactory/ad/if;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tnkfactory/ad/hl;->d(Ljava/lang/String;)V

    :cond_0
    invoke-static {p0, p1}, Lcom/tnkfactory/ad/ia;->f(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final setUserGender(Landroid/content/Context;Lcom/tnkfactory/ad/TnkCode;)V
    .locals 2

    invoke-static {}, Lcom/tnkfactory/ad/if;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tnkfactory/ad/TnkCode;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tnkfactory/ad/hl;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/tnkfactory/ad/TnkCode;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tnkfactory/ad/ia;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final setUserName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tnkfactory/ad/if;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tnkfactory/ad/hl;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {p0, p1}, Lcom/tnkfactory/ad/ia;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final showAdList(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/tnkfactory/ad/TnkSession;->showAdList(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkLayout;)V

    return-void
.end method

.method public static final showAdList(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tnkfactory/ad/TnkSession;->showAdList(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkLayout;)V

    return-void
.end method

.method public static final showAdList(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkLayout;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->h()Z

    move-result v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tnkfactory/ad/AdWallActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v2

    iget-object p1, v2, Lcom/tnkfactory/ad/ha;->E:Ljava/lang/String;

    :cond_0
    const-string v2, "extra_adwall_title"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/in;->k(Landroid/content/Context;)Lcom/tnkfactory/ad/TnkLayout;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "extra_adlist_layout"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static showInterstitialAd(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x1388

    invoke-static {p0, v2, v0, v1, v2}, Lcom/tnkfactory/ad/TnkSession;->showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;JLcom/tnkfactory/ad/TnkAdListener;)V

    return-void
.end method

.method public static showInterstitialAd(Landroid/app/Activity;J)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, v0}, Lcom/tnkfactory/ad/TnkSession;->showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;JLcom/tnkfactory/ad/TnkAdListener;)V

    return-void
.end method

.method public static showInterstitialAd(Landroid/app/Activity;JLcom/tnkfactory/ad/TnkAdListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/tnkfactory/ad/TnkSession;->showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;JLcom/tnkfactory/ad/TnkAdListener;)V

    return-void
.end method

.method public static showInterstitialAd(Landroid/app/Activity;Lcom/tnkfactory/ad/TnkAdListener;)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v2, 0x1388

    invoke-static {p0, v0, v2, v3, p1}, Lcom/tnkfactory/ad/TnkSession;->showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;JLcom/tnkfactory/ad/TnkAdListener;)V

    return-void
.end method

.method public static showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    const-wide/16 v0, 0x1388

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/tnkfactory/ad/TnkSession;->showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;JLcom/tnkfactory/ad/TnkAdListener;)V

    return-void
.end method

.method public static showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;J)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/tnkfactory/ad/TnkSession;->showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;JLcom/tnkfactory/ad/TnkAdListener;)V

    return-void
.end method

.method public static showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;JLcom/tnkfactory/ad/TnkAdListener;)V
    .locals 6

    new-instance v0, Lcom/tnkfactory/ad/il;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/tnkfactory/ad/il;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;J)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;)V
    .locals 2

    const-wide/16 v0, 0x1388

    invoke-static {p0, p1, v0, v1, p2}, Lcom/tnkfactory/ad/TnkSession;->showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;JLcom/tnkfactory/ad/TnkAdListener;)V

    return-void
.end method

.method public static showMoreApps(Landroid/app/Activity;)V
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/tnkfactory/ad/ha;->a()Lcom/tnkfactory/ad/ha;

    move-result-object v0

    iget-object v1, v0, Lcom/tnkfactory/ad/ha;->aa:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/tnkfactory/ad/TnkSession;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static showMoreApps(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/tnkfactory/ad/TnkSession;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static showMoreApps(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/tnkfactory/ad/TnkSession;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static showMoreAppsWithButtons(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;)V
    .locals 6

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/tnkfactory/ad/TnkSession;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/tnkfactory/ad/TnkAdListener;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static showVideoAd(Landroid/app/Activity;)Z
    .locals 2

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tnkfactory/ad/if;->c(Landroid/content/Context;)Lcom/tnkfactory/ad/ir;

    move-result-object v0

    const-string v1, "__tnk_cpc__"

    invoke-virtual {v0, p0, v1}, Lcom/tnkfactory/ad/ir;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static showVideoAd(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tnkfactory/ad/if;->c(Landroid/content/Context;)Lcom/tnkfactory/ad/ir;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tnkfactory/ad/ir;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final withdrawPoints(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tnkfactory/ad/hl;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final withdrawPoints(Landroid/content/Context;Ljava/lang/String;ZLcom/tnkfactory/ad/ServiceCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/tnkfactory/ad/if;->a(Landroid/content/Context;)Lcom/tnkfactory/ad/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tnkfactory/ad/if;->c()Lcom/tnkfactory/ad/hl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p3, p2}, Lcom/tnkfactory/ad/hl;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tnkfactory/ad/ServiceCallback;Z)V

    return-void
.end method
