.class final Lcom/unity3d/ads/api/Listener$2;
.super Ljava/lang/Object;
.source "Listener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/api/Listener;->sendStartEvent(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/unity3d/ads/api/Listener$2;->val$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/api/Listener$2;->val$placementId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsStart(Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method
