.class public Lcom/google/unity/ads/Banner;
.super Ljava/lang/Object;
.source "Banner.java"


# instance fields
.field private mAdView:Lcom/google/android/gms/ads/AdView;

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
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    .line 91
    iput-object p2, p0, Lcom/google/unity/ads/Banner;->mUnityListener:Lcom/google/unity/ads/UnityAdListener;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/google/unity/ads/Banner;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/unity/ads/Banner;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/unity/ads/Banner;->createPopupWindow()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/unity/ads/Banner;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/unity/ads/Banner;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/google/unity/ads/Banner;->mHorizontalOffset:I

    return p1
.end method

.method static synthetic access$202(Lcom/google/unity/ads/Banner;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/unity/ads/Banner;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/google/unity/ads/Banner;->mVerticalOffset:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/unity/ads/Banner;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/unity/ads/Banner;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/google/unity/ads/Banner;->mPositionCode:I

    return p1
.end method

.method static synthetic access$400(Lcom/google/unity/ads/Banner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/unity/ads/Banner;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/unity/ads/Banner;->mHidden:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/unity/ads/Banner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/unity/ads/Banner;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/google/unity/ads/Banner;->mHidden:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/unity/ads/Banner;)Lcom/google/unity/ads/UnityAdListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/unity/ads/Banner;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mUnityListener:Lcom/google/unity/ads/UnityAdListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/unity/ads/Banner;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/google/unity/ads/Banner;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/unity/ads/Banner;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/unity/ads/Banner;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/unity/ads/Banner;->showPopUpWindow()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/unity/ads/Banner;)Lcom/google/android/gms/ads/AdView;
    .locals 1
    .param p0, "x0"    # Lcom/google/unity/ads/Banner;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mAdView:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method private createPopupWindow()V
    .locals 5

    .prologue
    .line 188
    iget-object v3, p0, Lcom/google/unity/ads/Banner;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, -0x1

    .line 191
    .local v1, "popUpWindowWidth":I
    :goto_0
    iget-object v3, p0, Lcom/google/unity/ads/Banner;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v3

    iget-object v4, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    .line 192
    .local v0, "popUpWindowHeight":I
    new-instance v3, Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/google/unity/ads/Banner;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-direct {v3, v4, v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lcom/google/unity/ads/Banner;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 195
    iget-object v3, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v2, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 196
    .local v2, "visibilityFlags":I
    iget-object v3, p0, Lcom/google/unity/ads/Banner;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 197
    return-void

    .line 188
    .end local v0    # "popUpWindowHeight":I
    .end local v1    # "popUpWindowWidth":I
    .end local v2    # "visibilityFlags":I
    :cond_0
    iget-object v3, p0, Lcom/google/unity/ads/Banner;->mAdView:Lcom/google/android/gms/ads/AdView;

    .line 190
    invoke-virtual {v3}, Lcom/google/android/gms/ads/AdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v3

    iget-object v4, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v1

    goto :goto_0
.end method

.method private showPopUpWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 200
    iget v0, p0, Lcom/google/unity/ads/Banner;->mPositionCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    .line 202
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/google/unity/ads/Banner;->mHorizontalOffset:I

    int-to-float v2, v2

    .line 203
    invoke-static {v2}, Lcom/google/unity/ads/PluginUtils;->convertDpToPixel(F)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/google/unity/ads/Banner;->mVerticalOffset:I

    int-to-float v3, v3

    .line 204
    invoke-static {v3}, Lcom/google/unity/ads/PluginUtils;->convertDpToPixel(F)F

    move-result v3

    float-to-int v3, v3

    .line 201
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 210
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/google/unity/ads/Banner;->mPositionCode:I

    .line 208
    invoke-static {v2}, Lcom/google/unity/ads/PluginUtils;->getLayoutGravityForPositionCode(I)I

    move-result v2

    .line 206
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
    .line 102
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/Banner$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/unity/ads/Banner$1;-><init>(Lcom/google/unity/ads/Banner;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public create(Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;II)V
    .locals 7
    .param p1, "publisherId"    # Ljava/lang/String;
    .param p2, "adSize"    # Lcom/google/android/gms/ads/AdSize;
    .param p3, "positionX"    # I
    .param p4, "positionY"    # I

    .prologue
    .line 125
    iget-object v6, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    new-instance v0, Lcom/google/unity/ads/Banner$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/unity/ads/Banner$2;-><init>(Lcom/google/unity/ads/Banner;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;II)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method public createAdView(Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;)V
    .locals 2
    .param p1, "publisherId"    # Ljava/lang/String;
    .param p2, "adSize"    # Lcom/google/android/gms/ads/AdSize;

    .prologue
    .line 139
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/unity/ads/Banner;->mAdView:Lcom/google/android/gms/ads/AdView;

    .line 141
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mAdView:Lcom/google/android/gms/ads/AdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setBackgroundColor(I)V

    .line 142
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 144
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mAdView:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/unity/ads/Banner$3;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/Banner$3;-><init>(Lcom/google/unity/ads/Banner;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 183
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/Banner$7;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/Banner$7;-><init>(Lcom/google/unity/ads/Banner;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 277
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/Banner$6;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/Banner$6;-><init>(Lcom/google/unity/ads/Banner;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 259
    return-void
.end method

.method public loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/google/android/gms/ads/AdRequest;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/Banner$4;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ads/Banner$4;-><init>(Lcom/google/unity/ads/Banner;Lcom/google/android/gms/ads/AdRequest;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 225
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->mUnityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/Banner$5;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/Banner$5;-><init>(Lcom/google/unity/ads/Banner;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 243
    return-void
.end method
