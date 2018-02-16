.class final Lcom/unity3d/ads/api/AdUnit$5;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/api/AdUnit;->setViewFrame(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$height:Ljava/lang/Integer;

.field final synthetic val$view:Ljava/lang/String;

.field final synthetic val$width:Ljava/lang/Integer;

.field final synthetic val$x:Ljava/lang/Integer;

.field final synthetic val$y:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/unity3d/ads/api/AdUnit$5;->val$view:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/ads/api/AdUnit$5;->val$x:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/unity3d/ads/api/AdUnit$5;->val$y:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/unity3d/ads/api/AdUnit$5;->val$width:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/unity3d/ads/api/AdUnit$5;->val$height:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 263
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    invoke-static {}, Lcom/unity3d/ads/api/AdUnit;->getAdUnitActivity()Lcom/unity3d/ads/adunit/AdUnitActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/api/AdUnit$5;->val$view:Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/ads/api/AdUnit$5;->val$x:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/unity3d/ads/api/AdUnit$5;->val$y:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/unity3d/ads/api/AdUnit$5;->val$width:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/unity3d/ads/api/AdUnit$5;->val$height:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/unity3d/ads/adunit/AdUnitActivity;->setViewFrame(Ljava/lang/String;IIII)V

    .line 266
    :cond_0
    return-void
.end method
