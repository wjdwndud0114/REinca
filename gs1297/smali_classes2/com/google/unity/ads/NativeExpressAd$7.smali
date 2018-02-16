.class Lcom/google/unity/ads/NativeExpressAd$7;
.super Ljava/lang/Object;
.source "NativeExpressAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/NativeExpressAd;->hide()V
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
    .line 256
    iput-object p1, p0, Lcom/google/unity/ads/NativeExpressAd$7;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 259
    const-string v0, "AdsUnity"

    const-string v1, "Calling hide() on NativeExpressAdView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd$7;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    const/4 v1, 0x1

    # setter for: Lcom/google/unity/ads/NativeExpressAd;->mHidden:Z
    invoke-static {v0, v1}, Lcom/google/unity/ads/NativeExpressAd;->access$302(Lcom/google/unity/ads/NativeExpressAd;Z)Z

    .line 261
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd$7;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    # getter for: Lcom/google/unity/ads/NativeExpressAd;->mAdView:Lcom/google/android/gms/ads/NativeExpressAdView;
    invoke-static {v0}, Lcom/google/unity/ads/NativeExpressAd;->access$700(Lcom/google/unity/ads/NativeExpressAd;)Lcom/google/android/gms/ads/NativeExpressAdView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/NativeExpressAdView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd$7;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    # getter for: Lcom/google/unity/ads/NativeExpressAd;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/google/unity/ads/NativeExpressAd;->access$500(Lcom/google/unity/ads/NativeExpressAd;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 263
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd$7;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    # getter for: Lcom/google/unity/ads/NativeExpressAd;->mAdView:Lcom/google/android/gms/ads/NativeExpressAdView;
    invoke-static {v0}, Lcom/google/unity/ads/NativeExpressAd;->access$700(Lcom/google/unity/ads/NativeExpressAd;)Lcom/google/android/gms/ads/NativeExpressAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/NativeExpressAdView;->pause()V

    .line 264
    return-void
.end method
