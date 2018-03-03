.class public abstract Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;
.super Ljava/lang/Object;
.source "CommonDialogContentsCreator.java"

# interfaces
.implements Lcom/igaworks/adbrix/interfaces/ParticipationProgressCallbackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;,
        Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$IgawPromotionWebViewClient;
    }
.end annotation


# static fields
.field public static final CAN_NOT_PARTICIPATE_RESULT_CODE:I = 0x14b6

.field public static final CLICK_ACTION_CLOSE:Ljava/lang/String; = "no"

.field public static final CLICK_ACTION_URL:Ljava/lang/String; = "url"

.field public static final CLOSE_BTN_URL:Ljava/lang/String; = "http://static.adbrix.igaworks.com/adbrix_res/sdk_res/popup_close_bt.png"

.field private static final HIGH_DPI_STATUS_BAR_HEIGHT:I = 0x26

.field private static final LOW_DPI_STATUS_BAR_HEIGHT:I = 0x13

.field private static final MEDIUM_DPI_STATUS_BAR_HEIGHT:I = 0x19

.field public static final ON_PARTICIPATION_IN_ANOTHER_APP:I = 0x14b7

.field public static final SLIDE_AREA_ID:I = 0x1999

.field public static final THUMBNAIL_ARROW_ID:I = 0x4999

.field public static final THUMBNAIL_IV_ID:I = 0x5999

.field public static final THUMBNAIL_LL_ID:I = 0x5998

.field public static final TYPE_IMAGE:Ljava/lang/String; = "image"

.field public static final TYPE_WEB:Ljava/lang/String; = "web"


# instance fields
.field protected actionListener:Lcom/igaworks/adbrix/cpe/common/DialogActionListener;

.field protected activity:Landroid/app/Activity;

.field protected adImageSectionLl:Landroid/widget/LinearLayout;

.field protected adImageSectionPadding:I

.field protected adImageSectionTitleMargin:I

.field protected adTitleTv:Landroid/widget/TextView;

.field protected campaignKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected campaignThumbnails:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field protected closeBtnIv:Landroid/widget/ImageView;

.field private containerLayout:Landroid/widget/FrameLayout;

.field protected contentsMainLl:Landroid/widget/LinearLayout;

.field protected contentsMainMargin:I

.field protected context:Landroid/content/Context;

.field protected currentCampaignKey:I

.field protected currentSlideNo:I

.field protected dialogMainPadding:I

.field protected dialogRound:I

.field protected dividerSize:I

.field protected handler:Landroid/os/Handler;

.field protected impressionAddedCampaign:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected isCompleteTitleTv:Landroid/widget/TextView;

.field protected isPortrait:Z

.field private landingBtnClickLisetner:Landroid/view/View$OnClickListener;

.field protected media:Lcom/igaworks/adbrix/model/Media;

.field protected missionTitleTv:Landroid/widget/TextView;

.field protected notAvailableTv:Landroid/widget/TextView;

.field private onFailBtnClickListener:Landroid/view/View$OnClickListener;

.field protected onGetProgressModel:Z

.field private onReadyBtnClickListener:Landroid/view/View$OnClickListener;

.field protected playBtnIv:Landroid/widget/ImageView;

.field protected playBtnLl:Landroid/widget/LinearLayout;

.field protected primaryCampaignKey:I

.field protected progressCircle:Landroid/widget/FrameLayout;

.field protected progressModel:Lcom/igaworks/model/ParticipationProgressResponseModel;

.field protected progressModels:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/igaworks/model/ParticipationProgressResponseModel;",
            ">;"
        }
    .end annotation
.end field

.field protected promotions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/igaworks/adbrix/model/Promotion;",
            ">;"
        }
    .end annotation
.end field

.field protected rCks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected rewardIv:Landroid/widget/ImageView;

.field protected roundedActiveThumbSd:Landroid/graphics/drawable/ShapeDrawable;

.field protected roundedInactiveThumbSd:Landroid/graphics/drawable/ShapeDrawable;

.field protected roundedThumbShape:Landroid/graphics/drawable/shapes/Shape;

.field protected showIcon:Z

.field protected slideArea:Landroid/widget/FrameLayout;

.field protected spaceKey:Ljava/lang/String;

.field protected statusBarHeight:I

.field protected stepListColumnMargin:I

.field protected stepListLl:Landroid/widget/LinearLayout;

.field protected stepLoadingFl:Landroid/widget/FrameLayout;

.field protected stepRewardContainer:Landroid/widget/LinearLayout;

.field protected stepRewardWidth:I

.field protected thumbBorderWidth:I

.field protected thumbnailArrowSize:I

.field protected thumbnailItemMargin:I

.field protected thumbnailItemSize:I

.field protected thumbnailListPadding:I

.field protected thumbnailListSv:Landroid/widget/HorizontalScrollView;

.field protected webViewParent:Landroid/widget/LinearLayout;

.field protected webview:Landroid/webkit/WebView;

.field protected webviewParam:Landroid/widget/LinearLayout$LayoutParams;

