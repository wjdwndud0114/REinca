.class Lcom/moat/analytics/mobile/tjy/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/tjy/NativeDisplayTracker;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Lcom/moat/analytics/mobile/tjy/bh;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/moat/analytics/mobile/tjy/ap;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Lcom/moat/analytics/mobile/tjy/a;Lcom/moat/analytics/mobile/tjy/ap;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p4}, Lcom/moat/analytics/mobile/tjy/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MoatNativeDispTracker"

    const-string v1, "Initializing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p2, p0, Lcom/moat/analytics/mobile/tjy/af;->c:Ljava/lang/String;

    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/tjy/af;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/af;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_2
    iput-object p4, p0, Lcom/moat/analytics/mobile/tjy/af;->d:Lcom/moat/analytics/mobile/tjy/ap;

    new-instance v0, Lcom/moat/analytics/mobile/tjy/bi;

    iget-object v2, p0, Lcom/moat/analytics/mobile/tjy/af;->a:Landroid/webkit/WebView;

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/moat/analytics/mobile/tjy/bi;-><init>(Landroid/view/View;Landroid/webkit/WebView;ZLcom/moat/analytics/mobile/tjy/a;Lcom/moat/analytics/mobile/tjy/ap;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/tjy/af;->b:Lcom/moat/analytics/mobile/tjy/bh;

    iput-boolean v6, p0, Lcom/moat/analytics/mobile/tjy/af;->e:Z

    return-void
.end method

.method private static a(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<!DOCTYPE html>\n<html>\n<head lang=\"en\">\n    <meta charset=\"UTF-8\">\n    <title></title>\n</head>\n<body style=\"margin:0;padding:0;\">\n<div id=\"mianahwvc\" style=\"width:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "px;height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "px;\">\n    <script src=\"https://z.moatads.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/moatad.js#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" type=\"text/javascript\"></script>\n</div>\n</body>\n</html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x8

    const/4 v0, 0x0

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "moatClientLevel"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v0, v5, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "moatClientSlicer"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, "&"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/tjy/af;->e:Z

    if-nez v0, :cond_0

    const-string v0, "Shutting down."

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/tjy/af;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/af;->b:Lcom/moat/analytics/mobile/tjy/bh;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/tjy/bh;->d()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/af;->a:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/af;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v2, p0, Lcom/moat/analytics/mobile/tjy/af;->a:Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/moat/analytics/mobile/tjy/af;->b:Lcom/moat/analytics/mobile/tjy/bh;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/tjy/af;->e:Z

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/moat/analytics/mobile/tjy/af;->d:Lcom/moat/analytics/mobile/tjy/ap;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/tjy/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MoatNativeDispTracker"

    const-string v1, "id = %s, message = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public stopTracking()V
    .locals 1

    const-string v0, "Called stopTracking."

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/tjy/af;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/tjy/af;->a()V

    return-void
.end method

.method public track(Ljava/util/Map;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "adIdMap is null or empty. Shutting down."

    invoke-direct {p0, v1}, Lcom/moat/analytics/mobile/tjy/af;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/tjy/af;->a()V

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/moat/analytics/mobile/tjy/af;->b:Lcom/moat/analytics/mobile/tjy/bh;

    invoke-interface {v1}, Lcom/moat/analytics/mobile/tjy/bh;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/moat/analytics/mobile/tjy/af;->b:Lcom/moat/analytics/mobile/tjy/bh;

    invoke-interface {v1}, Lcom/moat/analytics/mobile/tjy/bh;->e()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {p1}, Lcom/moat/analytics/mobile/tjy/af;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Parsed ad ids = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/moat/analytics/mobile/tjy/af;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/moat/analytics/mobile/tjy/af;->c:Ljava/lang/String;

    invoke-static {v2, v1, v4, v3}, Lcom/moat/analytics/mobile/tjy/af;->a(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/moat/analytics/mobile/tjy/af;->a:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual {v2, v1, v3, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "Attempt to start tracking ad was "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    const-string v1, ""

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "successful."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/moat/analytics/mobile/tjy/af;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/moat/analytics/mobile/tjy/base/exception/a;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_3
    const-string v1, "un"

    goto :goto_2
.end method
