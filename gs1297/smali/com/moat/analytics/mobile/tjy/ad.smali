.class Lcom/moat/analytics/mobile/tjy/ad;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/moat/analytics/mobile/tjy/a;

.field protected final b:Lcom/moat/analytics/mobile/tjy/ap;

.field protected c:Lcom/moat/analytics/mobile/tjy/bh;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Ljava/lang/ref/WeakReference;

.field private g:Ljava/lang/ref/WeakReference;

.field private h:Landroid/webkit/WebView;

.field private i:Z

.field private j:Z

.field private final k:Ljava/util/LinkedList;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/moat/analytics/mobile/tjy/ap;Lcom/moat/analytics/mobile/tjy/a;)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/tjy/ad;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/moat/analytics/mobile/tjy/ad;->b:Lcom/moat/analytics/mobile/tjy/ap;

    iput-object p3, p0, Lcom/moat/analytics/mobile/tjy/ad;->a:Lcom/moat/analytics/mobile/tjy/a;

    const-string v0, "_moatTracker%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x4197d78400000000L    # 1.0E8

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/tjy/ad;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/tjy/ad;->k:Ljava/util/LinkedList;

    iput-boolean v6, p0, Lcom/moat/analytics/mobile/tjy/ad;->i:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-interface {p3}, Lcom/moat/analytics/mobile/tjy/a;->c()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/tjy/ad;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/tjy/ad;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/tjy/ad;->i:Z

    return v0
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/tjy/ad;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/moat/analytics/mobile/tjy/ad;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/moat/analytics/mobile/tjy/ad;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/ad;->g:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic c(Lcom/moat/analytics/mobile/tjy/ad;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/ad;->h:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 10

    const/16 v5, 0xa

    const/4 v3, 0x1

    const/16 v9, 0xc8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/ad;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v0, v9, :cond_2

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_0

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/ad;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/ad;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    div-int/lit16 v0, v0, 0xc8

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit16 v0, v0, 0xc8

    iget-object v2, p0, Lcom/moat/analytics/mobile/tjy/ad;->k:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v5, p0, Lcom/moat/analytics/mobile/tjy/ad;->k:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/moat/analytics/mobile/tjy/ad;->k:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_3
    iget-object v2, p0, Lcom/moat/analytics/mobile/tjy/ad;->k:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    if-ge v0, v9, :cond_6

    add-int/lit8 v0, v0, 0x1

    const-string v5, "javascript:%s.dispatchMany([%s])"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v3

    :goto_4
    iget-object v4, p0, Lcom/moat/analytics/mobile/tjy/ad;->k:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    if-ge v0, v9, :cond_5

    add-int/lit8 v4, v0, 0x1

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/ad;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0x7d0

    if-gt v7, v8, :cond_4

    iget-object v7, p0, Lcom/moat/analytics/mobile/tjy/ad;->k:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    if-eqz v2, :cond_3

    move v2, v1

    :goto_5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v4

    goto :goto_4

    :cond_3
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_4
    move v0, v4

    :cond_5
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/moat/analytics/mobile/tjy/ad;->e:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/moat/analytics/mobile/tjy/ad;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/ad;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/tjy/ad;->g:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/ad;->c:Lcom/moat/analytics/mobile/tjy/bh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/ad;->c:Lcom/moat/analytics/mobile/tjy/bh;

    invoke-interface {v0, p1}, Lcom/moat/analytics/mobile/tjy/bh;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/tjy/ad;->g:Ljava/lang/ref/WeakReference;

    new-instance v1, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/ad;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/tjy/ad;->h:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/ad;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_1
    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/ad;->h:Landroid/webkit/WebView;

    new-instance v1, Lcom/moat/analytics/mobile/tjy/ae;

    invoke-direct {v1, p0}, Lcom/moat/analytics/mobile/tjy/ae;-><init>(Lcom/moat/analytics/mobile/tjy/ad;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v1, "<html><head></head><body><div id=\"%s\" style=\"width: %dpx; height: %dpx;\"></div><script>(function initMoatTracking(apiname, pcode, ids, duration) {var events = [];window[pcode + \'_moatElToTrack\'] = document.getElementById(\'%s\');var moatapi = {\'dropTime\':%d,\'adData\': {\'ids\': ids, \'duration\': duration, \'url\': \'n/a\'},\'dispatchEvent\': function(ev) {if (this.sendEvent) {if (events) { events.push(ev); ev = events; events = false; }this.sendEvent(ev);} else {events.push(ev);}},\'dispatchMany\': function(evs){for (var i=0, l=evs.length; i<l; i++) {this.dispatchEvent(evs[i]);}}};Object.defineProperty(window, apiname, {\'value\': moatapi});var s = document.createElement(\'script\');s.src = \'https://z.moatads.com/\' + pcode + \'/moatvideo.js?\' + apiname + \'#\' + apiname;document.body.appendChild(s);})(\'%s\', \'%s\', %s, %s);</script></body></html>"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "mianahwvc"

    aput-object v3, v2, v4

    aput-object p3, v2, v5

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    const-string v4, "mianahwvc"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/moat/analytics/mobile/tjy/ad;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/moat/analytics/mobile/tjy/ad;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/16 v0, 0x8

    aput-object p5, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/tjy/ad;->h:Landroid/webkit/WebView;

    const-string v2, "text/html"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/ad;->h:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 5

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/moat/analytics/mobile/tjy/ad;->i:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/moat/analytics/mobile/tjy/ad;->h:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    const-string v1, "javascript:%s.dispatchEvent(%s);"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/moat/analytics/mobile/tjy/ad;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/tjy/ad;->h:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/moat/analytics/mobile/tjy/ad;->k:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/tjy/ad;->j:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/ad;->c:Lcom/moat/analytics/mobile/tjy/bh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/ad;->c:Lcom/moat/analytics/mobile/tjy/bh;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/tjy/bh;->d()V

    iput-object v2, p0, Lcom/moat/analytics/mobile/tjy/ad;->c:Lcom/moat/analytics/mobile/tjy/bh;

    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/ad;->h:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/ad;->h:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/ad;->h:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v2, p0, Lcom/moat/analytics/mobile/tjy/ad;->h:Landroid/webkit/WebView;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/tjy/ad;->j:Z

    :cond_2
    return-void
.end method
