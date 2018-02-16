.class public Lcom/google/unity/ads/NativeExpressAd;
.super Ljava/lang/Object;
.source "NativeExpressAd.java"


# instance fields
.field private mAdView:Lcom/google/android/gms/ads/NativeExpressAdView;

.field private mHidden:Z

.field private mHorizontalOffset:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPositionCode:I

.field private mUnityListener:Lcom/google/unity/ads/UnityAdListener;

.field private mUnityPlayerActivity:Landroid/app/Activity;

.field private mVerticalOffset:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/unity/ads/UnityAdListener;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/google/unity/ads/UnityAdListener;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/google/unity/ads/NativeExpressAd;->mUnityPlayerActivity:Landroid/app/Activity;

    .line 88
    iput-object p2, p0, Lcom/google/unity/ads/NativeExpressAd;->mUnityListener:Lcom/google/unity/ads/UnityAdListener;

    .line 89
    return-void
.end method

.method static synthetic access$002(Lcom/google/unity/ads/NativeExpressAd;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/unity/ads/NativeExpressAd;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/google/unity/ads/NativeExpressAd;->mPositionCode:I

    return p1
.end method

.method static synthetic access$102(Lcom/google/unity/ads/NativeExpressAd;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/unity/ads/NativeExpressAd;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/google/unity/ads/NativeExpressAd;->mHorizontalOffset:I

    return p1
.end method

.method static synthetic access$202(Lcom/google/unity/ads/NativeExpressAd;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/unity/ads/NativeExpressAd;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/google/unity/ads/NativeExpressAd;->mVerticalOffset:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/unity/ads/NativeExpressAd;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/unity/ads/NativeExpressAd;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/unity/ads/NativeExpressAd;->mHidden:Z

    return v0
.end method

.method static synthetic access$302(Lcom/google/unity/ads/NativeExpressAd;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/unity/ads/NativeExpressAd;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/google/unity/ads/NativeExpressAd;->mHidden:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/unity/ads/NativeExpressAd;)Lcom/google/unity/ads/UnityAdListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/unity/ads/NativeExpressAd;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd;->mUnityListener:Lcom/google/unity/ads/UnityAdListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/unity/ads/NativeExpressAd;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/google/unity/ads/NativeExpressAd;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/unity/ads/NativeExpressAd;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/unity/ads/NativeExpressAd;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/unity/ads/NativeExpressAd;->showPopUpWindow()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/unity/ads/NativeExpressAd;)Lcom/google/android/gms/ads/NativeExpressAdView;
    .locals 1
    .param p0, "x0"    # Lcom/google/unity/ads/NativeExpressAd;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd;->mAdView:Lcom/google/android/gms/ads/NativeExpressAdView;

    return-object v0
.end method

.method private showPopUpWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 195
    iget v0, p0, Lcom/google/unity/ads/NativeExpressAd;->mPositionCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/google/unity/ads/NativeExpressAd;->mUnityPlayerActivity:Landroid/app/Activity;

    .line 197
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/google/unity/ads/NativeExpressAd;->mHorizontalOffset:I

    int-to-float v2, v2

    .line 198
    invoke-static {v2}, Lcom/google/unity/ads/PluginUtils;->convertDpToPixel(F)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/google/unity/ads/NativeExpressAd;->mVerticalOffset:I

    int-to-float v3, v3

    .line 199
    invoke-static {v3}, Lcom/google/unity/ads/PluginUtils;->convertDpToPixel(F)F

    move-result v3

    float-to-int v3, v3

    .line 196
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 205
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/google/unity/ads/NativeExpressAd;->mUnityPlayerActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/google/unity/ads/NativeExpressAd;->mPositionCode:I

    .line 203
    invoke-static {v2}, Lcom/google/unity/ads/PluginUtils;->getLayoutGravityForPositionCode(I)I

    move-result v2

    .line 201
    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method


# virtual methods
.method public create(Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;I)V
    .locals 2
    .param p1, "publisherId"    # Ljava/lang/String;
    .param p2, "adSize"    # Lcom/google/android/gms/ads/AdSize;
    .param p3, "positionCode"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd;->mUnityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/NativeExpressAd$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/unity/ads/NativeExpressAd$1;-><init>(Lcom/google/unity/ads/NativeExpressAd;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method public create(Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;II)V
    .locals 7
    .param p1, "publisherId"    # Ljava/lang/String;
    .param p2, "adSize"    # Lcom/google/android/gms/ads/AdSize;
    .param p3, "positionX"    # I
    .param p4, "positionY"    # I

    .prologue
    .line 122
    iget-object v6, p0, Lcom/google/unity/ads/NativeExpressAd;->mUnityPlayerActivity:Landroid/app/Activity;

    new-instance v0, Lcom/google/unity/ads/NativeExpressAd$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/unity/ads/NativeExpressAd$2;-><init>(Lcom/google/unity/ads/NativeExpressAd;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;II)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method public createNativeExpressAdView(Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;)V
    .locals 2
    .param p1, "publisherId"    # Ljava/lang/String;
    .param p2, "adSize"    # Lcom/google/android/gms/ads/AdSize;

    .prologue
    .line 136
    new-instance v0, Lcom/google/android/gms/ads/NativeExpressAdView;

    iget-object v1, p0, Lcom/google/unity/ads/NativeExpressAd;->mUnityPlayerActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/NativeExpressAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/unity/ads/NativeExpressAd;->mAdView:Lcom/google/android/gms/ads/NativeExpressAdView;

    .line 139
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd;->mAdView:Lcom/google/android/gms/ads/NativeExpressAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/NativeExpressAdView;->setBackgroundColor(I)V

    .line 140
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd;->mAdView:Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/NativeExpressAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd;->mAdView:Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/NativeExpressAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 142
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd;->mAdView:Lcom/google/android/gms/ads/NativeExpressAdView;

    new-instance v1, Lcom/google/unity/ads/NativeExpressAd$3;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/NativeExpressAd$3;-><init>(Lcom/google/unity/ads/NativeExpressAd;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/NativeExpressAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 182
    return-void
.end method

.method public createPopupWindow()V
    .locals 5

    .prologue
    .line 185
    iget-object v3, p0, Lcom/google/unity/ads/NativeExpressAd;->mAdView:Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/NativeExpressAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v3

    iget-object v4, p0, Lcom/google/unity/ads/NativeExpressAd;->mUnityPlayerActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v1

    .line 186
    .local v1, "popUpWindowWidth":I
    iget-object v3, p0, Lcom/google/unity/ads/NativeExpressAd;->mAdView:Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/NativeExpressAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v3

    iget-object v4, p0, Lcom/google/unity/ads/NativeExpressAd;->mUnityPlayerActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    .line 187
    .local v0, "popUpWindowHeight":I
    new-instance v3, Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/google/unity/ads/NativeExpressAd;->mAdView:Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-direct {v3, v4, v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lcom/google/unity/ads/NativeExpressAd;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 190
    iget-object v3, p0, Lcom/google/unity/ads/NativeExpressAd;->mUnityPlayerActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v2, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 191
    .local v2, "visibilityFlags":I
    iget-object v3, p0, Lcom/google/unity/ads/NativeExpressAd;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 192
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd;->mUnityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/NativeExpressAd$8;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/NativeExpressAd$8;-><init>(Lcom/google/unity/ads/NativeExpressAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 284
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd;->mUnityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/NativeExpressAd$7;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/NativeExpressAd$7;-><init>(Lcom/google/unity/ads/NativeExpressAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 266
    return-void
.end method

.method public loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/google/android/gms/ads/AdRequest;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd;->mUnityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/NativeExpressAd$4;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ads/NativeExpressAd$4;-><init>(Lcom/google/unity/ads/NativeExpressAd;Lcom/google/android/gms/ads/AdRequest;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 220
    return-void
.end method

.method public setAdSize(Lcom/google/android/gms/ads/AdSize;)V
    .locals 2
    .param p1, "adSize"    # Lcom/google/android/gms/ads/AdSize;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd;->mUnityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/NativeExpressAd$5;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ads/NativeExpressAd$5;-><init>(Lcom/google/unity/ads/NativeExpressAd;Lcom/google/android/gms/ads/AdSize;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 232
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd;->mUnityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/NativeExpressAd$6;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/NativeExpressAd$6;-><init>(Lcom/google/unity/ads/NativeExpressAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 250
    return-void
.end method
