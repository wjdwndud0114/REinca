.class Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$2;
.super Ljava/lang/Object;
.source "InitializeThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;->execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;

.field final synthetic val$listener:Lcom/unity3d/ads/IUnityAdsListener;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;Lcom/unity3d/ads/IUnityAdsListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$2;->this$0:Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;

    iput-object p2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$2;->val$listener:Lcom/unity3d/ads/IUnityAdsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$2;->val$listener:Lcom/unity3d/ads/IUnityAdsListener;

    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsError;->AD_BLOCKER_DETECTED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v2, "Unity Ads config server resolves to loopback address (due to ad blocker?)"

    invoke-interface {v0, v1, v2}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    .line 183
    return-void
.end method
