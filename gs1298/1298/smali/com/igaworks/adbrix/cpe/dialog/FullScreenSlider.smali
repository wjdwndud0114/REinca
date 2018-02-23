.class public Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;
.super Landroid/app/Dialog;
.source "FullScreenSlider.java"


# static fields
.field public static final SLIDE_AREA_ID:I = 0x6999

.field public static slider:Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;


# instance fields
.field private activity:Landroid/app/Activity;

.field private campaignKey:I

.field private currentSlideNo:I

.field private position:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "campaignKey"    # I
    .param p4, "position"    # I

    .prologue
    .line 24
    const v0, 0x103000c

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;->currentSlideNo:I

    .line 26
    iput p3, p0, Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;->campaignKey:I

    .line 27
    iput p4, p0, Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;->position:I

    .line 28
    iput-object p2, p0, Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;->activity:Landroid/app/Activity;

    .line 29
    return-void
.end method

.method private createView()V
    .locals 7

    .prologue
    const/4 v3, -0x1

    .line 66
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;->activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, "containerLayout":Landroid/widget/FrameLayout;
    const/16 v2, 0x6999

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 68
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 70
    .local v1, "containerLayoutParam":Landroid/view/ViewGroup$LayoutParams;
    sget-object v2, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual {v2}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v2

    if-nez v2, :cond_1

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;->dismiss()V

    .line 78
    :goto_0
    return-void

    .line 74
    :cond_1
    new-instance v2, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;

    iget-object v3, p0, Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;->activity:Landroid/app/Activity;

    iget v4, p0, Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;->campaignKey:I

    iget v5, p0, Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;->currentSlideNo:I

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/igaworks/adbrix/cpe/dialog/PlaceDetailsLayout;-><init>(Landroid/app/Activity;IIZ)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 76
    invoke-virtual {p0, v0, v1}, Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    .line 33
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;->requestWindowFeature(I)Z

    .line 35
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 37
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 39
    sput-object p0, Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;->slider:Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;

    .line 41
    iget v1, p0, Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;->campaignKey:I

    if-nez v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;->dismiss()V

    .line 61
    :goto_0
    return-void

    .line 48
    :cond_0
    if-eqz p1, :cond_1

    .line 49
    :try_start_0
    const-string v1, "slideNo"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;->currentSlideNo:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_1
    invoke-direct {p0}, Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;->createView()V

    goto :goto_0

    .line 51
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;->position:I

    iput v1, p0, Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;->currentSlideNo:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/dialog/FullScreenSlider;->dismiss()V

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
