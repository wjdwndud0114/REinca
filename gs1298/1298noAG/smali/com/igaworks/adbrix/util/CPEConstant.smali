.class public Lcom/igaworks/adbrix/util/CPEConstant;
.super Ljava/lang/Object;
.source "CPEConstant.java"


# static fields
.field public static final BASE_HEIGHT:F = 800.0f

.field public static final BASE_WIDTH:F = 480.0f

.field public static final CLOSE_BTN:Ljava/lang/String; = "http://static.adbrix.igaworks.com/adbrix_res/sdk_res/popup_close_bt.png"

.field public static final DIALOG_AD_IMG_SECTION_PADDING:I = 0x4

.field public static final DIALOG_AD_IMG_TITLE_MARGIN:I = 0x4

.field public static final DIALOG_CLOSE_BTN_SIZE:I = 0x28

.field public static final DIALOG_DIVIDER_HEIGHT:I = 0x1

.field public static final DIALOG_MAIN_PADDING:I = 0xa

.field public static final DIALOG_MARGIN:I = 0xa

.field public static final DIALOG_NEXT_ARROW_SIZE:I = 0xe

.field public static final DIALOG_ONE_STEP_DESC_LL_PADDING:I = 0xa

.field public static final DIALOG_ONE_STEP_ITEM_HEIGHT_LANDSCAPE:I = 0x26

.field public static final DIALOG_ONE_STEP_ITEM_HEIGHT_PORTRAIT:I = 0x26

.field public static final DIALOG_ONE_STEP_MARGIN_ITEM:I = 0x2

.field public static final DIALOG_ONE_STEP_TV_ROUND_LANDSCAPE:I = 0x12

.field public static final DIALOG_ONE_STEP_TV_ROUND_PORTRAIT:I = 0x12

.field public static final DIALOG_ONE_STEP_TV_TEXT_SIZE:I = 0xd

.field public static final DIALOG_PLAY_BTN_HEIGHT_PORTRAIT:I = 0x50

.field public static final DIALOG_PLAY_BTN_LL_PADDING_LANDSCAPE:I = 0xa

.field public static final DIALOG_PLAY_BTN_LL_PADDING_PORTRAIT:I = 0x5

.field public static final DIALOG_REWARD_HEIGHT_PORTRAIT:I = 0xb2

.field public static final DIALOG_REWARD_IV_MINIMUM_WIDTH:I = 0x14

.field public static final DIALOG_ROUND_DEGREE:I = 0xd

.field public static final DIALOG_STEP_REWARD_COLUMN_MARGIN:I = 0x7

.field public static final DIALOG_STEP_REWARD_ROW_PADDING:I = 0x5

.field public static final DIALOG_STEP_TITLE_TEXT_SIZE:I = 0xf

.field public static final DIALOG_THUMBNAIL_ARROW_SIZE:I = 0x8

.field public static final DIALOG_THUMBNAIL_BORDER_WIDTH:I = 0x4

.field public static final DIALOG_THUMBNAIL_ITEM_MARGIN_LANDSCAPE:I = 0xc

.field public static final DIALOG_THUMBNAIL_ITEM_MARGIN_PORTRAIT:I = 0x6

.field public static final DIALOG_THUMBNAIL_ITEM_SIZE:I = 0x46

.field public static final DIALOG_THUMBNAIL_LIST_PADDING:I = 0xa

.field public static final DIALOG_THUMBNAIL_ROUND:I = 0xe

.field public static final DIALOG_TITLE_SIZE:I = 0x14

.field public static final DIALOG_TITLE_SIZE_WITH_ICONS:I = 0x12

.field public static final FIRST_UNIT_BG_COLOR_FOR_ONE_STEP:Ljava/lang/String; = "#24e6e8"

.field public static final MISSION_CHECK_OFF:Ljava/lang/String; = "http://static.adbrix.igaworks.com/adbrix_res/sdk_res/mission_check_off.png"

.field public static final MISSION_CHECK_ON:Ljava/lang/String; = "http://static.adbrix.igaworks.com/adbrix_res/sdk_res/mission_check_on.png"

.field public static final NOT_AVAILABLE_CAMPAIGN:I = 0xd

.field public static final PAGE_INDICATOR_RADIUS:I = 0x6

.field public static final PAGE_INDICATOR_STROKE_WIDTH:I = 0x1