.field protected windowPadding:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/igaworks/adbrix/model/Media;Ljava/util/List;Landroid/util/SparseArray;ZIILjava/lang/String;Lcom/igaworks/adbrix/cpe/common/DialogActionListener;Landroid/os/Handler;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "media"    # Lcom/igaworks/adbrix/model/Media;
    .param p6, "isPortrait"    # Z
    .param p7, "currentCampaignKey"    # I
    .param p8, "primaryCampaignKey"    # I
    .param p9, "spaceKey"    # Ljava/lang/String;
    .param p10, "actionListener"    # Lcom/igaworks/adbrix/cpe/common/DialogActionListener;
    .param p11, "handler"    # Landroid/os/Handler;
    .param p12, "showIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Lcom/igaworks/adbrix/model/Media;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/igaworks/adbrix/model/Promotion;",
            ">;ZII",
            "Ljava/lang/String;",
            "Lcom/igaworks/adbrix/cpe/common/DialogActionListener;",
            "Landroid/os/Handler;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p4, "campaignKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "promotions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/igaworks/adbrix/model/Promotion;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v2, -0x1

    iput v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentSlideNo:I

    .line 155
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->onGetProgressModel:Z

    .line 157
    new-instance v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;

    invoke-direct {v2, p0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$1;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;)V

    iput-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->landingBtnClickLisetner:Landroid/view/View$OnClickListener;

    .line 270
    new-instance v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$2;

    invoke-direct {v2, p0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$2;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;)V

    iput-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->onReadyBtnClickListener:Landroid/view/View$OnClickListener;

    .line 278
    new-instance v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$3;

    invoke-direct {v2, p0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$3;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;)V

    iput-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->onFailBtnClickListener:Landroid/view/View$OnClickListener;

    .line 301
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->spaceKey:Ljava/lang/String;

    .line 302
    iput-object p3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    .line 303
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    .line 304
    iput-object p2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->activity:Landroid/app/Activity;

    .line 305
    iput-object p4, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->campaignKeys:Ljava/util/List;

    .line 306
    iput-object p5, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    .line 307
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->impressionAddedCampaign:Ljava/util/List;

    .line 308
    iput-boolean p6, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->isPortrait:Z

    .line 309
    iput p7, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    .line 310
    move/from16 v0, p8

    iput v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->primaryCampaignKey:I

    .line 311
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->handler:Landroid/os/Handler;

    .line 312
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->actionListener:Lcom/igaworks/adbrix/cpe/common/DialogActionListener;

    .line 313
    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->showIcon:Z

    .line 317
    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v2

    iput v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->windowPadding:I

    .line 318
    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v2

    iput v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogRound:I

    .line 319
    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v2

    iput v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbBorderWidth:I

    .line 320
    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget v5, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogRound:I

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogRound:I

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogRound:I

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogRound:I

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogRound:I

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x5

    iget v5, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogRound:I

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x6

    iget v5, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogRound:I

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x7

    iget v5, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogRound:I

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    iput-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->roundedThumbShape:Landroid/graphics/drawable/shapes/Shape;

    .line 321
    new-instance v2, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->roundedThumbShape:Landroid/graphics/drawable/shapes/Shape;

    const-string v4, "#dc1f38"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const-string v5, "#dc1f38"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    iget v6, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbBorderWidth:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;III)V

    iput-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->roundedActiveThumbSd:Landroid/graphics/drawable/ShapeDrawable;

    .line 322
    new-instance v2, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->roundedThumbShape:Landroid/graphics/drawable/shapes/Shape;

    const-string v4, "#d1d1d1"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const-string v5, "#d1d1d1"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    iget v6, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbBorderWidth:I

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;IIIZ)V

    iput-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->roundedInactiveThumbSd:Landroid/graphics/drawable/ShapeDrawable;

    .line 325
    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v2

    iput v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->contentsMainMargin:I

    .line 326
    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v2

    iput v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogMainPadding:I

    .line 327
    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v2

    iput v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->adImageSectionPadding:I

    .line 328
    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v2

    iput v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->adImageSectionTitleMargin:I

    .line 329
    const/16 v2, 0x46

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v2

    iput v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailItemSize:I

    .line 330
    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v2

    iput v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailItemMargin:I

    .line 331
    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v2

    iput v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailListPadding:I

    .line 332
    invoke-static {p2}, Lcom/igaworks/core/DisplaySetter;->getDisplayXY(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p2}, Lcom/igaworks/core/DisplaySetter;->getDisplayXY(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fdccccccccccccdL    # 0.45

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepRewardWidth:I

    .line 333
    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v2

    iput v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailArrowSize:I

    .line 334
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v2

    iput v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dividerSize:I

    .line 336
    if-lez p8, :cond_0

    .line 340
    move/from16 v0, p8

    iput v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    .line 341
    const/16 p8, 0x0

    .line 343
    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;I)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->getDividerView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private addImpression(Landroid/content/Context;IILjava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "campaignKey"    # I
    .param p3, "resourceKey"    # I
    .param p4, "spaceKey"    # Ljava/lang/String;

    .prologue
    .line 1740
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->impressionAddedCampaign:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1768
    :goto_0
    return-void

    .line 1747
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 1748
    .local v10, "mDateAndTime":Ljava/util/Calendar;
    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .line 1753
    .local v8, "date":Ljava/util/Date;
    invoke-static {p1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->getInstance(Landroid/content/Context;)Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    move-result-object v0

    invoke-static {}, Lcom/igaworks/util/CommonHelper;->GetKSTCreateAtAsString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->setImpressionData(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/igaworks/util/bolts_task/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1759
    .end local v8    # "date":Ljava/util/Date;
    .end local v10    # "mDateAndTime":Ljava/util/Calendar;
    :goto_1
    :try_start_1
    const-string v1, "impression"

    const-string v2, "session_count"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/igaworks/dao/CPEImpressionDAOFactory;->getImpressionDAO(Ljava/lang/String;Ljava/lang/String;I)Lcom/igaworks/dao/AbstractCPEImpressionDAO;

    move-result-object v11

    .line 1760
    .local v11, "sessionImpDao":Lcom/igaworks/dao/AbstractCPEImpressionDAO;
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "session_count"

    invoke-virtual {v11, p1, v1, v2, v3}, Lcom/igaworks/dao/AbstractCPEImpressionDAO;->increaseImpressionData(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 1761
    const-string v1, "impression"

    const-string v2, "last_imp_minute"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/igaworks/dao/CPEImpressionDAOFactory;->getImpressionDAO(Ljava/lang/String;Ljava/lang/String;I)Lcom/igaworks/dao/AbstractCPEImpressionDAO;

    move-result-object v0

    .line 1762
    .local v0, "PersistImpDao":Lcom/igaworks/dao/AbstractCPEImpressionDAO;
    const/4 v2, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "last_imp_minute"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/dao/AbstractCPEImpressionDAO;->setImpressionData(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1767
    .end local v0    # "PersistImpDao":Lcom/igaworks/dao/AbstractCPEImpressionDAO;
    .end local v11    # "sessionImpDao":Lcom/igaworks/dao/AbstractCPEImpressionDAO;
    :goto_2
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->impressionAddedCampaign:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1754
    :catch_0
    move-exception v9

    .line 1755
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1763
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 1764
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private addProgressCircle(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1836
    :try_start_0
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressCircle:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepLoadingFl:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    .line 1837
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressCircle:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1838
    .local v0, "cParent":Landroid/view/ViewParent;
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "cParent":Landroid/view/ViewParent;
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressCircle:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 1839
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressCircle:Landroid/widget/FrameLayout;

    .line 1842
    :cond_0
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressCircle:Landroid/widget/FrameLayout;

    .line 1843
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 1844
    .local v3, "progressCirclePb":Landroid/widget/ProgressBar;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1845
    .local v1, "pcParam":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1846
    .local v2, "pcpbParam":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1847
    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1848
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1849
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressCircle:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1850
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressCircle:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1851
    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressCircle:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1854
    .end local v1    # "pcParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "pcpbParam":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "progressCirclePb":Landroid/widget/ProgressBar;
    :goto_0
    return-void

    .line 1852
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private getDividerView(I)Landroid/view/View;
    .locals 10
    .param p1, "orientation"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v6, -0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 1507
    const/4 v5, 0x0

    .line 1508
    .local v5, "dividerLlParam":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    .line 1509
    .local v1, "divider1Param":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    .line 1511
    .local v3, "divider2Param":Landroid/widget/LinearLayout$LayoutParams;
    if-nez p1, :cond_0

    .line 1512
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .end local v5    # "dividerLlParam":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1513
    .restart local v5    # "dividerLlParam":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "divider1Param":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v6, v8, v8}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v6

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1514
    .restart local v1    # "divider1Param":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "divider2Param":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v6, v9, v8}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v6

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1520
    .restart local v3    # "divider2Param":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1521
    .local v4, "dividerLl":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1522
    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1524
    new-instance v0, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1525
    .local v0, "divider1":Landroid/widget/ImageView;
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1526
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const-string v7, "#131924"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1527
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1529
    new-instance v2, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1530
    .local v2, "divider2":Landroid/widget/ImageView;
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1531
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const-string v7, "#344360"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1532
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1534
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1535
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1537
    return-object v4

    .line 1516
    .end local v0    # "divider1":Landroid/widget/ImageView;
    .end local v2    # "divider2":Landroid/widget/ImageView;
    .end local v4    # "dividerLl":Landroid/widget/LinearLayout;
    :cond_0
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .end local v5    # "dividerLlParam":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1517
    .restart local v5    # "dividerLlParam":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .end local v1    # "divider1Param":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v6, v8, v8}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v6

    invoke-direct {v1, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1518
    .restart local v1    # "divider1Param":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "divider2Param":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v6, v9, v8}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v6

    invoke-direct {v3, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v3    # "divider2Param":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_0
.end method

.method private getPlayBtnView(I)Landroid/view/View;
    .locals 12
    .param p1, "numOfReward"    # I

    .prologue
    const/16 v6, 0x11

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 977
    new-instance v0, Lcom/igaworks/adbrix/cpe/common/RepeatBGLinearLayout;

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igaworks/adbrix/cpe/common/RepeatBGLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->playBtnLl:Landroid/widget/LinearLayout;

    .line 978
    const/4 v11, 0x0

    .line 979
    .local v11, "playBtnLlParam":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adbrix/model/Theme;->getCirclePlayBtn()Ljava/lang/String;

    move-result-object v2

    .line 980
    .local v2, "playBtnUrl":Ljava/lang/String;
    const/4 v8, 0x0

    .line 982
    .local v8, "btnSize":I
    iget-boolean v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->isPortrait:Z

    if-eqz v0, :cond_1

    .line 984
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->playBtnLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 986
    if-lez p1, :cond_0

    .line 987
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v1, 0x78

    invoke-static {v0, v1, v5}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v8

    .line 988
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .end local v11    # "playBtnLlParam":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v11, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1005
    .restart local v11    # "playBtnLlParam":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->playBtnLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1006
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->playBtnLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1009
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->playBtnIv:Landroid/widget/ImageView;

    .line 1010
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1011
    .local v9, "playBtnIvParam":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->playBtnIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1012
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->playBtnIv:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1013
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/igaworks/util/CommonHelper;->CheckPermissionForCommonSDK(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1014
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->getImageDownloader(Landroid/content/Context;)Lcom/igaworks/util/image/ImageDownloader;

    move-result-object v6

    new-instance v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$17;

    .line 1015
    invoke-static {}, Lcom/igaworks/util/image/ImageCacheFactory;->getInstance()Lcom/igaworks/util/image/ImageCacheFactory;

    move-result-object v1

    const-string v4, "imagecache"

    invoke-virtual {v1, v4}, Lcom/igaworks/util/image/ImageCacheFactory;->get(Ljava/lang/String;)Lcom/igaworks/util/image/ImageCache;

    move-result-object v4

    move-object v1, p0

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$17;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;)V

    move-object v1, v6

    move-object v4, v3

    move-object v5, v3

    move-object v6, v0

    .line 1014
    invoke-virtual/range {v1 .. v6}, Lcom/igaworks/util/image/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/widget/FrameLayout;Lcom/igaworks/util/image/ImageDownloadAsyncCallback;)V

    .line 1048
    :goto_1
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->playBtnLl:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->playBtnIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1050
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->playBtnLl:Landroid/widget/LinearLayout;

    return-object v0

    .line 990
    .end local v9    # "playBtnIvParam":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v1, 0x8c

    invoke-static {v0, v1, v5}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v8

    .line 991
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .end local v11    # "playBtnLlParam":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v11, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v11    # "playBtnLlParam":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_0

    .line 995
    :cond_1
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .end local v11    # "playBtnLlParam":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v11, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 996
    .restart local v11    # "playBtnLlParam":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adbrix/model/Theme;->getSquarePlayBtn()Ljava/lang/String;

    move-result-object v2

    .line 997
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->playBtnLl:Landroid/widget/LinearLayout;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 999
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->isPortrait:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    :goto_2
    invoke-static {v1, v0, v5}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v10

    .line 1000
    .local v10, "playBtnLlPadding":I
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->playBtnLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1002
    const/4 v8, -0x1

    goto/16 :goto_0

    .line 999
    .end local v10    # "playBtnLlPadding":I
    :cond_2
    const/16 v0, 0xa

    goto :goto_2

    .line 1024
    .restart local v9    # "playBtnIvParam":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    move-object v7, v2

    .line 1025
    .local v7, "_playBtnUrl":Ljava/lang/String;
    sget-object v0, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$18;

    invoke-direct {v1, p0, v7}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$18;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private setCampaignThumbnailListView()V
    .locals 31

    .prologue
    .line 1542
    new-instance v28, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1543
    .local v28, "thumbnailListLl":Landroid/widget/LinearLayout;
    new-instance v29, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1544
    .local v29, "thumbnailListLlParam":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1545
    const/4 v2, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1546
    invoke-virtual/range {v28 .. v29}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1548
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->campaignThumbnails:Landroid/util/SparseArray;

    .line 1550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->rCks:Ljava/util/List;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->rCks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->campaignKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 1552
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    .line 1553
    .local v20, "seed":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->rCks:Ljava/util/List;

    .line 1554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->rCks:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->campaignKeys:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->rCks:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->campaignKeys:Ljava/util/List;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->rCks:Ljava/util/List;

    new-instance v3, Ljava/util/Random;

    move-wide/from16 v0, v20

    invoke-direct {v3, v0, v1}, Ljava/util/Random;-><init>(J)V

    invoke-static {v2, v3}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 1557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->rCks:Ljava/util/List;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1561
    .end local v20    # "seed":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v27

    .line 1562
    .local v27, "thumbPadding":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v17

    .line 1564
    .local v17, "arrowHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->rCks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_0
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 1566
    .local v19, "item":I
    new-instance v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1567
    .local v24, "thumbItemContainerLl":Landroid/widget/LinearLayout;
    new-instance v25, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailItemSize:I

    add-int v2, v2, v27

    move-object/from16 v0, p0

    iget v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailItemSize:I

    add-int v3, v3, v27

    add-int v3, v3, v17

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1568
    .local v25, "thumbIvContainerParam":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1569
    const/16 v2, 0x11

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1570
    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1572
    new-instance v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$27;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$27;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->rCks:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v0, v19

    if-eq v0, v2, :cond_2

    .line 1588
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->isPortrait:Z

    if-eqz v2, :cond_3

    .line 1589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v2

    move-object/from16 v0, v25

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1595
    :cond_2
    :goto_1
    new-instance v8, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v8, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1596
    .local v8, "arrowIv":Landroid/widget/ImageView;
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v0, v17

    int-to-float v2, v0

    const v3, 0x3fa66666    # 1.3f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1597
    .local v18, "arrowIvParam":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x4999

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 1598
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1599
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/util/CommonHelper;->CheckPermissionForCommonSDK(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->getImageDownloader(Landroid/content/Context;)Lcom/igaworks/util/image/ImageDownloader;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Theme;->getSelectedAppArrow()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$28;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    .line 1602
    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/Theme;->getSelectedAppArrow()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/igaworks/util/image/ImageCacheFactory;->getInstance()Lcom/igaworks/util/image/ImageCacheFactory;

    move-result-object v3

    const-string v6, "imagecache"

    invoke-virtual {v3, v6}, Lcom/igaworks/util/image/ImageCacheFactory;->get(Ljava/lang/String;)Lcom/igaworks/util/image/ImageCache;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$28;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V

    move-object v14, v2

    .line 1601
    invoke-virtual/range {v9 .. v14}, Lcom/igaworks/util/image/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/widget/FrameLayout;Lcom/igaworks/util/image/ImageDownloadAsyncCallback;)V

    .line 1636
    :goto_2
    new-instance v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1637
    .local v22, "thumIvLl":Landroid/widget/LinearLayout;
    new-instance v23, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailItemSize:I

    add-int v2, v2, v27

    move-object/from16 v0, p0

    iget v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailItemSize:I

    add-int v3, v3, v27

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1638
    .local v23, "thumIvLlParam":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1639
    const/16 v2, 0x5998

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 1640
    const/16 v2, 0x11

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1643
    new-instance v15, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v15, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1644
    .local v15, "thumbIv":Landroid/widget/ImageView;
    new-instance v26, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailItemSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailItemSize:I

    move-object/from16 v0, v26

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1645
    .local v26, "thumbIvParam":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x5999

    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 1646
    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1647
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/util/CommonHelper;->CheckPermissionForCommonSDK(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->getImageDownloader(Landroid/content/Context;)Lcom/igaworks/util/image/ImageDownloader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getIcon()Lcom/igaworks/adbrix/model/IconModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/IconModel;->getResource()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v9, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$30;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    .line 1650
    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v7}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v7

    invoke-virtual {v7}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getIcon()Lcom/igaworks/adbrix/model/IconModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/igaworks/adbrix/model/IconModel;->getResource()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {}, Lcom/igaworks/util/image/ImageCacheFactory;->getInstance()Lcom/igaworks/util/image/ImageCacheFactory;

    move-result-object v7

    const-string v10, "imagecache"

    invoke-virtual {v7, v10}, Lcom/igaworks/util/image/ImageCacheFactory;->get(Ljava/lang/String;)Lcom/igaworks/util/image/ImageCache;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v15}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$30;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V

    move-object v7, v9

    .line 1649
    invoke-virtual/range {v2 .. v7}, Lcom/igaworks/util/image/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/widget/FrameLayout;Lcom/igaworks/util/image/ImageDownloadAsyncCallback;)V

    .line 1685
    :goto_3
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1687
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1688
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1690
    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->campaignThumbnails:Landroid/util/SparseArray;

    move/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1591
    .end local v8    # "arrowIv":Landroid/widget/ImageView;
    .end local v15    # "thumbIv":Landroid/widget/ImageView;
    .end local v18    # "arrowIvParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v22    # "thumIvLl":Landroid/widget/LinearLayout;
    .end local v23    # "thumIvLlParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v26    # "thumbIvParam":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v3, 0xc

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v2

    move-object/from16 v0, v25

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_1

    .line 1612
    .restart local v8    # "arrowIv":Landroid/widget/ImageView;
    .restart local v18    # "arrowIvParam":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    sget-object v2, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$29;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v8}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$29;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;Landroid/widget/ImageView;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 1660
    .restart local v15    # "thumbIv":Landroid/widget/ImageView;
    .restart local v22    # "thumIvLl":Landroid/widget/LinearLayout;
    .restart local v23    # "thumIvLlParam":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v26    # "thumbIvParam":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    move/from16 v16, v19

    .line 1661
    .local v16, "_item":I
    sget-object v2, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31;

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v3, v0, v1, v15}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$31;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;ILandroid/widget/ImageView;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 1695
    .end local v8    # "arrowIv":Landroid/widget/ImageView;
    .end local v15    # "thumbIv":Landroid/widget/ImageView;
    .end local v16    # "_item":I
    .end local v18    # "arrowIvParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v19    # "item":I
    .end local v22    # "thumIvLl":Landroid/widget/LinearLayout;
    .end local v23    # "thumIvLlParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v24    # "thumbItemContainerLl":Landroid/widget/LinearLayout;
    .end local v25    # "thumbIvContainerParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v26    # "thumbIvParam":Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailListSv:Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 1697
    return-void
.end method

.method private setMultiStepRewardView(I)V
    .locals 2
    .param p1, "numOfReward"    # I

    .prologue
    .line 966
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    iget v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v0}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getStepReward()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 967
    invoke-direct {p0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->setStepListView()V

    .line 973
    :goto_0
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepRewardContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->getPlayBtnView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 974
    return-void

    .line 969
    :cond_0
    invoke-direct {p0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->setOneStepView()V

    goto :goto_0
.end method

.method private setNonRewardView(I)V
    .locals 2
    .param p1, "numOfReward"    # I

    .prologue
    .line 961
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepRewardContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->getPlayBtnView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 962
    return-void
.end method

.method private setOneStepView()V
    .locals 52

    .prologue
    .line 1055
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v5}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v5

    invoke-virtual {v5}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getStepReward()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/igaworks/adbrix/model/StepRewardModel;

    .line 1056
    .local v32, "reward":Lcom/igaworks/adbrix/model/StepRewardModel;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->isPortrait:Z

    if-eqz v5, :cond_0

    const/16 v5, 0x12

    :goto_0
    const/4 v7, 0x1

    invoke-static {v6, v5, v7}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v51

    .line 1057
    .local v51, "tvRound":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v28

    .line 1058
    .local v28, "marginBetweenItem":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v6, 0xa

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v47

    .line 1059
    .local v47, "stepDescLlPadding":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v6, 0xe

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v29

    .line 1060
    .local v29, "nextArrowSize":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v6, 0x14

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v39

    .line 1061
    .local v39, "rewardIvSize":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->isPortrait:Z

    if-eqz v5, :cond_1

    const/16 v5, 0x26

    :goto_1
    const/4 v7, 0x1

    invoke-static {v6, v5, v7}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v49

    .line 1062
    .local v49, "stepItemHeight":I
    const/16 v50, 0x0

    .line 1069
    .local v50, "stepItemWidth":I
    new-instance v46, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    move-object/from16 v0, v46

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1070
    .local v46, "stepDescLl":Landroid/widget/LinearLayout;
    new-instance v48, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, v48

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1071
    .local v48, "stepDescLlParam":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, 0x1

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1072
    move-object/from16 v0, v46

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1074
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->isPortrait:Z

    if-eqz v5, :cond_2

    .line 1075
    const/16 v5, 0x11

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1076
    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v47

    move/from16 v3, v47

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v6, 0xb4

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v50

    .line 1084
    :goto_2
    new-instance v41, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v5, 0x8

    new-array v5, v5, [F

    const/4 v6, 0x0

    move/from16 v0, v51

    int-to-float v7, v0

    aput v7, v5, v6

    const/4 v6, 0x1

    move/from16 v0, v51

    int-to-float v7, v0

    aput v7, v5, v6

    const/4 v6, 0x2

    move/from16 v0, v51

    int-to-float v7, v0

    aput v7, v5, v6

    const/4 v6, 0x3

    move/from16 v0, v51

    int-to-float v7, v0

    aput v7, v5, v6

    const/4 v6, 0x4

    move/from16 v0, v51

    int-to-float v7, v0

    aput v7, v5, v6

    const/4 v6, 0x5

    move/from16 v0, v51

    int-to-float v7, v0

    aput v7, v5, v6

    const/4 v6, 0x6

    move/from16 v0, v51

    int-to-float v7, v0

    aput v7, v5, v6

    const/4 v6, 0x7

    move/from16 v0, v51

    int-to-float v7, v0

    aput v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v41

    invoke-direct {v0, v5, v6, v7}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 1085
    .local v41, "roundedFirstStepShape":Landroid/graphics/drawable/shapes/Shape;
    new-instance v40, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    invoke-virtual {v5}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/igaworks/adbrix/model/Theme;->getFirstUnitBGColorForOneStep()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    .line 1086
    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/Theme;->getFirstUnitBGColorForOneStep()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;III)V

    .line 1088
    .local v40, "roundedFirstStepSd":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v45, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v5, 0x8

    new-array v5, v5, [F

    const/4 v6, 0x0

    move/from16 v0, v51

    int-to-float v7, v0

    aput v7, v5, v6

    const/4 v6, 0x1

    move/from16 v0, v51

    int-to-float v7, v0

    aput v7, v5, v6

    const/4 v6, 0x2

    move/from16 v0, v51

    int-to-float v7, v0

    aput v7, v5, v6

    const/4 v6, 0x3

    move/from16 v0, v51

    int-to-float v7, v0

    aput v7, v5, v6

    const/4 v6, 0x4

    move/from16 v0, v51

    int-to-float v7, v0

    aput v7, v5, v6

    const/4 v6, 0x5

    move/from16 v0, v51

    int-to-float v7, v0

    aput v7, v5, v6

    const/4 v6, 0x6

    move/from16 v0, v51

    int-to-float v7, v0

    aput v7, v5, v6

    const/4 v6, 0x7

    move/from16 v0, v51

    int-to-float v7, v0

    aput v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v45

    invoke-direct {v0, v5, v6, v7}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 1089
    .local v45, "roundedSecondStepShape":Landroid/graphics/drawable/shapes/Shape;
    new-instance v44, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    invoke-virtual {v5}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/igaworks/adbrix/model/Theme;->getSecondUnitBGColorForOneStep()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    .line 1090
    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/Theme;->getSecondUnitBGColorForOneStep()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;III)V

    .line 1092
    .local v44, "roundedSecondStepSd":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v43, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v5, 0x8

    new-array v5, v5, [F

    const/4 v6, 0x0

    move/from16 v0, v51

    int-to-float v7, v0

    aput v7, v5, v6

    const/4 v6, 0x1

    move/from16 v0, v51

    int-to-float v7, v0

    aput v7, v5, v6

    const/4 v6, 0x2

    move/from16 v0, v51

    int-to-float v7, v0

    aput v7, v5, v6

    const/4 v6, 0x3

    move/from16 v0, v51

    int-to-float v7, v0

    aput v7, v5, v6

    const/4 v6, 0x4

    move/from16 v0, v51

    int-to-float v7, v0

    aput v7, v5, v6

    const/4 v6, 0x5

    move/from16 v0, v51

    int-to-float v7, v0

    aput v7, v5, v6

    const/4 v6, 0x6

    move/from16 v0, v51

    int-to-float v7, v0

    aput v7, v5, v6

    const/4 v6, 0x7

    move/from16 v0, v51

    int-to-float v7, v0

    aput v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v43

    invoke-direct {v0, v5, v6, v7}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 1093
    .local v43, "roundedRewardShape":Landroid/graphics/drawable/shapes/Shape;
    new-instance v42, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    invoke-virtual {v5}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/igaworks/adbrix/model/Theme;->getRewardUnitBGColorForOneStep()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    .line 1094
    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/Theme;->getRewardUnitBGColorForOneStep()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;III)V

    .line 1096
    .local v42, "roundedRewardSd":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v26, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1097
    .local v26, "defaultActionTv":Landroid/widget/TextView;
    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v27

    move/from16 v1, v50

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1098
    .local v27, "defaultActionTvParam":Landroid/widget/LinearLayout$LayoutParams;
    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1099
    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1100
    move-object/from16 v0, v26

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    invoke-virtual {v5}, Lcom/igaworks/adbrix/model/Media;->getLanguage()Lcom/igaworks/adbrix/model/Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/igaworks/adbrix/model/Language;->getFirstUnitForOneStep()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1102
    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1103
    const/16 v5, 0x11

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1104
    const-string v5, "#3f292d"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1105
    const/4 v5, 0x2

    const/high16 v6, 0x41500000    # 13.0f

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1107
    new-instance v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v11, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1108
    .local v11, "nextIv1":Landroid/widget/ImageView;
    new-instance v30, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v30

    move/from16 v1, v29

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1109
    .local v30, "nextIvParam1":Landroid/widget/LinearLayout$LayoutParams;
    move/from16 v0, v28

    move-object/from16 v1, v30

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1110
    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1111
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1112
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->activity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/igaworks/util/CommonHelper;->CheckPermissionForCommonSDK(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1113
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->getImageDownloader(Landroid/content/Context;)Lcom/igaworks/util/image/ImageDownloader;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    invoke-virtual {v5}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/igaworks/adbrix/model/Theme;->getStepArrow()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    new-instance v5, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$19;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    .line 1114
    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/Theme;->getStepArrow()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {}, Lcom/igaworks/util/image/ImageCacheFactory;->getInstance()Lcom/igaworks/util/image/ImageCacheFactory;

    move-result-object v6

    const-string v9, "imagecache"

    invoke-virtual {v6, v9}, Lcom/igaworks/util/image/ImageCacheFactory;->get(Ljava/lang/String;)Lcom/igaworks/util/image/ImageCache;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$19;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V

    move-object/from16 v17, v5

    .line 1113
    invoke-virtual/range {v12 .. v17}, Lcom/igaworks/util/image/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/widget/FrameLayout;Lcom/igaworks/util/image/ImageDownloadAsyncCallback;)V

    .line 1146
    :goto_3
    new-instance v33, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1147
    .local v33, "rewardActionTv":Landroid/widget/TextView;
    new-instance v34, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v34

    move/from16 v1, v50

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1148
    .local v34, "rewardActionTvParam":Landroid/widget/LinearLayout$LayoutParams;
    move/from16 v0, v28

    move-object/from16 v1, v34

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1149
    invoke-virtual/range {v33 .. v34}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1150
    move-object/from16 v0, v33

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1151
    invoke-virtual/range {v32 .. v32}, Lcom/igaworks/adbrix/model/StepRewardModel;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1152
    invoke-virtual/range {v33 .. v33}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1153
    const/16 v5, 0x11

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1154
    const-string v5, "#3f292d"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1155
    const/4 v5, 0x2

    const/high16 v6, 0x41500000    # 13.0f

    move-object/from16 v0, v33

    invoke-virtual {v0, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1157
    new-instance v18, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1158
    .local v18, "nextIv2":Landroid/widget/ImageView;
    new-instance v31, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v31

    move/from16 v1, v29

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1159
    .local v31, "nextIvParam2":Landroid/widget/LinearLayout$LayoutParams;
    move/from16 v0, v28

    move-object/from16 v1, v31

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1160
    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1161
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1162
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->activity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/igaworks/util/CommonHelper;->CheckPermissionForCommonSDK(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1163
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->getImageDownloader(Landroid/content/Context;)Lcom/igaworks/util/image/ImageDownloader;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/Theme;->getStepArrow()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v12, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$21;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    .line 1164
    invoke-virtual {v10}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v10

    invoke-virtual {v10}, Lcom/igaworks/adbrix/model/Theme;->getStepArrow()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {}, Lcom/igaworks/util/image/ImageCacheFactory;->getInstance()Lcom/igaworks/util/image/ImageCacheFactory;

    move-result-object v10

    const-string v13, "imagecache"

    invoke-virtual {v10, v13}, Lcom/igaworks/util/image/ImageCacheFactory;->get(Ljava/lang/String;)Lcom/igaworks/util/image/ImageCache;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v18}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$21;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V

    move-object v10, v12

    .line 1163
    invoke-virtual/range {v5 .. v10}, Lcom/igaworks/util/image/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/widget/FrameLayout;Lcom/igaworks/util/image/ImageDownloadAsyncCallback;)V

    .line 1197
    :goto_4
    new-instance v35, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    move-object/from16 v0, v35

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1198
    .local v35, "rewardDescLl":Landroid/widget/LinearLayout;
    new-instance v36, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v36

    move/from16 v1, v50

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1199
    .local v36, "rewardDescLlParam":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v35 .. v36}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1200
    const/16 v5, 0x11

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1201
    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1202
    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1204
    new-instance v25, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1205
    .local v25, "rewardIv":Landroid/widget/ImageView;
    new-instance v38, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1206
    .local v38, "rewardIvParam":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1207
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/igaworks/util/CommonHelper;->CheckPermissionForCommonSDK(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1208
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->getImageDownloader(Landroid/content/Context;)Lcom/igaworks/util/image/ImageDownloader;

    move-result-object v5

    sget-object v6, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/Schedule;->getMedia()Lcom/igaworks/adbrix/model/Media;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/Media;->getRewardIcon()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v19, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$23;

    sget-object v10, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    .line 1209
    invoke-virtual {v10}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v10

    invoke-virtual {v10}, Lcom/igaworks/adbrix/model/Schedule;->getMedia()Lcom/igaworks/adbrix/model/Media;

    move-result-object v10

    invoke-virtual {v10}, Lcom/igaworks/adbrix/model/Media;->getRewardIcon()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-static {}, Lcom/igaworks/util/image/ImageCacheFactory;->getInstance()Lcom/igaworks/util/image/ImageCacheFactory;

    move-result-object v10

    const-string v12, "imagecache"

    invoke-virtual {v10, v12}, Lcom/igaworks/util/image/ImageCacheFactory;->get(Ljava/lang/String;)Lcom/igaworks/util/image/ImageCache;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v25}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$23;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V

    move-object/from16 v10, v19

    .line 1208
    invoke-virtual/range {v5 .. v10}, Lcom/igaworks/util/image/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/widget/FrameLayout;Lcom/igaworks/util/image/ImageDownloadAsyncCallback;)V

    .line 1242
    :goto_5
    new-instance v37, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    move-object/from16 v0, v37

    invoke-direct {v0, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1243
    .local v37, "rewardDescTv":Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/Media;->getLanguage()Lcom/igaworks/adbrix/model/Language;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igaworks/adbrix/model/Language;->getRewardUnitForOneStep()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v32 .. v32}, Lcom/igaworks/adbrix/model/StepRewardModel;->getReward()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1244
    invoke-virtual/range {v37 .. v37}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1245
    const-string v5, "#3f292d"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1246
    const/4 v5, 0x2

    const/high16 v6, 0x41500000    # 13.0f

    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1248
    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1249
    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1251
    move-object/from16 v0, v46

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1252
    move-object/from16 v0, v46

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1253
    move-object/from16 v0, v46

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1254
    move-object/from16 v0, v46

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1255
    move-object/from16 v0, v46

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1259
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepListLl:Landroid/widget/LinearLayout;

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1261
    return-void

    .line 1056
    .end local v11    # "nextIv1":Landroid/widget/ImageView;
    .end local v18    # "nextIv2":Landroid/widget/ImageView;
    .end local v25    # "rewardIv":Landroid/widget/ImageView;
    .end local v26    # "defaultActionTv":Landroid/widget/TextView;
    .end local v27    # "defaultActionTvParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v28    # "marginBetweenItem":I
    .end local v29    # "nextArrowSize":I
    .end local v30    # "nextIvParam1":Landroid/widget/LinearLayout$LayoutParams;
    .end local v31    # "nextIvParam2":Landroid/widget/LinearLayout$LayoutParams;
    .end local v33    # "rewardActionTv":Landroid/widget/TextView;
    .end local v34    # "rewardActionTvParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v35    # "rewardDescLl":Landroid/widget/LinearLayout;
    .end local v36    # "rewardDescLlParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v37    # "rewardDescTv":Landroid/widget/TextView;
    .end local v38    # "rewardIvParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v39    # "rewardIvSize":I
    .end local v40    # "roundedFirstStepSd":Landroid/graphics/drawable/ShapeDrawable;
    .end local v41    # "roundedFirstStepShape":Landroid/graphics/drawable/shapes/Shape;
    .end local v42    # "roundedRewardSd":Landroid/graphics/drawable/ShapeDrawable;
    .end local v43    # "roundedRewardShape":Landroid/graphics/drawable/shapes/Shape;
    .end local v44    # "roundedSecondStepSd":Landroid/graphics/drawable/ShapeDrawable;
    .end local v45    # "roundedSecondStepShape":Landroid/graphics/drawable/shapes/Shape;
    .end local v46    # "stepDescLl":Landroid/widget/LinearLayout;
    .end local v47    # "stepDescLlPadding":I
    .end local v48    # "stepDescLlParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v49    # "stepItemHeight":I
    .end local v50    # "stepItemWidth":I
    .end local v51    # "tvRound":I
    :cond_0
    const/16 v5, 0x12

    goto/16 :goto_0

    .line 1061
    .restart local v28    # "marginBetweenItem":I
    .restart local v29    # "nextArrowSize":I
    .restart local v39    # "rewardIvSize":I
    .restart local v47    # "stepDescLlPadding":I
    .restart local v51    # "tvRound":I
    :cond_1
    const/16 v5, 0x26

    goto/16 :goto_1

    .line 1079
    .restart local v46    # "stepDescLl":Landroid/widget/LinearLayout;
    .restart local v48    # "stepDescLlParam":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v49    # "stepItemHeight":I
    .restart local v50    # "stepItemWidth":I
    :cond_2
    const/4 v5, 0x1

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1080
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v47

    invoke-virtual {v0, v1, v5, v2, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1081
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v6, 0xa0

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v50

    goto/16 :goto_2

    .line 1123
    .restart local v11    # "nextIv1":Landroid/widget/ImageView;
    .restart local v26    # "defaultActionTv":Landroid/widget/TextView;
    .restart local v27    # "defaultActionTvParam":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v30    # "nextIvParam1":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v40    # "roundedFirstStepSd":Landroid/graphics/drawable/ShapeDrawable;
    .restart local v41    # "roundedFirstStepShape":Landroid/graphics/drawable/shapes/Shape;
    .restart local v42    # "roundedRewardSd":Landroid/graphics/drawable/ShapeDrawable;
    .restart local v43    # "roundedRewardShape":Landroid/graphics/drawable/shapes/Shape;
    .restart local v44    # "roundedSecondStepSd":Landroid/graphics/drawable/ShapeDrawable;
    .restart local v45    # "roundedSecondStepShape":Landroid/graphics/drawable/shapes/Shape;
    :cond_3
    sget-object v5, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$20;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v11}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$20;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;Landroid/widget/ImageView;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 1173
    .restart local v18    # "nextIv2":Landroid/widget/ImageView;
    .restart local v31    # "nextIvParam2":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v33    # "rewardActionTv":Landroid/widget/TextView;
    .restart local v34    # "rewardActionTvParam":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    sget-object v5, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$22;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v6, v0, v1}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$22;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;Landroid/widget/ImageView;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 1218
    .restart local v25    # "rewardIv":Landroid/widget/ImageView;
    .restart local v35    # "rewardDescLl":Landroid/widget/LinearLayout;
    .restart local v36    # "rewardDescLlParam":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v38    # "rewardIvParam":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    sget-object v5, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$24;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v6, v0, v1}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$24;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;Landroid/widget/ImageView;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_5
.end method

.method private setStepListView()V
    .locals 23

    .prologue
    .line 1265
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v2, 0x24

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v13

    .line 1266
    .local v13, "rowHeight":I
    const/16 v16, 0x0

    .line 1267
    .local v16, "stepListTitleLlParam":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, 0x0

    .line 1268
    .local v10, "missionTitleTvParam":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, 0x0

    .line 1269
    .local v11, "rewardIvParam":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, 0x0

    .line 1272
    .local v9, "isCompleteTitleTvParam":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v14, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1273
    .local v14, "stepListTitleLl":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1274
    const-string v1, "#182030"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1275
    const/16 v1, 0x11

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v15

    .line 1277
    .local v15, "stepListTitleLlPadding":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v14, v1, v15, v2, v15}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/4 v2, 0x7

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepListColumnMargin:I

    .line 1281
    new-instance v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->missionTitleTv:Landroid/widget/TextView;

    .line 1282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->missionTitleTv:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1283
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->missionTitleTv:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Media;->getLanguage()Lcom/igaworks/adbrix/model/Language;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Language;->getMission()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1284
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->missionTitleTv:Landroid/widget/TextView;

    const-string v2, "#24e0f7"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1285
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->missionTitleTv:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->missionTitleTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->missionTitleTv:Landroid/widget/TextView;

    const/16 v3, 0xf

    invoke-static {v1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->setTextViewSize(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 1288
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v12

    .line 1290
    .local v12, "rewardIvSize":I
    new-instance v1, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->rewardIv:Landroid/widget/ImageView;

    .line 1291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->rewardIv:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/igaworks/util/CommonHelper;->CheckPermissionForCommonSDK(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->getImageDownloader(Landroid/content/Context;)Lcom/igaworks/util/image/ImageDownloader;

    move-result-object v7

    sget-object v1, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/Schedule;->getMedia()Lcom/igaworks/adbrix/model/Media;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/Media;->getRewardIcon()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    new-instance v1, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$25;

    sget-object v2, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    .line 1294
    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Schedule;->getMedia()Lcom/igaworks/adbrix/model/Media;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Media;->getRewardIcon()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Lcom/igaworks/util/image/ImageCacheFactory;->getInstance()Lcom/igaworks/util/image/ImageCacheFactory;

    move-result-object v2

    const-string v5, "imagecache"

    invoke-virtual {v2, v5}, Lcom/igaworks/util/image/ImageCacheFactory;->get(Ljava/lang/String;)Lcom/igaworks/util/image/ImageCache;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$25;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;)V

    move-object v2, v7

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    move-object v7, v1

    .line 1293
    invoke-virtual/range {v2 .. v7}, Lcom/igaworks/util/image/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/widget/FrameLayout;Lcom/igaworks/util/image/ImageDownloadAsyncCallback;)V

    .line 1336
    :goto_0
    new-instance v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->isCompleteTitleTv:Landroid/widget/TextView;

    .line 1337
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->isCompleteTitleTv:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Media;->getLanguage()Lcom/igaworks/adbrix/model/Language;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Language;->getIsComplete()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1338
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->isCompleteTitleTv:Landroid/widget/TextView;

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1339
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->isCompleteTitleTv:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->isCompleteTitleTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1340
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->isCompleteTitleTv:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->isCompleteTitleTv:Landroid/widget/TextView;

    const/16 v3, 0xf

    invoke-static {v1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->setTextViewSize(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 1344
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->missionTitleTv:Landroid/widget/TextView;

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1345
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->getDividerView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->rewardIv:Landroid/widget/ImageView;

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1347
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->getDividerView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->isCompleteTitleTv:Landroid/widget/TextView;

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1351
    new-instance v17, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 1352
    .local v17, "stepLv":Landroid/widget/ListView;
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    move-object/from16 v0, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1353
    .local v18, "stepLvParam":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v17 .. v18}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1355
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->isPortrait:Z

    if-eqz v1, :cond_1

    .line 1356
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    .end local v16    # "stepListTitleLlParam":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v2, 0x108

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v1

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1357
    .restart local v16    # "stepListTitleLlParam":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .end local v10    # "missionTitleTvParam":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v2, 0xa1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v1

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v10, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1358
    .restart local v10    # "missionTitleTvParam":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .end local v11    # "rewardIvParam":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v2, 0x32

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v1

    invoke-direct {v11, v1, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1359
    .restart local v11    # "rewardIvParam":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .end local v9    # "isCompleteTitleTvParam":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v2, 0x32

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v9, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1367
    .restart local v9    # "isCompleteTitleTvParam":Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->missionTitleTv:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1369
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->rewardIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1370
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->isCompleteTitleTv:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1373
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepListLl:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1374
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepListLl:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->getDividerView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1375
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepListLl:Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1377
    new-instance v8, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v2, 0x3999

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v1, v2}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;Landroid/content/Context;I)V

    .line 1378
    .local v8, "adapter":Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1379
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1381
    return-void

    .line 1310
    .end local v8    # "adapter":Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$StepRewardListAdapter;
    .end local v17    # "stepLv":Landroid/widget/ListView;
    .end local v18    # "stepLvParam":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    sget-object v1, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$26;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$26;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1361
    .restart local v17    # "stepLv":Landroid/widget/ListView;
    .restart local v18    # "stepLvParam":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    .end local v16    # "stepListTitleLlParam":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v2, 0xc1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v1

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1362
    .restart local v16    # "stepListTitleLlParam":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .end local v10    # "missionTitleTvParam":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v2, 0x71

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v1

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v10, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1363
    .restart local v10    # "missionTitleTvParam":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .end local v11    # "rewardIvParam":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v2, 0x28

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v1

    invoke-direct {v11, v1, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1364
    .restart local v11    # "rewardIvParam":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .end local v9    # "isCompleteTitleTvParam":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v2, 0x28

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v9, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v9    # "isCompleteTitleTvParam":Landroid/widget/LinearLayout$LayoutParams;
    goto/16 :goto_1
.end method

.method private setTitleAndAdSlideView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 865
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->adTitleTv:Landroid/widget/TextView;

    .line 866
    const/4 v0, 0x0

    .line 867
    .local v0, "adTitleParam":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "adTitleParam":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 868
    .restart local v0    # "adTitleParam":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->adImageSectionTitleMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 870
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->adTitleTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 871
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->adTitleTv:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 872
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->adTitleTv:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 873
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->adTitleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    iget v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "\uc774\ubca4\ud2b8"

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 874
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->adTitleTv:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 875
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->adTitleTv:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 876
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->adTitleTv:Landroid/widget/TextView;

    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 877
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->adImageSectionLl:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->adTitleTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 879
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->adTitleTv:Landroid/widget/TextView;

    const/16 v3, 0x12

    invoke-static {v1, v2, v3}, Lcom/igaworks/adbrix/util/CPEConstant;->setTextViewSize(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 882
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->adImageSectionLl:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$16;

    invoke-direct {v2, p0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$16;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 892
    return-void

    .line 873
    :cond_0
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    iget v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public callback(Lcom/igaworks/model/ParticipationProgressResponseModel;)V
    .locals 6
    .param p1, "model"    # Lcom/igaworks/model/ParticipationProgressResponseModel;

    .prologue
    const/4 v1, 0x0

    .line 2012
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->onGetProgressModel:Z

    .line 2014
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressModels:Landroid/util/SparseArray;

    if-nez v2, :cond_0

    .line 2015
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressModels:Landroid/util/SparseArray;

    .line 2018
    :cond_0
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressModel:Lcom/igaworks/model/ParticipationProgressResponseModel;

    .line 2019
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressModels:Landroid/util/SparseArray;

    iget v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2021
    if-nez p1, :cond_1

    .line 2022
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const-string v2, "IGAW_QA"

    const-string v3, "Adbrix > get participation progress failed."

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2023
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->playBtnIv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->onFailBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2034
    :goto_0
    return-void

    .line 2027
    :cond_1
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adbrix > get participation progress result size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/igaworks/model/ParticipationProgressResponseModel;->getData()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/igaworks/model/ParticipationProgressResponseModel;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    invoke-static {v2, v3, v1, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2029
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->setProgressModel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2031
    :catch_0
    move-exception v0

    .line 2032
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public abstract changePromotionContents()V
.end method

.method public abstract finishDialog()V
.end method

.method public getActionListener()Lcom/igaworks/adbrix/cpe/common/DialogActionListener;
    .locals 1

    .prologue
    .line 2000
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->actionListener:Lcom/igaworks/adbrix/cpe/common/DialogActionListener;

    return-object v0
.end method

.method public getContainerOnLandscape()Landroid/view/View;
    .locals 31

    .prologue
    .line 375
    new-instance v22, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogRound:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogRound:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogRound:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogRound:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 376
    .local v22, "roundedCornerShape":Landroid/graphics/drawable/shapes/Shape;
    new-instance v21, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;

    const/4 v2, -0x1

    const/high16 v3, -0x1000000

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v4

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;III)V

    .line 378
    .local v21, "roundedCornerSd":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v12, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v12, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 379
    .local v12, "contentsContainerFl":Landroid/widget/FrameLayout;
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v3, 0x2a8

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v4, 0x1b6

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v3

    const/16 v4, 0x11

    invoke-direct {v13, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 380
    .local v13, "contentsContainerFlParam":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v14, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 383
    .local v14, "contentsContainerLl":Landroid/widget/LinearLayout;
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v3, 0x28f

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v4, 0x19c

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v3

    const/16 v4, 0x11

    invoke-direct {v15, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 384
    .local v15, "contentsContainerLlParam":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->contentsMainLl:Landroid/widget/LinearLayout;

    .line 388
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v3, 0x28f

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v2

    const/4 v3, -0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 389
    .local v16, "contentsMainParam":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->contentsMainLl:Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->contentsMainLl:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->contentsMainLl:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 393
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 394
    .local v17, "mainLeftLl":Landroid/widget/LinearLayout;
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v3, 0x1ce

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v2

    const/4 v3, -0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 395
    .local v18, "mainLeftLlParam":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 396
    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->adImageSectionLl:Landroid/widget/LinearLayout;

    .line 400
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v9, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 401
    .local v9, "adImageSectionParam":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->adImageSectionLl:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->adImageSectionLl:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->adImageSectionLl:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->adImageSectionLl:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogMainPadding:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogMainPadding:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->adImageSectionPadding:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogMainPadding:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 406
    invoke-direct/range {p0 .. p0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->setTitleAndAdSlideView()V

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->adImageSectionLl:Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 410
    new-instance v2, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailListSv:Landroid/widget/HorizontalScrollView;

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailListSv:Landroid/widget/HorizontalScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailListSv:Landroid/widget/HorizontalScrollView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailListSv:Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailListPadding:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailListPadding:I

    div-int/lit8 v4, v4, 0x4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailListPadding:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailListPadding:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/HorizontalScrollView;->setPadding(IIII)V

    .line 414
    new-instance v26, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    move-object/from16 v0, v26

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 415
    .local v26, "thumbnailListSvParam":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailListSv:Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v3, 0x26

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v25

    .line 419
    .local v25, "stepRewardPadding":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v3, 0xc1

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v20

    .line 421
    .local v20, "rightWidth":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->showIcon:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->campaignKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 423
    invoke-direct/range {p0 .. p0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->setCampaignThumbnailListView()V

    .line 432
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailListSv:Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 434
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepLoadingFl:Landroid/widget/FrameLayout;

    .line 435
    new-instance v23, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 436
    .local v23, "stepLoadingFlParam":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepLoadingFl:Landroid/widget/FrameLayout;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/igaworks/util/CommonHelper;->CheckPermissionForCommonSDK(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->getImageDownloader(Landroid/content/Context;)Lcom/igaworks/util/image/ImageDownloader;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Theme;->getPlayBtnAreaBG()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    new-instance v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$4;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    .line 439
    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/Theme;->getPlayBtnAreaBG()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/igaworks/util/image/ImageCacheFactory;->getInstance()Lcom/igaworks/util/image/ImageCacheFactory;

    move-result-object v3

    const-string v6, "imagecache"

    invoke-virtual {v3, v6}, Lcom/igaworks/util/image/ImageCacheFactory;->get(Ljava/lang/String;)Lcom/igaworks/util/image/ImageCache;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$4;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;)V

    move-object v3, v8

    move-object/from16 v4, v27

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    move-object v8, v2

    .line 438
    invoke-virtual/range {v3 .. v8}, Lcom/igaworks/util/image/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/widget/FrameLayout;Lcom/igaworks/util/image/ImageDownloadAsyncCallback;)V

    .line 501
    :goto_1
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->notAvailableTv:Landroid/widget/TextView;

    .line 502
    new-instance v19, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/16 v3, 0x11

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 503
    .local v19, "notAvailableTvParam":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->notAvailableTv:Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->notAvailableTv:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->notAvailableTv:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->notAvailableTv:Landroid/widget/TextView;

    const/4 v3, 0x2

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 508
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepRewardContainer:Landroid/widget/LinearLayout;

    .line 509
    new-instance v24, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 510
    .local v24, "stepRewardContainerParam":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepRewardContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepRewardContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepRewardContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v25

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 514
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->setRewardView()Landroid/view/View;

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepLoadingFl:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->notAvailableTv:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepLoadingFl:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepRewardContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->contentsMainLl:Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->contentsMainLl:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepLoadingFl:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 522
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->closeBtnIv:Landroid/widget/ImageView;

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v3, 0x28

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v11

    .line 524
    .local v11, "closeBtnSize":I
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x5

    invoke-direct {v10, v11, v11, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 525
    .local v10, "closeBtnIvParam":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->closeBtnIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/igaworks/util/CommonHelper;->CheckPermissionForCommonSDK(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->getImageDownloader(Landroid/content/Context;)Lcom/igaworks/util/image/ImageDownloader;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Theme;->getCloseBtn()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressCircle:Landroid/widget/FrameLayout;

    move-object/from16 v30, v0

    new-instance v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$6;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    .line 528
    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/Theme;->getCloseBtn()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/igaworks/util/image/ImageCacheFactory;->getInstance()Lcom/igaworks/util/image/ImageCacheFactory;

    move-result-object v3

    const-string v6, "imagecache"

    invoke-virtual {v3, v6}, Lcom/igaworks/util/image/ImageCacheFactory;->get(Ljava/lang/String;)Lcom/igaworks/util/image/ImageCache;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressCircle:Landroid/widget/FrameLayout;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$6;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;)V

    move-object v3, v8

    move-object/from16 v4, v27

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    move-object v8, v2

    .line 527
    invoke-virtual/range {v3 .. v8}, Lcom/igaworks/util/image/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/widget/FrameLayout;Lcom/igaworks/util/image/ImageDownloadAsyncCallback;)V

    .line 566
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->closeBtnIv:Landroid/widget/ImageView;

    new-instance v3, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$8;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->contentsMainLl:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 576
    invoke-virtual {v12, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->closeBtnIv:Landroid/widget/ImageView;

    invoke-virtual {v12, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 579
    return-object v12

    .line 427
    .end local v10    # "closeBtnIvParam":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "closeBtnSize":I
    .end local v19    # "notAvailableTvParam":Landroid/widget/FrameLayout$LayoutParams;
    .end local v23    # "stepLoadingFlParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v24    # "stepRewardContainerParam":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v3, 0x1b6

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailItemSize:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailArrowSize:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailListPadding:I

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    iput v2, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v3, 0x19c

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailItemSize:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailArrowSize:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailListPadding:I

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    iput v2, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto/16 :goto_0

    .line 466
    .restart local v23    # "stepLoadingFlParam":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    sget-object v2, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$5;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 544
    .restart local v10    # "closeBtnIvParam":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v11    # "closeBtnSize":I
    .restart local v19    # "notAvailableTvParam":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v24    # "stepRewardContainerParam":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    sget-object v2, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$7;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method public getContainerOnPortrait()Landroid/view/View;
    .locals 32

    .prologue
    .line 585
    new-instance v27, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogRound:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogRound:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogRound:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogRound:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x6

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x7

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 586
    .local v27, "topRoundedCornerShape":Landroid/graphics/drawable/shapes/Shape;
    new-instance v26, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;

    const/4 v2, -0x1

    const/high16 v3, -0x1000000

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v4

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;III)V

    .line 588
    .local v26, "topRoundedCornerSd":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v14, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v14, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 589
    .local v14, "contentsContainerFl":Landroid/widget/FrameLayout;
    new-instance v17, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v3, 0x1bd

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v4, 0x258

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v3

    const/16 v4, 0x11

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 590
    .local v17, "contentsContainerParam":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 592
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v15, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 593
    .local v15, "contentsContainerLl":Landroid/widget/LinearLayout;
    new-instance v16, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v3, 0x19f

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v4, 0x23c

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v3

    const/16 v4, 0x11

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 594
    .local v16, "contentsContainerLlParam":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 596
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->contentsMainLl:Landroid/widget/LinearLayout;

    .line 597
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 598
    .local v18, "contentsMainParam":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->contentsMainLl:Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->contentsMainLl:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 602
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->adImageSectionLl:Landroid/widget/LinearLayout;

    .line 603
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v9, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 604
    .local v9, "adImageSectionParam":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->adImageSectionLl:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->adImageSectionLl:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->adImageSectionLl:Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->adImageSectionLl:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogMainPadding:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogMainPadding:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogMainPadding:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogMainPadding:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 609
    invoke-direct/range {p0 .. p0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->setTitleAndAdSlideView()V

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->contentsMainLl:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->adImageSectionLl:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 613
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepLoadingFl:Landroid/widget/FrameLayout;

    .line 614
    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v4, 0xb2

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v3

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 615
    .local v21, "stepLoadingFlParam":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepLoadingFl:Landroid/widget/FrameLayout;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 617
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->notAvailableTv:Landroid/widget/TextView;

    .line 618
    new-instance v19, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x11

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 619
    .local v19, "notAvailableTvParam":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->notAvailableTv:Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->notAvailableTv:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->notAvailableTv:Landroid/widget/TextView;

    const/4 v3, 0x2

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 624
    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepRewardContainer:Landroid/widget/LinearLayout;

    .line 625
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 626
    .local v22, "stepRewardContainerParam":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepRewardContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepRewardContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getStepReward()Ljava/util/List;

    move-result-object v20

    .line 630
    .local v20, "rewardList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/StepRewardModel;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->setRewardView()Landroid/view/View;

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepLoadingFl:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->notAvailableTv:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepLoadingFl:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepRewardContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->contentsMainLl:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepLoadingFl:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 637
    new-instance v23, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 638
    .local v23, "thumbnailListContainer":Landroid/widget/LinearLayout;
    new-instance v24, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    move-object/from16 v0, v24

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 639
    .local v24, "thumbnailListContainerParam":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 640
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 641
    move-object/from16 v0, p0

    iget v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailListPadding:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailListPadding:I

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailListPadding:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailListPadding:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 644
    new-instance v2, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailListSv:Landroid/widget/HorizontalScrollView;

    .line 645
    new-instance v25, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 646
    .local v25, "thumbnailListSvParam":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailListSv:Landroid/widget/HorizontalScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailListSv:Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 651
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->showIcon:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->campaignKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/igaworks/util/CommonHelper;->CheckPermissionForCommonSDK(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->getImageDownloader(Landroid/content/Context;)Lcom/igaworks/util/image/ImageDownloader;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Theme;->getPlayBtnAreaBG()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    new-instance v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$9;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    .line 654
    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/Theme;->getPlayBtnAreaBG()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/igaworks/util/image/ImageCacheFactory;->getInstance()Lcom/igaworks/util/image/ImageCacheFactory;

    move-result-object v3

    const-string v6, "imagecache"

    invoke-virtual {v3, v6}, Lcom/igaworks/util/image/ImageCacheFactory;->get(Ljava/lang/String;)Lcom/igaworks/util/image/ImageCache;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$9;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;)V

    move-object v3, v8

    move-object/from16 v4, v28

    move-object/from16 v5, v29

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object v8, v2

    .line 653
    invoke-virtual/range {v3 .. v8}, Lcom/igaworks/util/image/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/widget/FrameLayout;Lcom/igaworks/util/image/ImageDownloadAsyncCallback;)V

    .line 713
    :goto_0
    new-instance v11, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogRound:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogRound:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget v4, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogRound:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogRound:I

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v11, v2, v3, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 714
    .local v11, "bottomRoundedCornerShape":Landroid/graphics/drawable/shapes/Shape;
    new-instance v10, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;

    const/4 v2, -0x1

    const/high16 v3, -0x1000000

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v4

    invoke-direct {v10, v11, v2, v3, v4}, Lcom/igaworks/adbrix/cpe/common/CustomShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;III)V

    .line 715
    .local v10, "bottomRoundedCornerSd":Landroid/graphics/drawable/ShapeDrawable;
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v2

    move-object/from16 v0, v24

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 717
    invoke-direct/range {p0 .. p0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->setCampaignThumbnailListView()V

    .line 719
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailListSv:Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 720
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->contentsMainLl:Landroid/widget/LinearLayout;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 797
    .end local v10    # "bottomRoundedCornerSd":Landroid/graphics/drawable/ShapeDrawable;
    .end local v11    # "bottomRoundedCornerShape":Landroid/graphics/drawable/shapes/Shape;
    :goto_1
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->closeBtnIv:Landroid/widget/ImageView;

    .line 798
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v3, 0x28

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v13

    .line 799
    .local v13, "closeBtnSize":I
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x5

    invoke-direct {v12, v13, v13, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 800
    .local v12, "closeBtnIvParam":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->closeBtnIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 801
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/igaworks/util/CommonHelper;->CheckPermissionForCommonSDK(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 802
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->getImageDownloader(Landroid/content/Context;)Lcom/igaworks/util/image/ImageDownloader;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Theme;->getCloseBtn()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressCircle:Landroid/widget/FrameLayout;

    move-object/from16 v31, v0

    new-instance v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$13;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    .line 803
    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/Theme;->getCirclePlayBtn()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/igaworks/util/image/ImageCacheFactory;->getInstance()Lcom/igaworks/util/image/ImageCacheFactory;

    move-result-object v3

    const-string v6, "imagecache"

    invoke-virtual {v3, v6}, Lcom/igaworks/util/image/ImageCacheFactory;->get(Ljava/lang/String;)Lcom/igaworks/util/image/ImageCache;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressCircle:Landroid/widget/FrameLayout;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$13;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;)V

    move-object v3, v8

    move-object/from16 v4, v28

    move-object/from16 v5, v29

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object v8, v2

    .line 802
    invoke-virtual/range {v3 .. v8}, Lcom/igaworks/util/image/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/widget/FrameLayout;Lcom/igaworks/util/image/ImageDownloadAsyncCallback;)V

    .line 847
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->closeBtnIv:Landroid/widget/ImageView;

    new-instance v3, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$15;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 855
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->contentsMainLl:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 857
    invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 858
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->closeBtnIv:Landroid/widget/ImageView;

    invoke-virtual {v14, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 860
    return-object v14

    .line 679
    .end local v12    # "closeBtnIvParam":Landroid/widget/FrameLayout$LayoutParams;
    .end local v13    # "closeBtnSize":I
    :cond_0
    sget-object v2, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$10;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 726
    :cond_1
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 727
    move-object/from16 v0, v21

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogRound:I

    add-int/2addr v2, v3

    move-object/from16 v0, v21

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 730
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/igaworks/util/CommonHelper;->CheckPermissionForCommonSDK(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adbrix/cpe/CPECompletionHandler;->getImageDownloader(Landroid/content/Context;)Lcom/igaworks/util/image/ImageDownloader;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Theme;->getPlayBtnAreaBG()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    new-instance v2, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$11;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->media:Lcom/igaworks/adbrix/model/Media;

    .line 732
    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/Media;->getTheme()Lcom/igaworks/adbrix/model/Theme;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/Theme;->getPlayBtnAreaBG()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/igaworks/util/image/ImageCacheFactory;->getInstance()Lcom/igaworks/util/image/ImageCacheFactory;

    move-result-object v3

    const-string v6, "imagecache"

    invoke-virtual {v3, v6}, Lcom/igaworks/util/image/ImageCacheFactory;->get(Ljava/lang/String;)Lcom/igaworks/util/image/ImageCache;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$11;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;Ljava/lang/String;Landroid/widget/ImageView;Lcom/igaworks/util/image/ImageCache;Landroid/widget/FrameLayout;)V

    move-object v3, v8

    move-object/from16 v4, v28

    move-object/from16 v5, v29

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object v8, v2

    .line 731
    invoke-virtual/range {v3 .. v8}, Lcom/igaworks/util/image/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/widget/FrameLayout;Lcom/igaworks/util/image/ImageDownloadAsyncCallback;)V

    .line 792
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v3, 0x258

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailItemSize:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailArrowSize:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailListPadding:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, v17

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v3, 0x23c

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailItemSize:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailArrowSize:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailListPadding:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, v16

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto/16 :goto_1

    .line 758
    :cond_3
    sget-object v2, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$12;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 821
    .restart local v12    # "closeBtnIvParam":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v13    # "closeBtnSize":I
    :cond_4
    sget-object v2, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$14;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2
.end method

.method public getCurrentCampaignKey()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    return v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 3

    .prologue
    .line 354
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->containerLayout:Landroid/widget/FrameLayout;

    .line 358
    :try_start_0
    iget-boolean v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->isPortrait:Z

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->containerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->getContainerOnPortrait()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 364
    :goto_0
    iget v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    :goto_1
    invoke-virtual {p0, v1}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->setCurrentCampaign(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_2
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->containerLayout:Landroid/widget/FrameLayout;

    return-object v1

    .line 361
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->containerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->getContainerOnLandscape()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 364
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->campaignKeys:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    goto :goto_1
.end method

.method public onResume()V
    .locals 11

    .prologue
    .line 1860
    :try_start_0
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    iget v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getStepReward()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1862
    iget-boolean v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->onGetProgressModel:Z

    if-nez v2, :cond_1

    .line 1863
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v1

    .line 1864
    .local v1, "parameter":Lcom/igaworks/core/RequestParameter;
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->getManager(Landroid/content/Context;)Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-result-object v0

    .line 1865
    .local v0, "httpManager":Lcom/igaworks/adbrix/core/ADBrixHttpManager;
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/core/DeviceIDManger;->getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 1867
    .local v10, "puidCreator":Lcom/igaworks/core/DeviceIDManger;
    const/4 v6, 0x0

    .line 1871
    .local v6, "usn":Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 1872
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const-string v3, "persistantDemoForTracking"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1873
    .local v8, "demoPref":Landroid/content/SharedPreferences;
    const-string v2, "userId"

    const/4 v3, 0x0

    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 1880
    .end local v8    # "demoPref":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/igaworks/core/RequestParameter;->getAppkey()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    iget-object v5, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-virtual {v10, v5}, Lcom/igaworks/core/DeviceIDManger;->getAESPuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->getParticipationProgressForADBrix(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/igaworks/adbrix/interfaces/ParticipationProgressCallbackListener;)V

    .line 1882
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepLoadingFl:Landroid/widget/FrameLayout;

    invoke-direct {p0, v2, v3}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->addProgressCircle(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 1884
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->onGetProgressModel:Z

    .line 1892
    .end local v0    # "httpManager":Lcom/igaworks/adbrix/core/ADBrixHttpManager;
    .end local v1    # "parameter":Lcom/igaworks/core/RequestParameter;
    .end local v6    # "usn":Ljava/lang/String;
    .end local v10    # "puidCreator":Lcom/igaworks/core/DeviceIDManger;
    :cond_1
    :goto_1
    return-void

    .line 1876
    .restart local v0    # "httpManager":Lcom/igaworks/adbrix/core/ADBrixHttpManager;
    .restart local v1    # "parameter":Lcom/igaworks/core/RequestParameter;
    .restart local v6    # "usn":Ljava/lang/String;
    .restart local v10    # "puidCreator":Lcom/igaworks/core/DeviceIDManger;
    :catch_0
    move-exception v9

    .line 1877
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1889
    .end local v0    # "httpManager":Lcom/igaworks/adbrix/core/ADBrixHttpManager;
    .end local v1    # "parameter":Lcom/igaworks/core/RequestParameter;
    .end local v6    # "usn":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "puidCreator":Lcom/igaworks/core/DeviceIDManger;
    :catch_1
    move-exception v9

    .line 1890
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setActionListener(Lcom/igaworks/adbrix/cpe/common/DialogActionListener;)V
    .locals 0
    .param p1, "actionListener"    # Lcom/igaworks/adbrix/cpe/common/DialogActionListener;

    .prologue
    .line 2004
    iput-object p1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->actionListener:Lcom/igaworks/adbrix/cpe/common/DialogActionListener;

    .line 2005
    return-void
.end method

.method public setCurrentCampaign(I)V
    .locals 9
    .param p1, "campaignKey"    # I

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x5999

    const/16 v6, 0x5998

    const/16 v5, 0x4999

    .line 1701
    iput p1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    .line 1702
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    iget v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    iget v4, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getSlide()Lcom/igaworks/adbrix/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/SlideModel;->getResourceKey()I

    move-result v1

    iget-object v4, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->spaceKey:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->addImpression(Landroid/content/Context;IILjava/lang/String;)V

    .line 1704
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->campaignThumbnails:Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->campaignThumbnails:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1706
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->campaignKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1708
    .local v0, "item":I
    if-ne v0, p1, :cond_0

    .line 1709
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->campaignThumbnails:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1710
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->campaignThumbnails:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->roundedActiveThumbSd:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1711
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->campaignThumbnails:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1712
    iput-object v8, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressModel:Lcom/igaworks/model/ParticipationProgressResponseModel;

    .line 1713
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->setPlayBtnClickListener()V

    goto :goto_0

    .line 1716
    :cond_0
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->campaignThumbnails:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->setGrayScale(Landroid/widget/ImageView;)V

    .line 1717
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->campaignThumbnails:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->roundedInactiveThumbSd:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1718
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->campaignThumbnails:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1725
    .end local v0    # "item":I
    :cond_1
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    iget v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    iget v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    .line 1726
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getStepReward()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    iget v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    .line 1727
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getStepReward()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 1728
    :cond_2
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->setPlayBtnClickListener()V

    .line 1733
    :cond_3
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->contentsMainLl:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    .line 1734
    iget-object v1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->contentsMainLl:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 1736
    :cond_4
    return-void
.end method

.method public setCurrentCampaignKey(I)V
    .locals 0
    .param p1, "currentCampaignKey"    # I

    .prologue
    .line 291
    iput p1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    .line 292
    return-void
.end method

.method public setGrayScale(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "v"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1827
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1828
    .local v1, "matrix":Landroid/graphics/ColorMatrix;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 1829
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 1830
    .local v0, "cf":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1831
    return-void
.end method

.method public setGrayScale(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 1820
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1821
    .local v1, "matrix":Landroid/graphics/ColorMatrix;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 1822
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 1823
    .local v0, "cf":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1824
    return-void
.end method

.method public setIsPortrait(Z)V
    .locals 0
    .param p1, "isPortrait"    # Z

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->isPortrait:Z

    .line 349
    return-void
.end method

.method protected setPlayBtnClickListener()V
    .locals 11

    .prologue
    .line 1773
    :try_start_0
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v1

    .line 1774
    .local v1, "parameter":Lcom/igaworks/core/RequestParameter;
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    iget v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getStepReward()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressModel:Lcom/igaworks/model/ParticipationProgressResponseModel;

    if-nez v2, :cond_3

    .line 1776
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->playBtnIv:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->onReadyBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1778
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressModels:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressModels:Landroid/util/SparseArray;

    iget v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    .line 1779
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressModels:Landroid/util/SparseArray;

    iget v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igaworks/model/ParticipationProgressResponseModel;

    iput-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->progressModel:Lcom/igaworks/model/ParticipationProgressResponseModel;

    .line 1780
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->setProgressModel()V

    .line 1817
    .end local v1    # "parameter":Lcom/igaworks/core/RequestParameter;
    :cond_0
    :goto_0
    return-void

    .line 1783
    .restart local v1    # "parameter":Lcom/igaworks/core/RequestParameter;
    :cond_1
    iget-boolean v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->onGetProgressModel:Z

    if-nez v2, :cond_0

    .line 1784
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->getManager(Landroid/content/Context;)Lcom/igaworks/adbrix/core/ADBrixHttpManager;

    move-result-object v0

    .line 1785
    .local v0, "httpManager":Lcom/igaworks/adbrix/core/ADBrixHttpManager;
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/core/DeviceIDManger;->getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1787
    .local v10, "puidCreator":Lcom/igaworks/core/DeviceIDManger;
    const/4 v6, 0x0

    .line 1791
    .local v6, "usn":Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 1792
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const-string v3, "persistantDemoForTracking"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1793
    .local v8, "demoPref":Landroid/content/SharedPreferences;
    const-string v2, "userId"

    const/4 v3, 0x0

    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 1800
    .end local v8    # "demoPref":Landroid/content/SharedPreferences;
    :cond_2
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/igaworks/core/RequestParameter;->getAppkey()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    iget-object v5, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-virtual {v10, v5}, Lcom/igaworks/core/DeviceIDManger;->getAESPuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->getParticipationProgressForADBrix(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/igaworks/adbrix/interfaces/ParticipationProgressCallbackListener;)V

    .line 1802
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepLoadingFl:Landroid/widget/FrameLayout;

    invoke-direct {p0, v2, v3}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->addProgressCircle(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 1804
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->onGetProgressModel:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1814
    .end local v0    # "httpManager":Lcom/igaworks/adbrix/core/ADBrixHttpManager;
    .end local v1    # "parameter":Lcom/igaworks/core/RequestParameter;
    .end local v6    # "usn":Ljava/lang/String;
    .end local v10    # "puidCreator":Lcom/igaworks/core/DeviceIDManger;
    :catch_0
    move-exception v9

    .line 1815
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1796
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v0    # "httpManager":Lcom/igaworks/adbrix/core/ADBrixHttpManager;
    .restart local v1    # "parameter":Lcom/igaworks/core/RequestParameter;
    .restart local v6    # "usn":Ljava/lang/String;
    .restart local v10    # "puidCreator":Lcom/igaworks/core/DeviceIDManger;
    :catch_1
    move-exception v9

    .line 1797
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1810
    .end local v0    # "httpManager":Lcom/igaworks/adbrix/core/ADBrixHttpManager;
    .end local v6    # "usn":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "puidCreator":Lcom/igaworks/core/DeviceIDManger;
    :cond_3
    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->playBtnIv:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->landingBtnClickLisetner:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public setProgressModel()V
    .locals 2

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;

    invoke-direct {v1, p0}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator$32;-><init>(Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1997
    return-void
.end method

.method protected setRewardView()Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x112

    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v5, 0x1

    .line 896
    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->promotions:Landroid/util/SparseArray;

    iget v6, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->currentCampaignKey:I

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/igaworks/adbrix/model/Promotion;

    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/Promotion;->getDisplay()Lcom/igaworks/adbrix/model/PromotionDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/PromotionDisplay;->getStepReward()Ljava/util/List;

    move-result-object v1

    .line 898
    .local v1, "rewardList":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/adbrix/model/StepRewardModel;>;"
    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepRewardContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 900
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepListLl:Landroid/widget/LinearLayout;

    .line 901
    const/4 v2, 0x0

    .line 903
    .local v2, "stepListLlParam":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->isPortrait:Z

    if-eqz v3, :cond_4

    .line 904
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2    # "stepListLlParam":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    const/16 v6, 0x108

    invoke-static {v3, v6, v5}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v3

    invoke-direct {v2, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 906
    .restart local v2    # "stepListLlParam":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->showIcon:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->campaignKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x2

    if-ge v3, v6, :cond_1

    .line 907
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_1

    .line 908
    iget v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->dialogRound:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 933
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepListLl:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 934
    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepListLl:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 936
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v5, :cond_7

    .line 937
    :cond_2
    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepRewardContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 938
    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->notAvailableTv:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 940
    iget-boolean v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->isPortrait:Z

    if-nez v3, :cond_3

    .line 941
    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepRewardContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepListLl:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 942
    iget-boolean v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->isPortrait:Z

    if-eqz v3, :cond_6

    move v3, v4

    :goto_1
    invoke-direct {p0, v3}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->getDividerView(I)Landroid/view/View;

    move-result-object v0

    .line 943
    .local v0, "dividerView":Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 944
    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepRewardContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 947
    .end local v0    # "dividerView":Landroid/view/View;
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->setNonRewardView(I)V

    .line 954
    :goto_2
    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepListLl:Landroid/widget/LinearLayout;

    return-object v3

    .line 926
    :cond_4
    iget-boolean v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->showIcon:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->campaignKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_5

    .line 927
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2    # "stepListLlParam":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v3, v8, v5}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v3

    invoke-direct {v2, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v2    # "stepListLlParam":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_0

    .line 929
    :cond_5
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2    # "stepListLlParam":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->context:Landroid/content/Context;

    invoke-static {v3, v8, v5}, Lcom/igaworks/adbrix/util/CPEConstant;->convertPixelToDP(Landroid/content/Context;IZ)I

    move-result v3

    iget v6, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailItemSize:I

    sub-int/2addr v3, v6

    iget v6, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailArrowSize:I

    sub-int/2addr v3, v6

    iget v6, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->thumbnailListPadding:I

    sub-int/2addr v3, v6

    invoke-direct {v2, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v2    # "stepListLlParam":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_0

    :cond_6
    move v3, v5

    .line 942
    goto :goto_1

    .line 949
    :cond_7
    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepRewardContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepListLl:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 950
    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->stepRewardContainer:Landroid/widget/LinearLayout;

    iget-boolean v6, p0, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->isPortrait:Z

    if-eqz v6, :cond_8

    :goto_3
    invoke-direct {p0, v4}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->getDividerView(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 951
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/igaworks/adbrix/cpe/common/CommonDialogContentsCreator;->setMultiStepRewardView(I)V

    goto :goto_2

    :cond_8
    move v4, v5

    .line 950
    goto :goto_3
.end method

.method public abstract setSlideImageSection()V
.end method
