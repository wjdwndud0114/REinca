.class Lcom/google/unity/ads/NativeExpressAd$3;
.super Lcom/google/android/gms/ads/AdListener;
.source "NativeExpressAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/NativeExpressAd;->createNativeExpressAdView(Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/unity/ads/NativeExpressAd;


# direct methods
.method constructor <init>(Lcom/google/unity/ads/NativeExpressAd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/unity/ads/NativeExpressAd;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/unity/ads/NativeExpressAd$3;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd$3;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    # getter for: Lcom/google/unity/ads/NativeExpressAd;->mUnityListener:Lcom/google/unity/ads/UnityAdListener;
    invoke-static {v0}, Lcom/google/unity/ads/NativeExpressAd;->access$400(Lcom/google/unity/ads/NativeExpressAd;)Lcom/google/unity/ads/UnityAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd$3;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    # getter for: Lcom/google/unity/ads/NativeExpressAd;->mUnityListener:Lcom/google/unity/ads/UnityAdListener;
    invoke-static {v0}, Lcom/google/unity/ads/NativeExpressAd;->access$400(Lcom/google/unity/ads/NativeExpressAd;)Lcom/google/unity/ads/UnityAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/UnityAdListener;->onAdClosed()V

    .line 172
    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd$3;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    # getter for: Lcom/google/unity/ads/NativeExpressAd;->mUnityListener:Lcom/google/unity/ads/UnityAdListener;
    invoke-static {v0}, Lcom/google/unity/ads/NativeExpressAd;->access$400(Lcom/google/unity/ads/NativeExpressAd;)Lcom/google/unity/ads/UnityAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd$3;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    # getter for: Lcom/google/unity/ads/NativeExpressAd;->mUnityListener:Lcom/google/unity/ads/UnityAdListener;
    invoke-static {v0}, Lcom/google/unity/ads/NativeExpressAd;->access$400(Lcom/google/unity/ads/NativeExpressAd;)Lcom/google/unity/ads/UnityAdListener;

    move-result-object v0

    invoke-static {p1}, Lcom/google/unity/ads/PluginUtils;->getErrorReason(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/unity/ads/UnityAdListener;->onAdFailedToLoad(Ljava/lang/String;)V

    .line 158
    :cond_0
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd$3;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    # getter for: Lcom/google/unity/ads/NativeExpressAd;->mUnityListener:Lcom/google/unity/ads/UnityAdListener;
    invoke-static {v0}, Lcom/google/unity/ads/NativeExpressAd;->access$400(Lcom/google/unity/ads/NativeExpressAd;)Lcom/google/unity/ads/UnityAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd$3;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    # getter for: Lcom/google/unity/ads/NativeExpressAd;->mUnityListener:Lcom/google/unity/ads/UnityAdListener;
    invoke-static {v0}, Lcom/google/unity/ads/NativeExpressAd;->access$400(Lcom/google/unity/ads/NativeExpressAd;)Lcom/google/unity/ads/UnityAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/UnityAdListener;->onAdLeftApplication()V

    .line 179
    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd$3;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    # getter for: Lcom/google/unity/ads/NativeExpressAd;->mUnityListener:Lcom/google/unity/ads/UnityAdListener;
    invoke-static {v0}, Lcom/google/unity/ads/NativeExpressAd;->access$400(Lcom/google/unity/ads/NativeExpressAd;)Lcom/google/unity/ads/UnityAdListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd$3;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    # getter for: Lcom/google/unity/ads/NativeExpressAd;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/google/unity/ads/NativeExpressAd;->access$500(Lcom/google/unity/ads/NativeExpressAd;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd$3;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    # getter for: Lcom/google/unity/ads/NativeExpressAd;->mHidden:Z
    invoke-static {v0}, Lcom/google/unity/ads/NativeExpressAd;->access$300(Lcom/google/unity/ads/NativeExpressAd;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd$3;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    # invokes: Lcom/google/unity/ads/NativeExpressAd;->showPopUpWindow()V
    invoke-static {v0}, Lcom/google/unity/ads/NativeExpressAd;->access$600(Lcom/google/unity/ads/NativeExpressAd;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd$3;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    # getter for: Lcom/google/unity/ads/NativeExpressAd;->mUnityListener:Lcom/google/unity/ads/UnityAdListener;
    invoke-static {v0}, Lcom/google/unity/ads/NativeExpressAd;->access$400(Lcom/google/unity/ads/NativeExpressAd;)Lcom/google/unity/ads/UnityAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/UnityAdListener;->onAdLoaded()V

    .line 151
    :cond_1
    return-void
.end method

.method public onAdOpened()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd$3;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    # getter for: Lcom/google/unity/ads/NativeExpressAd;->mUnityListener:Lcom/google/unity/ads/UnityAdListener;
    invoke-static {v0}, Lcom/google/unity/ads/NativeExpressAd;->access$400(Lcom/google/unity/ads/NativeExpressAd;)Lcom/google/unity/ads/UnityAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd$3;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    # getter for: Lcom/google/unity/ads/NativeExpressAd;->mUnityListener:Lcom/google/unity/ads/UnityAdListener;
    invoke-static {v0}, Lcom/google/unity/ads/NativeExpressAd;->access$400(Lcom/google/unity/ads/NativeExpressAd;)Lcom/google/unity/ads/UnityAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/UnityAdListener;->onAdOpened()V

    .line 165
    :cond_0
    return-void
.end method
