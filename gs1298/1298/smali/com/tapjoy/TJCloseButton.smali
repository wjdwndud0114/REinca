.class public Lcom/tapjoy/TJCloseButton;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJCloseButton$ClosePosition;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/tapjoy/TJCloseButton$ClosePosition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/tapjoy/TJCloseButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TJCloseButton;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    sget-object v0, Lcom/tapjoy/TJCloseButton$ClosePosition;->TOP_RIGHT:Lcom/tapjoy/TJCloseButton$ClosePosition;

    invoke-direct {p0, p1, v0}, Lcom/tapjoy/TJCloseButton;-><init>(Landroid/content/Context;Lcom/tapjoy/TJCloseButton$ClosePosition;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tapjoy/TJCloseButton$ClosePosition;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "closePosition"    # Lcom/tapjoy/TJCloseButton$ClosePosition;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p2, p0, Lcom/tapjoy/TJCloseButton;->b:Lcom/tapjoy/TJCloseButton$ClosePosition;

    .line 56
    const-string v0, "tj_close_button.png"

    invoke-static {v0, p1}, Lcom/tapjoy/TapjoyUtil;->loadBitmapFromJar(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 58
    if-nez v0, :cond_0

    .line 61
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "tj_close_button"

    const-string v3, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 68
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCloseButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 69
    const v0, 0xffffff

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCloseButton;->setBackgroundColor(I)V

    .line 71
    iget-object v0, p0, Lcom/tapjoy/TJCloseButton;->b:Lcom/tapjoy/TJCloseButton$ClosePosition;

    .line 1041
    iget-object v0, v0, Lcom/tapjoy/TJCloseButton$ClosePosition;->a:Landroid/widget/RelativeLayout$LayoutParams;

    .line 71
    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCloseButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    return-void

    .line 64
    :catch_0
    move-exception v1

    sget-object v1, Lcom/tapjoy/TJCloseButton;->a:Ljava/lang/String;

    const-string v2, "Could not find close button asset"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCloseButton;->setAlpha(F)V

    .line 80
    invoke-virtual {p0, v2}, Lcom/tapjoy/TJCloseButton;->setVisibility(I)V

    .line 81
    invoke-virtual {p0, v2}, Lcom/tapjoy/TJCloseButton;->setClickable(Z)V

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 86
    new-instance v1, Lcom/tapjoy/TJCloseButton$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJCloseButton$1;-><init>(Lcom/tapjoy/TJCloseButton;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    :cond_0
    return-void
.end method
