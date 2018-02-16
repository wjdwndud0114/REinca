.class final Lcom/tapjoy/TJAdUnit$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnit;->load(Lcom/tapjoy/TJPlacementData;ZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/tapjoy/TJPlacementData;

.field final synthetic c:Z

.field final synthetic d:Lcom/tapjoy/TJAdUnit;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnit;Landroid/content/Context;Lcom/tapjoy/TJPlacementData;Z)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/tapjoy/TJAdUnit$2;->d:Lcom/tapjoy/TJAdUnit;

    iput-object p2, p0, Lcom/tapjoy/TJAdUnit$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJPlacementData;

    iput-boolean p4, p0, Lcom/tapjoy/TJAdUnit$2;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 187
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->d:Lcom/tapjoy/TJAdUnit;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit$2;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tapjoy/TJAdUnit;->a(Lcom/tapjoy/TJAdUnit;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 190
    :cond_0
    const-string v0, "TJAdUnit"

    const-string v1, "Loading ad unit content"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->d:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0, v6}, Lcom/tapjoy/TJAdUnit;->a(Lcom/tapjoy/TJAdUnit;Z)Z

    .line 193
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getRedirectURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/ct;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->isPreloadDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->d:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->d(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/mraid/view/MraidView;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacementData;->getRedirectURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/tapjoy/mraid/view/MraidView;->postUrl(Ljava/lang/String;[B)V

    .line 209
    :goto_1
    iget-object v1, p0, Lcom/tapjoy/TJAdUnit$2;->d:Lcom/tapjoy/TJAdUnit;

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->d:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->e(Lcom/tapjoy/TJAdUnit;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit$2;->c:Z

    if-eqz v0, :cond_4

    move v0, v6

    :goto_2
    invoke-static {v1, v0}, Lcom/tapjoy/TJAdUnit;->b(Lcom/tapjoy/TJAdUnit;Z)Z

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->d:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->d(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/mraid/view/MraidView;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacementData;->getRedirectURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getBaseURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getHttpResponse()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 203
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->d:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->d(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/mraid/view/MraidView;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacementData;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TJAdUnit$2;->b:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getHttpResponse()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lcom/tapjoy/mraid/view/MraidView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 205
    :cond_3
    const-string v0, "TJAdUnit"

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v3, "Error loading ad unit content"

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 206
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$2;->d:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0, v7}, Lcom/tapjoy/TJAdUnit;->a(Lcom/tapjoy/TJAdUnit;Z)Z

    goto :goto_1

    :cond_4
    move v0, v7

    .line 209
    goto :goto_2
.end method
