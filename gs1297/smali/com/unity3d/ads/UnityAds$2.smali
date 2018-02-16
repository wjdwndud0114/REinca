.class final Lcom/unity3d/ads/UnityAds$2;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/UnityAds;->handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$error:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field final synthetic val$errorMessage:Ljava/lang/String;

.field final synthetic val$listener:Lcom/unity3d/ads/IUnityAdsListener;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/IUnityAdsListener;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/unity3d/ads/UnityAds$2;->val$listener:Lcom/unity3d/ads/IUnityAdsListener;

    iput-object p2, p0, Lcom/unity3d/ads/UnityAds$2;->val$error:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    iput-object p3, p0, Lcom/unity3d/ads/UnityAds$2;->val$errorMessage:Ljava/lang/String;

    iput-object p4, p0, Lcom/unity3d/ads/UnityAds$2;->val$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/unity3d/ads/UnityAds$2;->val$listener:Lcom/unity3d/ads/IUnityAdsListener;

    iget-object v1, p0, Lcom/unity3d/ads/UnityAds$2;->val$error:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    iget-object v2, p0, Lcom/unity3d/ads/UnityAds$2;->val$errorMessage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/unity3d/ads/UnityAds$2;->val$listener:Lcom/unity3d/ads/IUnityAdsListener;

    iget-object v1, p0, Lcom/unity3d/ads/UnityAds$2;->val$placementId:Ljava/lang/String;

    sget-object v2, Lcom/unity3d/ads/UnityAds$FinishState;->ERROR:Lcom/unity3d/ads/UnityAds$FinishState;

    invoke-interface {v0, v1, v2}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsFinish(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$FinishState;)V

    .line 349
    return-void
.end method