.field public static final PLAY_BTN_AREA_BG:Ljava/lang/String; = "http://static.adbrix.igaworks.com/adbrix_res/sdk_res/bg_pt.png"

.field public static final PLAY_BTN_AREA_BG_SIZE:I = 0x19

.field public static final PLAY_BTN_CIRCLE:Ljava/lang/String; = "http://static.adbrix.igaworks.com/adbrix_res/sdk_res/play_bt_circle.png"

.field public static final PLAY_BTN_SQUARE:Ljava/lang/String; = "http://static.adbrix.igaworks.com/adbrix_res/sdk_res/play_bt_square.png"

.field public static final REWARD_UNIT_BG_COLOR_FOR_ONE_STEP:Ljava/lang/String; = "#fbd348"

.field public static final SECOND_UNIT_BG_COLOR_FOR_ONE_STEP:Ljava/lang/String; = "#24e6e8"

.field public static final SELECTED_APP_ARROW:Ljava/lang/String; = "http://static.adbrix.igaworks.com/adbrix_res/sdk_res/app_select_arrow.png"

.field public static final SLIDE_LEFT_BTN:Ljava/lang/String; = "http://static.adbrix.igaworks.com/adbrix_res/sdk_res/img_slide_left.png"

.field public static final SLIDE_RIGHT_BTN:Ljava/lang/String; = "http://static.adbrix.igaworks.com/adbrix_res/sdk_res/img_slide_right.png"

.field public static final STEP_ARROW:Ljava/lang/String; = "http://static.adbrix.igaworks.com/adbrix_res/sdk_res/step_arrow.png"

.field public static final WINDOW_PADDING:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calNormPixel(Landroid/content/Context;IZ)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # I
    .param p2, "isX"    # Z

    .prologue
    const/high16 v8, 0x44480000    # 800.0f

    const/high16 v7, 0x43f00000    # 480.0f

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 129
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 131
    .local v2, "height":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 136
    :cond_0
    int-to-float v5, v4

    div-float v0, v5, v7

    .line 137
    .local v0, "difX":F
    int-to-float v5, v2

    div-float v1, v5, v8

    .line 139
    .local v1, "difY":F
    cmpl-float v5, v0, v1

    if-eqz v5, :cond_1

    .line 140
    move v1, v0

    .line 143
    :cond_1
    move v3, p1

    .line 145
    .local v3, "norPx":I
    if-eqz p2, :cond_2

    .line 146
    mul-int v5, p1, v4

    int-to-float v5, v5

    div-float/2addr v5, v7

    float-to-int v3, v5

    .line 151
    :goto_0
    return v3

    .line 148
    :cond_2
    mul-int v5, p1, v2

    int-to-float v5, v5

    div-float/2addr v5, v8

    float-to-int v3, v5

    goto :goto_0
.end method

.method public static calculateDpSize(Landroid/content/Context;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # F

    .prologue
    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static calculateTextSize(Landroid/content/Context;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # F

    .prologue
    .line 73
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static convertPixelToDP(Landroid/content/Context;IZ)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # I
    .param p2, "isX"    # Z

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 90
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 92
    .local v2, "height":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 97
    :cond_0
    int-to-float v5, v4

    const/high16 v6, 0x43f00000    # 480.0f

    div-float v0, v5, v6

    .line 98
    .local v0, "difX":F
    int-to-float v5, v2

    const/high16 v6, 0x44480000    # 800.0f

    div-float v1, v5, v6

    .line 100
    .local v1, "difY":F
    cmpl-float v5, v0, v1

    if-eqz v5, :cond_1

    .line 101
    move v1, v0

    .line 104
    :cond_1
    int-to-float v3, p1

    .line 106
    .local v3, "norPx":F
    if-eqz p2, :cond_3

    .line 107
    int-to-float v5, p1

    mul-float v3, v5, v0

    .line 112
    :goto_0
    const/high16 v5, 0x3fc00000    # 1.5f

    cmpg-float v5, v3, v5

    if-gez v5, :cond_2

    .line 113
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 116
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v5, v3, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    return v5

    .line 109
    :cond_3
    int-to-float v5, p1

    mul-float v3, v5, v1

    goto :goto_0
.end method

.method public static setTextViewSize(Landroid/content/Context;Landroid/widget/TextView;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-static {p0, p2, v1}, Lcom/igaworks/adbrix/util/CPEConstant;->calNormPixel(Landroid/content/Context;IZ)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 124
    return-void
.end method
