.class final Lcom/unity3d/ads/api/Listener$1;
.super Ljava/lang/Object;
.source "Listener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/api/Listener;->sendReadyEvent(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
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
    .line 12
    iput-object p1, p0, Lcom/unity3d/ads/api/Listener$1;->val$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 15
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/api/Listener$1;->val$placementId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsReady(Ljava/lang/String;)V

    .line 18
    :cond_0
    return-void
.end method
