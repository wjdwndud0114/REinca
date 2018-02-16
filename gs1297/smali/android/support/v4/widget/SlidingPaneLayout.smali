.class public Landroid/support/v4/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;,
        Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;,
        Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;,
        Landroid/support/v4/widget/SlidingPaneLayout$SavedState;,
        Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;,
        Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;,
        Landroid/support/v4/widget/SlidingPaneLayout$SimplePanelSlideListener;,
        Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_FADE_COLOR:I = -0x33333334

.field private static final DEFAULT_OVERHANG_SIZE:I = 0x20

.field static final IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final TAG:Ljava/lang/String; = "SlidingPaneLayout"


# instance fields
.field private mCanSlide:Z

.field private mCoveredFadeColor:I

.field private final mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private mFirstLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsUnableToDrag:Z

.field private final mOverhangSize:I

.field private mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

.field private mParallaxBy:I

.field private mParallaxOffset:F

.field private final mPostedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPreservedOpenState:Z

.field private mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

.field private mSlideOffset:F

.field private mSlideRange:I

.field private mSlideableView:Landroid/view/View;

.field private mSliderFadeColor:I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 203
    .local v0, "deviceVersion":I
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 204
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;

    invoke-direct {v1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJBMR1;-><init>()V

    sput-object v1, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    .line 210
    :goto_0
    return-void

    .line 205
    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 206
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;

    invoke-direct {v1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;-><init>()V

    sput-object v1, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    goto :goto_0

    .line 208
    :cond_1
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;

    invoke-direct {v1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;-><init>()V

    sput-object v1, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 255
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 259
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 262
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    const v2, -0x33333334

    iput v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    .line 192
    iput-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 194
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 265
    .local v0, "density":F
    const/high16 v2, 0x42000000    # 32.0f

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    .line 267
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 269
    .local v1, "viewConfig":Landroid/view/ViewConfiguration;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->setWillNotDraw(Z)V

    .line 271
    new-instance v2, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;

    invoke-direct {v2, p0}, Landroid/support/v4/widget/SlidingPaneLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;)V

    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 272
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 274
    new-instance v2, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/support/v4/widget/SlidingPaneLayout$DragHelperCallback;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/support/v4/widget/SlidingPaneLayout$1;)V

    invoke-static {p0, v4, v2}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 275
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 276
    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/widget/SlidingPaneLayout;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;

    .prologue
    .line 93
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/support/v4/widget/SlidingPaneLayout;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/widget/SlidingPaneLayout;)F
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;

    .prologue
    .line 93
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    return v0
.end method

