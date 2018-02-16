.class Lcom/google/unity/ads/Banner$3;
.super Lcom/google/android/gms/ads/AdListener;
.source "Banner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/Banner;->createAdView(Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/unity/ads/Banner;


# direct methods
.method constructor <init>(Lcom/google/unity/ads/Banner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/unity/ads/Banner;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/unity/ads/Banner$3;->this$0:Lcom/google/unity/ads/Banner;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/unity/ads/Banner$3;->this$0:Lcom/google/unity/ads/Banner;

    # getter for: Lcom/google/unity/ads/Banner;->mUnityListener:Lcom/google/unity/ads/UnityAdListener;
    invoke-static {v0}, Lcom/google/unity/ads/Banner;->access$500(Lcom/google/unity/ads/Banner;)Lcom/google/unity/ads/UnityAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/unity/ads/Banner$3;->this$0:Lcom/google/unity/ads/Banner;

    # getter for: Lcom/google/unity/ads/Banner;->mUnityListener:Lcom/google/unity/ads/UnityAdListener;
    invoke-static {v0}, Lcom/google/unity/ads/Banner;->access$500(Lcom/google/unity/ads/Banner;)Lcom/google/unity/ads/UnityAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/UnityAdListener;->onAdClosed()V

    .line 174
    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/unity/ads/Banner$3;->this$0:Lcom/google/unity/ads/Banner;

    # getter for: Lcom/google/unity/ads/Banner;->mUnityListener:Lcom/google/unity/ads/UnityAdListener;
    invoke-static {v0}, Lcom/google/unity/ads/Banner;->access$500(Lcom/google/unity/ads/Banner;)Lcom/google/unity/ads/UnityAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/unity/ads/Banner$3;->this$0:Lcom/google/unity/ads/Banner;

    # getter for: Lcom/google/unity/ads/Banner;->mUnityListener:Lcom/google/unity/ads/UnityAdListener;
    invoke-static {v0}, Lcom/google/unity/ads/Banner;->access$500(Lcom/google/unity/ads/Banner;)Lcom/google/unity/ads/UnityAdListener;

    move-result-object v0

    invoke-static {p1}, Lcom/google/unity/ads/PluginUtils;->getErrorReason(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/unity/ads/UnityAdListener;->onAdFailedToLoad(Ljava/lang/String;)V

    .line 160
    :cond_0
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/unity/ads/Banner$3;->this$0:Lcom/google/unity/ads/Banner;

    # getter for: Lcom/google/unity/ads/Banner;->mUnityListener:Lcom/google/unity/ads/UnityAdListener;
    invoke-static {v0}, Lcom/google/unity/ads/Banner;->access$500(Lcom/google/unity/ads/Banner;)Lcom/google/unity/ads/UnityAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/google/unity/ads/Banner$3;->this$0:Lcom/google/unity/ads/Banner;

    # getter for: Lcom/google/unity/ads/Banner;->mUnityListener:Lcom/google/unity/ads/UnityAdListener;
    invoke-static {v0}, Lcom/google/unity/ads/Banner;->access$500(Lcom/google/unity/ads/Banner;)Lcom/google/unity/ads/UnityAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/UnityAdListener;->onAdLeftApplication()V

    .line 181
    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/unity/ads/Banner$3;->this$0:Lcom/google/unity/ads/Banner;

    # getter for: Lcom/google/unity/ads/Banner;->mUnityListener:Lcom/google/unity/ads/UnityAdListener;
    invoke-static {v0}, Lcom/google/unity/ads/Banner;->access$500(Lcom/google/unity/ads/Banner;)Lcom/google/unity/ads/UnityAdListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/google/unity/ads/Banner$3;->this$0:Lcom/google/unity/ads/Banner;

    # getter for: Lcom/google/unity/ads/Banner;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/google/unity/ads/Banner;->access$600(Lcom/google/unity/ads/Banner;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/unity/ads/Banner$3;->this$0:Lcom/google/unity/ads/Banner;

    # getter for: Lcom/google/unity/ads/Banner;->mHidden:Z
    invoke-static {v0}, Lcom/google/unity/ads/Banner;->access$400(Lcom/google/unity/ads/Banner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/unity/ads/Banner$3;->this$0:Lcom/google/unity/ads/Banner;

    # invokes: Lcom/google/unity/ads/Banner;->showPopUpWindow()V
    invoke-static {v0}, Lcom/google/unity/ads/Banner;->access$700(Lcom/google/unity/ads/Banner;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/google/unity/ads/Banner$3;->this$0:Lcom/google/unity/ads/Banner;

    # getter for: Lcom/google/unity/ads/Banner;->mUnityListener:Lcom/google/unity/ads/UnityAdListener;
    invoke-static {v0}, Lcom/google/unity/ads/Banner;->access$500(Lcom/google/unity/ads/Banner;)Lcom/google/unity/ads/UnityAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/UnityAdListener;->onAdLoaded()V

    .line 153
    :cond_1
    return-void
.end method

.method public onAdOpened()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/unity/ads/Banner$3;->this$0:Lcom/google/unity/ads/Banner;

    # getter for: Lcom/google/unity/ads/Banner;->mUnityListener:Lcom/google/unity/ads/UnityAdListener;
    invoke-static {v0}, Lcom/google/unity/ads/Banner;->access$500(Lcom/google/unity/ads/Banner;)Lcom/google/unity/ads/UnityAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/google/unity/ads/Banner$3;->this$0:Lcom/google/unity/ads/Banner;

    # getter for: Lcom/google/unity/ads/Banner;->mUnityListener:Lcom/google/unity/ads/UnityAdListener;
    invoke-static {v0}, Lcom/google/unity/ads/Banner;->access$500(Lcom/google/unity/ads/Banner;)Lcom/google/unity/ads/UnityAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/UnityAdListener;->onAdOpened()V

    .line 167
    :cond_0
    return-void
.end method
