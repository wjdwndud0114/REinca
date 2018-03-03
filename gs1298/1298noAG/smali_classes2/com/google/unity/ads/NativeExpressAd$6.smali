.class Lcom/google/unity/ads/NativeExpressAd$6;
.super Ljava/lang/Object;
.source "NativeExpressAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/NativeExpressAd;->show()V
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
    .line 238
    iput-object p1, p0, Lcom/google/unity/ads/NativeExpressAd$6;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 241
    const-string v0, "AdsUnity"

    const-string v1, "Calling show() on NativeExpressAdView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd$6;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    # setter for: Lcom/google/unity/ads/NativeExpressAd;->mHidden:Z
    invoke-static {v0, v2}, Lcom/google/unity/ads/NativeExpressAd;->access$302(Lcom/google/unity/ads/NativeExpressAd;Z)Z

    .line 243
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd$6;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    # getter for: Lcom/google/unity/ads/NativeExpressAd;->mAdView:Lcom/google/android/gms/ads/NativeExpressAdView;
    invoke-static {v0}, Lcom/google/unity/ads/NativeExpressAd;->access$700(Lcom/google/unity/ads/NativeExpressAd;)Lcom/google/android/gms/ads/NativeExpressAdView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/NativeExpressAdView;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd$6;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    # getter for: Lcom/google/unity/ads/NativeExpressAd;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/google/unity/ads/NativeExpressAd;->access$500(Lcom/google/unity/ads/NativeExpressAd;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd$6;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    # invokes: Lcom/google/unity/ads/NativeExpressAd;->showPopUpWindow()V
    invoke-static {v0}, Lcom/google/unity/ads/NativeExpressAd;->access$600(Lcom/google/unity/ads/NativeExpressAd;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd$6;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    # getter for: Lcom/google/unity/ads/NativeExpressAd;->mAdView:Lcom/google/android/gms/ads/NativeExpressAdView;
    invoke-static {v0}, Lcom/google/unity/ads/NativeExpressAd;->access$700(Lcom/google/unity/ads/NativeExpressAd;)Lcom/google/android/gms/ads/NativeExpressAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/NativeExpressAdView;->resume()V

    .line 248
    return-void
.end method