.method static synthetic access$400(Landroid/support/v4/widget/SlidingPaneLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Landroid/support/v4/widget/SlidingPaneLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    return p1
.end method

.method static synthetic access$600(Landroid/support/v4/widget/SlidingPaneLayout;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;
    .param p1, "x1"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->onPanelDragged(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/support/v4/widget/SlidingPaneLayout;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/support/v4/widget/SlidingPaneLayout;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/v4/widget/SlidingPaneLayout;

    .prologue
    .line 93
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    return v0
.end method

.method private closePane(Landroid/view/View;I)Z
    .locals 2
    .param p1, "pane"    # Landroid/view/View;
    .param p2, "initialVelocity"    # I

    .prologue
    const/4 v0, 0x0

    .line 865
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 866
    :cond_0
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 867
    const/4 v0, 0x1

    .line 869
    :cond_1
    return v0
.end method

.method private dimChildView(Landroid/view/View;FI)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "mag"    # F
    .param p3, "fadeColor"    # I

    .prologue
    const/4 v8, 0x2

    .line 974
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 976
    .local v4, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-lez v5, :cond_3

    if-eqz p3, :cond_3

    .line 977
    const/high16 v5, -0x1000000

    and-int/2addr v5, p3

    ushr-int/lit8 v0, v5, 0x18

    .line 978
    .local v0, "baseAlpha":I
    int-to-float v5, v0

    mul-float/2addr v5, p2

    float-to-int v3, v5

    .line 979
    .local v3, "imag":I
    shl-int/lit8 v5, v3, 0x18

    const v6, 0xffffff

    and-int/2addr v6, p3

    or-int v1, v5, v6

    .line 980
    .local v1, "color":I
    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-nez v5, :cond_0

    .line 981
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    .line 983
    :cond_0
    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v1, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 984
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    move-result v5

    if-eq v5, v8, :cond_1

    .line 985
    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-static {p1, v8, v5}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 987
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    .line 996
    .end local v0    # "baseAlpha":I
    .end local v1    # "color":I
    .end local v3    # "imag":I
    :cond_2
    :goto_0
    return-void

    .line 988
    :cond_3
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I

    move-result v5

    if-eqz v5, :cond_2

    .line 989
    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-eqz v5, :cond_4

    .line 990
    iget-object v5, v4, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 992
    :cond_4
    new-instance v2, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;

    invoke-direct {v2, p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 993
    .local v2, "dlr":Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;
    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 994
    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private invalidateChildRegion(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1044
    sget-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->IMPL:Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImpl;->invalidateChildRegion(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 1045
    return-void
.end method

.method private isLayoutRtlSupport()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1658
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onPanelDragged(I)V
    .locals 10
    .param p1, "newLeft"    # I

    .prologue
    .line 946
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-nez v7, :cond_0

    .line 948
    const/4 v7, 0x0

    iput v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 971
    :goto_0
    return-void

    .line 951
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    .line 952
    .local v1, "isLayoutRtl":Z
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 954
    .local v2, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 955
    .local v0, "childWidth":I
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v7

    sub-int/2addr v7, p1

    sub-int v4, v7, v0

    .line 957
    .local v4, "newStart":I
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v5

    .line 958
    .local v5, "paddingStart":I
    :goto_2
    if-eqz v1, :cond_5

    iget v3, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    .line 959
    .local v3, "lpMargin":I
    :goto_3
    add-int v6, v5, v3

    .line 961
    .local v6, "startBound":I
    sub-int v7, v4, v6

    int-to-float v7, v7

    iget v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 963
    iget v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz v7, :cond_1

    .line 964
    iget v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-direct {p0, v7}, Landroid/support/v4/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    .line 967
    :cond_1
    iget-boolean v7, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v7, :cond_2

    .line 968
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    invoke-direct {p0, v7, v8, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 970
    :cond_2
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v7}, Landroid/support/v4/widget/SlidingPaneLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    goto :goto_0

    .end local v3    # "lpMargin":I
    .end local v4    # "newStart":I
    .end local v5    # "paddingStart":I
    .end local v6    # "startBound":I
    :cond_3
    move v4, p1

    .line 955
    goto :goto_1

    .line 957
    .restart local v4    # "newStart":I
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v5

    goto :goto_2

    .line 958
    .restart local v5    # "paddingStart":I
    :cond_5
    iget v3, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    goto :goto_3
.end method

.method private openPane(Landroid/view/View;I)Z
    .locals 2
    .param p1, "pane"    # Landroid/view/View;
    .param p2, "initialVelocity"    # I

    .prologue
    const/4 v0, 0x1

    .line 873
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, p2}, Landroid/support/v4/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 874
    :cond_0
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 877
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parallaxOtherViews(F)V
    .locals 12
    .param p1, "slideOffset"    # F

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1195
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v4

    .line 1196
    .local v4, "isLayoutRtl":Z
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1197
    .local v7, "slideLp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    iget-boolean v9, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v9, :cond_2

    if-eqz v4, :cond_1

    iget v9, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    :goto_0
    if-gtz v9, :cond_2

    const/4 v1, 0x1

    .line 1199
    .local v1, "dimViews":Z
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v0

    .line 1200
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_6

    .line 1201
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1202
    .local v8, "v":Landroid/view/View;
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne v8, v9, :cond_3

    .line 1200
    :cond_0
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1197
    .end local v0    # "childCount":I
    .end local v1    # "dimViews":Z
    .end local v3    # "i":I
    .end local v8    # "v":Landroid/view/View;
    :cond_1
    iget v9, v7, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1204
    .restart local v0    # "childCount":I
    .restart local v1    # "dimViews":Z
    .restart local v3    # "i":I
    .restart local v8    # "v":Landroid/view/View;
    :cond_3
    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float v9, v11, v9

    iget v10, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v6, v9

    .line 1205
    .local v6, "oldOffset":I
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    .line 1206
    sub-float v9, v11, p1

    iget v10, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v5, v9

    .line 1207
    .local v5, "newOffset":I
    sub-int v2, v6, v5

    .line 1209
    .local v2, "dx":I
    if-eqz v4, :cond_4

    neg-int v2, v2

    .end local v2    # "dx":I
    :cond_4
    invoke-virtual {v8, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1211
    if-eqz v1, :cond_0

    .line 1212
    if-eqz v4, :cond_5

    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float/2addr v9, v11

    :goto_4
    iget v10, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    invoke-direct {p0, v8, v9, v10}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    goto :goto_3

    :cond_5
    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float v9, v11, v9

    goto :goto_4

    .line 1216
    .end local v5    # "newOffset":I
    .end local v6    # "oldOffset":I
    .end local v8    # "v":Landroid/view/View;
    :cond_6
    return-void
.end method

.method private static viewIsOpaque(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 414
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isOpaque(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 425
    :cond_0
    :goto_0
    return v1

    .line 419
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_2

    move v1, v2

    goto :goto_0

    .line 421
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 422
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 423
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    .line 425
    goto :goto_0
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 1230
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 1231
    check-cast v7, Landroid/view/ViewGroup;

    .line 1232
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 1233
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 1234
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 1236
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 1239
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1240
    .local v1, "child":Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int v0, p5, v10

    .line 1241
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    add-int v0, p4, v9

    .line 1242
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v10

    .line 1243
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    .line 1242
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/SlidingPaneLayout;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1244
    const/4 v0, 0x1

    .line 1249
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    .end local p3    # "dx":I
    :goto_1
    return v0

    .line 1236
    .restart local v1    # "child":Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v7    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "i":I
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    .restart local p3    # "dx":I
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 1249
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_3

    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .end local p3    # "dx":I
    :goto_2
    invoke-static {p1, p3}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    .restart local p3    # "dx":I
    :cond_2
    neg-int p3, p3

    goto :goto_2

    .end local p3    # "dx":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public canSlide()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 932
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1274
    instance-of v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closePane()Z
    .locals 2

    .prologue
    .line 913
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 1082
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_1

    .line 1084
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1088
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0
.end method

.method dispatchOnPanelClosed(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 352
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelClosed(Landroid/view/View;)V

    .line 355
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    .line 356
    return-void
.end method

.method dispatchOnPanelOpened(Landroid/view/View;)V
    .locals 1
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 345
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelOpened(Landroid/view/View;)V

    .line 348
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    .line 349
    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .locals 2
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 339
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-interface {v0, p1, v1}, Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    .line 342
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x1

    .line 1161
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1162
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    .line 1164
    .local v1, "isLayoutRtl":Z
    if-eqz v1, :cond_1

    .line 1165
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 1170
    .local v4, "shadowDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v8

    if-le v8, v9, :cond_2

    invoke-virtual {p0, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1171
    .local v5, "shadowView":Landroid/view/View;
    :goto_1
    if-eqz v5, :cond_0

    if-nez v4, :cond_3

    .line 1192
    :cond_0
    :goto_2
    return-void

    .line 1167
    .end local v4    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "shadowView":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    .restart local v4    # "shadowDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1170
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 1176
    .restart local v5    # "shadowView":Landroid/view/View;
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1177
    .local v7, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1179
    .local v0, "bottom":I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 1182
    .local v6, "shadowWidth":I
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1183
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1184
    .local v2, "left":I
    add-int v3, v2, v6

    .line 1190
    .local v3, "right":I
    :goto_3
    invoke-virtual {v4, v2, v7, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1191
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 1186
    .end local v2    # "left":I
    .end local v3    # "right":I
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1187
    .restart local v3    # "right":I
    sub-int v2, v3, v6

    .restart local v2    # "left":I
    goto :goto_3
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 1000
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1002
    .local v1, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->save(I)I

    move-result v3

    .line 1004
    .local v3, "save":I
    iget-boolean v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v4, :cond_0

    iget-boolean v4, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 1006
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 1007
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1008
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1012
    :goto_0
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1015
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_2

    .line 1016
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    .line 1038
    .local v2, "result":Z
    :goto_1
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1040
    return v2

    .line 1010
    .end local v2    # "result":Z
    :cond_1
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1018
    :cond_2
    iget-boolean v4, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v4, :cond_5

    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    .line 1019
    invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1020
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1022
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1023
    .local v0, "cache":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 1024
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1025
    const/4 v2, 0x0

    .restart local v2    # "result":Z
    goto :goto_1

    .line 1027
    .end local v2    # "result":Z
    :cond_4
    const-string v4, "SlidingPaneLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drawChild: child view "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returned null drawing cache"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    .restart local v2    # "result":Z
    goto :goto_1

    .line 1031
    .end local v0    # "cache":Landroid/graphics/Bitmap;
    .end local v2    # "result":Z
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1032
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1034
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    .restart local v2    # "result":Z
    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1262
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1279
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1267
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    return-object v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getCoveredFadeColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 331
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    return v0
.end method

.method public getParallaxDistance()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    return v0
.end method

.method public getSliderFadeColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 313
    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    return v0
.end method

.method isDimmed(Landroid/view/View;)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1253
    if-nez p1, :cond_1

    .line 1257
    :cond_0
    :goto_0
    return v1

    .line 1256
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1257
    .local v0, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    .line 923
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSlideable()Z
    .locals 1

    .prologue
    .line 942
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 430
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 432
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 436
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 437
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 439
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 440
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;

    .line 441
    .local v1, "dlr":Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;
    invoke-virtual {v1}, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->run()V

    .line 439
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 443
    .end local v1    # "dlr":Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 444
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 765
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 768
    .local v0, "action":I
    iget-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v9, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    .line 770
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 771
    .local v5, "secondChild":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 772
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 773
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    .line 772
    invoke-virtual {v9, v5, v10, v11}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 777
    .end local v5    # "secondChild":Landroid/view/View;
    :cond_0
    iget-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    if-eqz v9, :cond_3

    if-eqz v0, :cond_3

    .line 778
    :cond_1
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 779
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    .line 820
    :goto_1
    return v9

    .line 772
    .restart local v5    # "secondChild":Landroid/view/View;
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 782
    .end local v5    # "secondChild":Landroid/view/View;
    :cond_3
    const/4 v9, 0x3

    if-eq v0, v9, :cond_4

    const/4 v9, 0x1

    if-ne v0, v9, :cond_5

    .line 783
    :cond_4
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 784
    const/4 v9, 0x0

    goto :goto_1

    .line 787
    :cond_5
    const/4 v4, 0x0

    .line 789
    .local v4, "interceptTap":Z
    packed-switch v0, :pswitch_data_0

    .line 818
    :cond_6
    :goto_2
    :pswitch_0
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 820
    .local v3, "interceptForDrag":Z
    if-nez v3, :cond_7

    if-eqz v4, :cond_8

    :cond_7
    const/4 v9, 0x1

    goto :goto_1

    .line 791
    .end local v3    # "interceptForDrag":Z
    :pswitch_1
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 792
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 793
    .local v7, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 794
    .local v8, "y":F
    iput v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 795
    iput v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    .line 797
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v10, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v11, v7

    float-to-int v12, v8

    invoke-virtual {v9, v10, v11, v12}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 798
    invoke-virtual {p0, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 799
    const/4 v4, 0x1

    goto :goto_2

    .line 805
    .end local v7    # "x":F
    .end local v8    # "y":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 806
    .restart local v7    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 807
    .restart local v8    # "y":F
    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 808
    .local v1, "adx":F
    iget v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 809
    .local v2, "ady":F
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v6

    .line 810
    .local v6, "slop":I
    int-to-float v9, v6

    cmpl-float v9, v1, v9

    if-lez v9, :cond_6

    cmpl-float v9, v2, v1

    if-lez v9, :cond_6

    .line 811
    iget-object v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 812
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 813
    const/4 v9, 0x0

    goto :goto_1

    .line 820
    .end local v1    # "adx":F
    .end local v2    # "ady":F
    .end local v6    # "slop":I
    .end local v7    # "x":F
    .end local v8    # "y":F
    .restart local v3    # "interceptForDrag":Z
    :cond_8
    const/4 v9, 0x0

    goto :goto_1

    .line 789
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 28
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 660
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v12

    .line 661
    .local v12, "isLayoutRtl":Z
    if-eqz v12, :cond_1

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 666
    :goto_0
    sub-int v23, p4, p2

    .line 667
    .local v23, "width":I
    if-eqz v12, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v19

    .line 668
    .local v19, "paddingStart":I
    :goto_1
    if-eqz v12, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v18

    .line 669
    .local v18, "paddingEnd":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v20

    .line 671
    .local v20, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v6

    .line 672
    .local v6, "childCount":I
    move/from16 v24, v19

    .line 673
    .local v24, "xStart":I
    move/from16 v16, v24

    .line 675
    .local v16, "nextXStart":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 676
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    const/high16 v25, 0x3f800000    # 1.0f

    :goto_3
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 679
    :cond_0
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    if-ge v11, v6, :cond_b

    .line 680
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 682
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 679
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 664
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v11    # "i":I
    .end local v16    # "nextXStart":I
    .end local v18    # "paddingEnd":I
    .end local v19    # "paddingStart":I
    .end local v20    # "paddingTop":I
    .end local v23    # "width":I
    .end local v24    # "xStart":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    goto :goto_0

    .line 667
    .restart local v23    # "width":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v19

    goto :goto_1

    .line 668
    .restart local v19    # "paddingStart":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v18

    goto :goto_2

    .line 676
    .restart local v6    # "childCount":I
    .restart local v16    # "nextXStart":I
    .restart local v18    # "paddingEnd":I
    .restart local v20    # "paddingTop":I
    .restart local v24    # "xStart":I
    :cond_4
    const/16 v25, 0x0

    goto :goto_3

    .line 686
    .restart local v4    # "child":Landroid/view/View;
    .restart local v11    # "i":I
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 688
    .local v13, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 689
    .local v10, "childWidth":I
    const/16 v17, 0x0

    .line 691
    .local v17, "offset":I
    iget-boolean v0, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    move/from16 v25, v0

    if-eqz v25, :cond_8

    .line 692
    iget v0, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    iget v0, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v26, v0

    add-int v15, v25, v26

    .line 693
    .local v15, "margin":I
    sub-int v25, v23, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v16

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v25

    sub-int v25, v25, v24

    sub-int v22, v25, v15

    .line 695
    .local v22, "range":I
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    .line 696
    if-eqz v12, :cond_6

    iget v14, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    .line 697
    .local v14, "lpMargin":I
    :goto_6
    add-int v25, v24, v14

    add-int v25, v25, v22

    div-int/lit8 v26, v10, 0x2

    add-int v25, v25, v26

    sub-int v26, v23, v18

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_7

    const/16 v25, 0x1

    :goto_7
    move/from16 v0, v25

    iput-boolean v0, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 699
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v21, v0

    .line 700
    .local v21, "pos":I
    add-int v25, v21, v14

    add-int v24, v24, v25

    .line 701
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 711
    .end local v14    # "lpMargin":I
    .end local v15    # "margin":I
    .end local v21    # "pos":I
    .end local v22    # "range":I
    :goto_8
    if-eqz v12, :cond_a

    .line 712
    sub-int v25, v23, v24

    add-int v8, v25, v17

    .line 713
    .local v8, "childRight":I
    sub-int v7, v8, v10

    .line 719
    .local v7, "childLeft":I
    :goto_9
    move/from16 v9, v20

    .line 720
    .local v9, "childTop":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    add-int v5, v9, v25

    .line 721
    .local v5, "childBottom":I
    move/from16 v0, v20

    invoke-virtual {v4, v7, v0, v8, v5}, Landroid/view/View;->layout(IIII)V

    .line 723
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v25

    add-int v16, v16, v25

    goto/16 :goto_5

    .line 696
    .end local v5    # "childBottom":I
    .end local v7    # "childLeft":I
    .end local v8    # "childRight":I
    .end local v9    # "childTop":I
    .restart local v15    # "margin":I
    .restart local v22    # "range":I
    :cond_6
    iget v14, v13, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    goto :goto_6

    .line 697
    .restart local v14    # "lpMargin":I
    :cond_7
    const/16 v25, 0x0

    goto :goto_7

    .line 702
    .end local v14    # "lpMargin":I
    .end local v15    # "margin":I
    .end local v22    # "range":I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    move/from16 v25, v0

    if-eqz v25, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    move/from16 v25, v0

    if-eqz v25, :cond_9

    .line 703
    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v17, v0

    .line 704
    move/from16 v24, v16

    goto :goto_8

    .line 706
    :cond_9
    move/from16 v24, v16

    goto :goto_8

    .line 715
    :cond_a
    sub-int v7, v24, v17

    .line 716
    .restart local v7    # "childLeft":I
    add-int v8, v7, v10

    .restart local v8    # "childRight":I
    goto :goto_9

    .line 726
    .end local v4    # "child":Landroid/view/View;
    .end local v7    # "childLeft":I
    .end local v8    # "childRight":I
    .end local v10    # "childWidth":I
    .end local v13    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v17    # "offset":I
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    move/from16 v25, v0

    if-eqz v25, :cond_e

    .line 727
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    move/from16 v25, v0

    if-eqz v25, :cond_f

    .line 728
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    move/from16 v25, v0

    if-eqz v25, :cond_c

    .line 729
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    .line 731
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    move/from16 v25, v0

    if-eqz v25, :cond_d

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideOffset:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 740
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    .line 743
    :cond_e
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 744
    return-void

    .line 736
    :cond_f
    const/4 v11, 0x0

    :goto_a
    if-ge v11, v6, :cond_d

    .line 737
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 736
    add-int/lit8 v11, v11, 0x1

    goto :goto_a
.end method

.method protected onMeasure(II)V
    .locals 31
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 448
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    .line 449
    .local v25, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v27

    .line 450
    .local v27, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 451
    .local v12, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 453
    .local v13, "heightSize":I
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v25

    move/from16 v1, v29

    if-eq v0, v1, :cond_5

    .line 454
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v29

    if-eqz v29, :cond_4

    .line 459
    const/high16 v29, -0x80000000

    move/from16 v0, v25

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    .line 460
    const/high16 v25, 0x40000000    # 2.0f

    .line 482
    :cond_0
    :goto_0
    const/16 v16, 0x0

    .line 483
    .local v16, "layoutHeight":I
    const/16 v18, -0x1

    .line 484
    .local v18, "maxLayoutHeight":I
    sparse-switch v12, :sswitch_data_0

    .line 493
    :goto_1
    const/16 v23, 0x0

    .line 494
    .local v23, "weightSum":F
    const/4 v4, 0x0

    .line 495
    .local v4, "canSlide":Z
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v29

    sub-int v29, v27, v29

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v30

    sub-int v24, v29, v30

    .line 496
    .local v24, "widthAvailable":I
    move/from16 v26, v24

    .line 497
    .local v26, "widthRemaining":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v6

    .line 499
    .local v6, "childCount":I
    const/16 v29, 0x2

    move/from16 v0, v29

    if-le v6, v0, :cond_1

    .line 500
    const-string v29, "SlidingPaneLayout"

    const-string v30, "onMeasure: More than two child views are not supported."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_1
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 508
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    if-ge v15, v6, :cond_f

    .line 509
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 510
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 512
    .local v17, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    .line 513
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 508
    :cond_2
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 461
    .end local v4    # "canSlide":Z
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v15    # "i":I
    .end local v16    # "layoutHeight":I
    .end local v17    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v18    # "maxLayoutHeight":I
    .end local v23    # "weightSum":F
    .end local v24    # "widthAvailable":I
    .end local v26    # "widthRemaining":I
    :cond_3
    if-nez v25, :cond_0

    .line 462
    const/high16 v25, 0x40000000    # 2.0f

    .line 463
    const/16 v27, 0x12c

    goto :goto_0

    .line 466
    :cond_4
    new-instance v29, Ljava/lang/IllegalStateException;

    const-string v30, "Width must have an exact value or MATCH_PARENT"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 468
    :cond_5
    if-nez v12, :cond_0

    .line 469
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v29

    if-eqz v29, :cond_6

    .line 473
    if-nez v12, :cond_0

    .line 474
    const/high16 v12, -0x80000000

    .line 475
    const/16 v13, 0x12c

    goto :goto_0

    .line 478
    :cond_6
    new-instance v29, Ljava/lang/IllegalStateException;

    const-string v30, "Height must not be UNSPECIFIED"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 486
    .restart local v16    # "layoutHeight":I
    .restart local v18    # "maxLayoutHeight":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v29

    sub-int v29, v13, v29

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v30

    sub-int v18, v29, v30

    move/from16 v16, v18

    .line 487
    goto/16 :goto_1

    .line 489
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v29

    sub-int v29, v13, v29

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v30

    sub-int v18, v29, v30

    goto/16 :goto_1

    .line 517
    .restart local v4    # "canSlide":Z
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "childCount":I
    .restart local v15    # "i":I
    .restart local v17    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .restart local v23    # "weightSum":F
    .restart local v24    # "widthAvailable":I
    .restart local v26    # "widthRemaining":I
    :cond_7
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_8

    .line 518
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    add-float v23, v23, v29

    .line 522
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    if-eqz v29, :cond_2

    .line 526
    :cond_8
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v29, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v30, v0

    add-int v14, v29, v30

    .line 527
    .local v14, "horizontalMargin":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_a

    .line 528
    sub-int v29, v24, v14

    const/high16 v30, -0x80000000

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 538
    .local v10, "childWidthSpec":I
    :goto_4
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_c

    .line 539
    const/high16 v29, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 546
    .local v8, "childHeightSpec":I
    :goto_5
    invoke-virtual {v5, v10, v8}, Landroid/view/View;->measure(II)V

    .line 547
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 548
    .local v9, "childWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 550
    .local v7, "childHeight":I
    const/high16 v29, -0x80000000

    move/from16 v0, v29

    if-ne v12, v0, :cond_9

    move/from16 v0, v16

    if-le v7, v0, :cond_9

    .line 551
    move/from16 v0, v18

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 554
    :cond_9
    sub-int v26, v26, v9

    .line 555
    if-gez v26, :cond_e

    const/16 v29, 0x1

    :goto_6
    move/from16 v0, v29

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    or-int v4, v4, v29

    .line 556
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2

    .line 557
    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    goto/16 :goto_3

    .line 530
    .end local v7    # "childHeight":I
    .end local v8    # "childHeightSpec":I
    .end local v9    # "childWidth":I
    .end local v10    # "childWidthSpec":I
    :cond_a
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_b

    .line 531
    sub-int v29, v24, v14

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .restart local v10    # "childWidthSpec":I
    goto :goto_4

    .line 534
    .end local v10    # "childWidthSpec":I
    :cond_b
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .restart local v10    # "childWidthSpec":I
    goto :goto_4

    .line 540
    :cond_c
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    .line 541
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_5

    .line 543
    .end local v8    # "childHeightSpec":I
    :cond_d
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_5

    .line 555
    .restart local v7    # "childHeight":I
    .restart local v9    # "childWidth":I
    :cond_e
    const/16 v29, 0x0

    goto :goto_6

    .line 562
    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "childHeight":I
    .end local v8    # "childHeightSpec":I
    .end local v9    # "childWidth":I
    .end local v10    # "childWidthSpec":I
    .end local v14    # "horizontalMargin":I
    .end local v17    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    :cond_f
    if-nez v4, :cond_10

    const/16 v29, 0x0

    cmpl-float v29, v23, v29

    if-lez v29, :cond_1e

    .line 563
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mOverhangSize:I

    move/from16 v29, v0

    sub-int v11, v24, v29

    .line 565
    .local v11, "fixedPanelWidthLimit":I
    const/4 v15, 0x0

    :goto_7
    if-ge v15, v6, :cond_1e

    .line 566
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 568
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_12

    .line 565
    :cond_11
    :goto_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 572
    :cond_12
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 574
    .restart local v17    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_11

    .line 578
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    if-nez v29, :cond_14

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_14

    const/16 v22, 0x1

    .line 579
    .local v22, "skippedFirstPass":Z
    :goto_9
    if-eqz v22, :cond_15

    const/16 v20, 0x0

    .line 580
    .local v20, "measuredWidth":I
    :goto_a
    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    if-eq v5, v0, :cond_19

    .line 581
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    if-gez v29, :cond_11

    move/from16 v0, v20

    if-gt v0, v11, :cond_13

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_11

    .line 585
    :cond_13
    if-eqz v22, :cond_18

    .line 588
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_16

    .line 589
    const/high16 v29, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 602
    .restart local v8    # "childHeightSpec":I
    :goto_b
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v29

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 604
    .restart local v10    # "childWidthSpec":I
    invoke-virtual {v5, v10, v8}, Landroid/view/View;->measure(II)V

    goto :goto_8

    .line 578
    .end local v8    # "childHeightSpec":I
    .end local v10    # "childWidthSpec":I
    .end local v20    # "measuredWidth":I
    .end local v22    # "skippedFirstPass":Z
    :cond_14
    const/16 v22, 0x0

    goto :goto_9

    .line 579
    .restart local v22    # "skippedFirstPass":Z
    :cond_15
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    goto :goto_a

    .line 591
    .restart local v20    # "measuredWidth":I
    :cond_16
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_17

    .line 592
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_b

    .line 595
    .end local v8    # "childHeightSpec":I
    :cond_17
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_b

    .line 600
    .end local v8    # "childHeightSpec":I
    :cond_18
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v29

    const/high16 v30, 0x40000000    # 2.0f

    .line 599
    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_b

    .line 606
    .end local v8    # "childHeightSpec":I
    :cond_19
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_11

    .line 608
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    if-nez v29, :cond_1c

    .line 610
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1a

    .line 611
    const/high16 v29, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 625
    .restart local v8    # "childHeightSpec":I
    :goto_c
    if-eqz v4, :cond_1d

    .line 627
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v29, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v30, v0

    add-int v14, v29, v30

    .line 628
    .restart local v14    # "horizontalMargin":I
    sub-int v21, v24, v14

    .line 629
    .local v21, "newWidth":I
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v21

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 631
    .restart local v10    # "childWidthSpec":I
    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_11

    .line 632
    invoke-virtual {v5, v10, v8}, Landroid/view/View;->measure(II)V

    goto/16 :goto_8

    .line 613
    .end local v8    # "childHeightSpec":I
    .end local v10    # "childWidthSpec":I
    .end local v14    # "horizontalMargin":I
    .end local v21    # "newWidth":I
    :cond_1a
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1b

    .line 614
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_c

    .line 617
    .end local v8    # "childHeightSpec":I
    :cond_1b
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_c

    .line 622
    .end local v8    # "childHeightSpec":I
    :cond_1c
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v29

    const/high16 v30, 0x40000000    # 2.0f

    .line 621
    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "childHeightSpec":I
    goto :goto_c

    .line 636
    :cond_1d
    const/16 v29, 0x0

    move/from16 v0, v29

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 637
    .local v28, "widthToDistribute":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v29, v29, v30

    div-float v29, v29, v23

    move/from16 v0, v29

    float-to-int v3, v0

    .line 638
    .local v3, "addedWidth":I
    add-int v29, v20, v3

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 640
    .restart local v10    # "childWidthSpec":I
    invoke-virtual {v5, v10, v8}, Landroid/view/View;->measure(II)V

    goto/16 :goto_8

    .line 646
    .end local v3    # "addedWidth":I
    .end local v5    # "child":Landroid/view/View;
    .end local v8    # "childHeightSpec":I
    .end local v10    # "childWidthSpec":I
    .end local v11    # "fixedPanelWidthLimit":I
    .end local v17    # "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    .end local v20    # "measuredWidth":I
    .end local v22    # "skippedFirstPass":Z
    .end local v28    # "widthToDistribute":I
    :cond_1e
    move/from16 v20, v27

    .line 647
    .restart local v20    # "measuredWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v29

    add-int v29, v29, v16

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v30

    add-int v19, v29, v30

    .line 649
    .local v19, "measuredHeight":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->setMeasuredDimension(II)V

    .line 650
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v29

    if-eqz v29, :cond_1f

    if-nez v4, :cond_1f

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    .line 656
    :cond_1f
    return-void

    .line 484
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1294
    instance-of v1, p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    if-nez v1, :cond_0

    .line 1295
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1308
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1299
    check-cast v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    .line 1300
    .local v0, "ss":Landroid/support/v4/widget/SlidingPaneLayout$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1302
    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    if-eqz v1, :cond_1

    .line 1303
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane()Z

    .line 1307
    :goto_1
    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    iput-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    goto :goto_0

    .line 1305
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane()Z

    goto :goto_1
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1284
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1286
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1287
    .local v0, "ss":Landroid/support/v4/widget/SlidingPaneLayout$SavedState;
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isOpen()Z

    move-result v2

    :goto_0
    iput-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    .line 1289
    return-object v0

    .line 1287
    :cond_0
    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 748
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 750
    if-eq p1, p3, :cond_0

    .line 751
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 753
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 825
    iget-boolean v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v7, :cond_1

    .line 826
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 861
    :cond_0
    :goto_0
    return v4

    .line 829
    :cond_1
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v7, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 831
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 832
    .local v0, "action":I
    const/4 v4, 0x1

    .line 834
    .local v4, "wantTouchEvents":Z
    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 836
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 837
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 838
    .local v6, "y":F
    iput v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 839
    iput v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    goto :goto_0

    .line 844
    .end local v5    # "x":F
    .end local v6    # "y":F
    :pswitch_1
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v7}, Landroid/support/v4/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 845
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 846
    .restart local v5    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 847
    .restart local v6    # "y":F
    iget v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float v1, v5, v7

    .line 848
    .local v1, "dx":F
    iget v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float v2, v6, v7

    .line 849
    .local v2, "dy":F
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v7}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v3

    .line 850
    .local v3, "slop":I
    mul-float v7, v1, v1

    mul-float v8, v2, v2

    add-float/2addr v7, v8

    mul-int v8, v3, v3

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v9, v5

    float-to-int v10, v6

    .line 851
    invoke-virtual {v7, v8, v9, v10}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 853
    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    goto :goto_0

    .line 834
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public openPane()Z
    .locals 2

    .prologue
    .line 895
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 757
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 758
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_0

    .line 759
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    .line 761
    :cond_0
    return-void

    .line 759
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAllChildrenVisible()V
    .locals 5

    .prologue
    .line 405
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    .local v1, "childCount":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 406
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 407
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 408
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 405
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 411
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 323
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    .line 324
    return-void
.end method

.method public setPanelSlideListener(Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    .prologue
    .line 335
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mPanelSlideListener:Landroid/support/v4/widget/SlidingPaneLayout$PanelSlideListener;

    .line 336
    return-void
.end method

.method public setParallaxDistance(I)V
    .locals 0
    .param p1, "parallaxBy"    # I

    .prologue
    .line 286
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mParallaxBy:I

    .line 287
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->requestLayout()V

    .line 288
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1101
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    .line 1102
    return-void
.end method

.method public setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1111
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1112
    return-void
.end method

.method public setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1121
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 1122
    return-void
.end method

.method public setShadowResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1135
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1136
    return-void
.end method

.method public setShadowResourceLeft(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1145
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    .line 1146
    return-void
.end method

.method public setShadowResourceRight(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1155
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V

    .line 1156
    return-void
.end method

.method public setSliderFadeColor(I)V
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 305
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSliderFadeColor:I

    .line 306
    return-void
.end method

.method public smoothSlideClosed()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 903
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->closePane()Z

    .line 904
    return-void
.end method

.method public smoothSlideOpen()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 885
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->openPane()Z

    .line 886
    return-void
.end method

.method smoothSlideTo(FI)Z
    .locals 9
    .param p1, "slideOffset"    # F
    .param p2, "velocity"    # I

    .prologue
    const/4 v5, 0x0

    .line 1054
    iget-boolean v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v6, :cond_1

    .line 1077
    :cond_0
    :goto_0
    return v5

    .line 1059
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    .line 1060
    .local v1, "isLayoutRtl":Z
    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    .line 1063
    .local v2, "lp":Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;
    if-eqz v1, :cond_2

    .line 1064
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v6

    iget v7, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int v3, v6, v7

    .line 1065
    .local v3, "startBound":I
    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1066
    .local v0, "childWidth":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v3

    iget v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v8, v8

    mul-float/2addr v8, p1

    add-float/2addr v7, v8

    int-to-float v8, v0

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v4, v6

    .line 1072
    .end local v0    # "childWidth":I
    .local v4, "x":I
    :goto_1
    iget-object v6, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget-object v8, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6, v7, v4, v8}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1073
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    .line 1074
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1075
    const/4 v5, 0x1

    goto :goto_0

    .line 1068
    .end local v3    # "startBound":I
    .end local v4    # "x":I
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v6

    iget v7, v2, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int v3, v6, v7

    .line 1069
    .restart local v3    # "startBound":I
    int-to-float v6, v3

    iget v7, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v7, v7

    mul-float/2addr v7, p1

    add-float/2addr v6, v7

    float-to-int v4, v6

    .restart local v4    # "x":I
    goto :goto_1
.end method

.method updateObscuredViewsVisibility(Landroid/view/View;)V
    .locals 21
    .param p1, "panel"    # Landroid/view/View;

    .prologue
    .line 359
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v12

    .line 360
    .local v12, "isLayoutRtl":Z
    if-eqz v12, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v20

    sub-int v15, v19, v20

    .line 362
    .local v15, "startBound":I
    :goto_0
    if-eqz v12, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v10

    .line 364
    .local v10, "endBound":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v17

    .line 365
    .local v17, "topBound":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getHeight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v20

    sub-int v3, v19, v20

    .line 370
    .local v3, "bottomBound":I
    if-eqz p1, :cond_3

    invoke-static/range {p1 .. p1}, Landroid/support/v4/widget/SlidingPaneLayout;->viewIsOpaque(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 371
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    .line 372
    .local v13, "left":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v14

    .line 373
    .local v14, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v16

    .line 374
    .local v16, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 379
    .local v2, "bottom":I
    :goto_2
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v5

    .local v5, "childCount":I
    :goto_3
    if-ge v11, v5, :cond_0

    .line 380
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 382
    .local v4, "child":Landroid/view/View;
    move-object/from16 v0, p1

    if-ne v4, v0, :cond_4

    .line 402
    .end local v4    # "child":Landroid/view/View;
    :cond_0
    return-void

    .line 361
    .end local v2    # "bottom":I
    .end local v3    # "bottomBound":I
    .end local v5    # "childCount":I
    .end local v10    # "endBound":I
    .end local v11    # "i":I
    .end local v13    # "left":I
    .end local v14    # "right":I
    .end local v15    # "startBound":I
    .end local v16    # "top":I
    .end local v17    # "topBound":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v15

    goto :goto_0

    .line 363
    .restart local v15    # "startBound":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v20

    sub-int v10, v19, v20

    goto :goto_1

    .line 376
    .restart local v3    # "bottomBound":I
    .restart local v10    # "endBound":I
    .restart local v17    # "topBound":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "bottom":I
    move/from16 v16, v2

    .restart local v16    # "top":I
    move v14, v2

    .restart local v14    # "right":I
    move v13, v2

    .restart local v13    # "left":I
    goto :goto_2

    .line 387
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "childCount":I
    .restart local v11    # "i":I
    :cond_4
    if-eqz v12, :cond_5

    move/from16 v19, v10

    .line 388
    :goto_4
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v20

    .line 387
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 389
    .local v7, "clampedChildLeft":I
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 390
    .local v9, "clampedChildTop":I
    if-eqz v12, :cond_6

    move/from16 v19, v15

    .line 391
    :goto_5
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v20

    .line 390
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 392
    .local v8, "clampedChildRight":I
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 394
    .local v6, "clampedChildBottom":I
    if-lt v7, v13, :cond_7

    move/from16 v0, v16

    if-lt v9, v0, :cond_7

    if-gt v8, v14, :cond_7

    if-gt v6, v2, :cond_7

    .line 396
    const/16 v18, 0x4

    .line 400
    .local v18, "vis":I
    :goto_6
    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 379
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .end local v6    # "clampedChildBottom":I
    .end local v7    # "clampedChildLeft":I
    .end local v8    # "clampedChildRight":I
    .end local v9    # "clampedChildTop":I
    .end local v18    # "vis":I
    :cond_5
    move/from16 v19, v15

    .line 387
    goto :goto_4

    .restart local v7    # "clampedChildLeft":I
    .restart local v9    # "clampedChildTop":I
    :cond_6
    move/from16 v19, v10

    .line 390
    goto :goto_5

    .line 398
    .restart local v6    # "clampedChildBottom":I
    .restart local v8    # "clampedChildRight":I
    :cond_7
    const/16 v18, 0x0

    .restart local v18    # "vis":I
    goto :goto_6
.end method
