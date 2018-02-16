.class public Lcom/google/unity/ads/PluginUtils;
.super Ljava/lang/Object;
.source "PluginUtils.java"


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "AdsUnity"

.field private static final POSITION_BOTTOM:I = 0x1

.field private static final POSITION_BOTTOM_LEFT:I = 0x4

.field private static final POSITION_BOTTOM_RIGHT:I = 0x5

.field private static final POSITION_CENTER:I = 0x6

.field public static final POSITION_CUSTOM:I = -0x1

.field private static final POSITION_TOP:I = 0x0

.field private static final POSITION_TOP_LEFT:I = 0x2

.field private static final POSITION_TOP_RIGHT:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDpToPixel(F)F
    .locals 3
    .param p0, "dp"    # F

    .prologue
    .line 141
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 142
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, p0, v2

    .line 143
    .local v1, "px":F
    return v1
.end method

.method public static convertPixelsToDp(F)F
    .locals 3
    .param p0, "px"    # F

    .prologue
    .line 135
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 136
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v0, p0, v2

    .line 137
    .local v0, "dp":F
    return v0
.end method

.method public static getErrorReason(I)Ljava/lang/String;
    .locals 5
    .param p0, "errorCode"    # I

    .prologue
    .line 82
    packed-switch p0, :pswitch_data_0

    .line 92
    const-string v0, "AdsUnity"

    const-string v1, "Unexpected error code: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v0, ""

    :goto_0
    return-object v0

    .line 84
    :pswitch_0
    const-string v0, "Internal error"

    goto :goto_0

    .line 86
    :pswitch_1
    const-string v0, "Invalid request"

    goto :goto_0

    .line 88
    :pswitch_2
    const-string v0, "Network Error"

    goto :goto_0

    .line 90
    :pswitch_3
    const-string v0, "No fill"

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getLayoutGravityForPositionCode(I)I
    .locals 3
    .param p0, "positionCode"    # I

    .prologue
    .line 105
    packed-switch p0, :pswitch_data_0

    .line 128
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Attempted to position ad with invalid ad position."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :pswitch_0
    const/16 v0, 0x31

    .line 131
    .local v0, "gravity":I
    :goto_0
    return v0

    .line 110
    .end local v0    # "gravity":I
    :pswitch_1
    const/16 v0, 0x51

    .line 111
    .restart local v0    # "gravity":I
    goto :goto_0

    .line 113
    .end local v0    # "gravity":I
    :pswitch_2
    const/16 v0, 0x33

    .line 114
    .restart local v0    # "gravity":I
    goto :goto_0

    .line 116
    .end local v0    # "gravity":I
    :pswitch_3
    const/16 v0, 0x35

    .line 117
    .restart local v0    # "gravity":I
    goto :goto_0

    .line 119
    .end local v0    # "gravity":I
    :pswitch_4
    const/16 v0, 0x53

    .line 120
    .restart local v0    # "gravity":I
    goto :goto_0

    .line 122
    .end local v0    # "gravity":I
    :pswitch_5
    const/16 v0, 0x55

    .line 123
    .restart local v0    # "gravity":I
    goto :goto_0

    .line 125
    .end local v0    # "gravity":I
    :pswitch_6
    const/16 v0, 0x11

    .line 126
    .restart local v0    # "gravity":I
    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
