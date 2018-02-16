.class public final enum Lcom/tapjoy/TJCloseButton$ClosePosition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCloseButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClosePosition"
.end annotation


# static fields
.field public static final enum BOTTOM_CENTER:Lcom/tapjoy/TJCloseButton$ClosePosition;

.field public static final enum BOTTOM_LEFT:Lcom/tapjoy/TJCloseButton$ClosePosition;

.field public static final enum BOTTOM_RIGHT:Lcom/tapjoy/TJCloseButton$ClosePosition;

.field public static final enum CENTER:Lcom/tapjoy/TJCloseButton$ClosePosition;

.field public static final enum TOP_CENTER:Lcom/tapjoy/TJCloseButton$ClosePosition;

.field public static final enum TOP_LEFT:Lcom/tapjoy/TJCloseButton$ClosePosition;

.field public static final enum TOP_RIGHT:Lcom/tapjoy/TJCloseButton$ClosePosition;

.field private static final synthetic b:[Lcom/tapjoy/TJCloseButton$ClosePosition;


# instance fields
.field final a:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 22
    new-instance v0, Lcom/tapjoy/TJCloseButton$ClosePosition;

    const-string v1, "TOP_LEFT"

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v5, v2}, Lcom/tapjoy/TJCloseButton$ClosePosition;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lcom/tapjoy/TJCloseButton$ClosePosition;->TOP_LEFT:Lcom/tapjoy/TJCloseButton$ClosePosition;

    .line 23
    new-instance v0, Lcom/tapjoy/TJCloseButton$ClosePosition;

    const-string v1, "TOP_CENTER"

    new-array v2, v4, [I

    fill-array-data v2, :array_1

    invoke-direct {v0, v1, v6, v2}, Lcom/tapjoy/TJCloseButton$ClosePosition;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lcom/tapjoy/TJCloseButton$ClosePosition;->TOP_CENTER:Lcom/tapjoy/TJCloseButton$ClosePosition;

    .line 24
    new-instance v0, Lcom/tapjoy/TJCloseButton$ClosePosition;

    const-string v1, "TOP_RIGHT"

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    invoke-direct {v0, v1, v4, v2}, Lcom/tapjoy/TJCloseButton$ClosePosition;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lcom/tapjoy/TJCloseButton$ClosePosition;->TOP_RIGHT:Lcom/tapjoy/TJCloseButton$ClosePosition;

    .line 25
    new-instance v0, Lcom/tapjoy/TJCloseButton$ClosePosition;

    const-string v1, "CENTER"

    new-array v2, v6, [I

    const/16 v3, 0xd

    aput v3, v2, v5

    invoke-direct {v0, v1, v7, v2}, Lcom/tapjoy/TJCloseButton$ClosePosition;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lcom/tapjoy/TJCloseButton$ClosePosition;->CENTER:Lcom/tapjoy/TJCloseButton$ClosePosition;

    .line 26
    new-instance v0, Lcom/tapjoy/TJCloseButton$ClosePosition;

    const-string v1, "BOTTOM_LEFT"

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    invoke-direct {v0, v1, v8, v2}, Lcom/tapjoy/TJCloseButton$ClosePosition;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lcom/tapjoy/TJCloseButton$ClosePosition;->BOTTOM_LEFT:Lcom/tapjoy/TJCloseButton$ClosePosition;

    .line 27
    new-instance v0, Lcom/tapjoy/TJCloseButton$ClosePosition;

    const-string v1, "BOTTOM_CENTER"

    const/4 v2, 0x5

    new-array v3, v4, [I

    fill-array-data v3, :array_4

    invoke-direct {v0, v1, v2, v3}, Lcom/tapjoy/TJCloseButton$ClosePosition;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lcom/tapjoy/TJCloseButton$ClosePosition;->BOTTOM_CENTER:Lcom/tapjoy/TJCloseButton$ClosePosition;

    .line 28
    new-instance v0, Lcom/tapjoy/TJCloseButton$ClosePosition;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v2, 0x6

    new-array v3, v4, [I

    fill-array-data v3, :array_5

    invoke-direct {v0, v1, v2, v3}, Lcom/tapjoy/TJCloseButton$ClosePosition;-><init>(Ljava/lang/String;I[I)V

    sput-object v0, Lcom/tapjoy/TJCloseButton$ClosePosition;->BOTTOM_RIGHT:Lcom/tapjoy/TJCloseButton$ClosePosition;

    .line 21
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/tapjoy/TJCloseButton$ClosePosition;

    sget-object v1, Lcom/tapjoy/TJCloseButton$ClosePosition;->TOP_LEFT:Lcom/tapjoy/TJCloseButton$ClosePosition;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tapjoy/TJCloseButton$ClosePosition;->TOP_CENTER:Lcom/tapjoy/TJCloseButton$ClosePosition;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tapjoy/TJCloseButton$ClosePosition;->TOP_RIGHT:Lcom/tapjoy/TJCloseButton$ClosePosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tapjoy/TJCloseButton$ClosePosition;->CENTER:Lcom/tapjoy/TJCloseButton$ClosePosition;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tapjoy/TJCloseButton$ClosePosition;->BOTTOM_LEFT:Lcom/tapjoy/TJCloseButton$ClosePosition;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/tapjoy/TJCloseButton$ClosePosition;->BOTTOM_CENTER:Lcom/tapjoy/TJCloseButton$ClosePosition;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tapjoy/TJCloseButton$ClosePosition;->BOTTOM_RIGHT:Lcom/tapjoy/TJCloseButton$ClosePosition;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tapjoy/TJCloseButton$ClosePosition;->b:[Lcom/tapjoy/TJCloseButton$ClosePosition;

    return-void

    .line 22
    :array_0
    .array-data 4
        0xa
        0x9
    .end array-data

    .line 23
    :array_1
    .array-data 4
        0xa
        0xe
    .end array-data

    .line 24
    :array_2
    .array-data 4
        0xa
        0xb
    .end array-data

    .line 26
    :array_3
    .array-data 4
        0xc
        0x9
    .end array-data

    .line 27
    :array_4
    .array-data 4
        0xc
        0xe
    .end array-data

    .line 28
    :array_5
    .array-data 4
        0xc
        0xb
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[I)V
    .locals 5
    .param p3, "layoutParams"    # [I

    .prologue
    const/4 v2, -0x2

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/tapjoy/TJCloseButton$ClosePosition;->a:Landroid/widget/RelativeLayout$LayoutParams;

    .line 33
    array-length v2, p3

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p3, v0

    .line 34
    iget-object v4, p0, Lcom/tapjoy/TJCloseButton$ClosePosition;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    const/high16 v0, -0x3ee00000    # -10.0f

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getDeviceScreenDensityScale()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 37
    iget-object v2, p0, Lcom/tapjoy/TJCloseButton$ClosePosition;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, v1, v0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/TJCloseButton$ClosePosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/tapjoy/TJCloseButton$ClosePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJCloseButton$ClosePosition;

    return-object v0
.end method

.method public static values()[Lcom/tapjoy/TJCloseButton$ClosePosition;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/tapjoy/TJCloseButton$ClosePosition;->b:[Lcom/tapjoy/TJCloseButton$ClosePosition;

    invoke-virtual {v0}, [Lcom/tapjoy/TJCloseButton$ClosePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/TJCloseButton$ClosePosition;

    return-object v0
.end method
