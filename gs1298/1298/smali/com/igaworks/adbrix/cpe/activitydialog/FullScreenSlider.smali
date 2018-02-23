.class public Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;
.super Landroid/support/v4/app/FragmentActivity;
.source "FullScreenSlider.java"


# static fields
.field public static final SLIDE_AREA_ID:I = 0x6999

.field public static slider:Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;


# instance fields
.field private campaignKey:I

.field private currentSlideNo:I

.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;->currentSlideNo:I

    return-void
.end method

.method private createView()V
    .locals 7

    .prologue
    const/16 v6, 0x6999

    const/4 v3, -0x1

    .line 67
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, "containerLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setId(I)V

    .line 69
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 71
    .local v1, "containerLayoutParam":Landroid/view/ViewGroup$LayoutParams;
    sget-object v3, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    invoke-virtual {v3}, Lcom/igaworks/adbrix/model/ScheduleContainer;->getSchedule()Lcom/igaworks/adbrix/model/Schedule;

    move-result-object v3

    if-nez v3, :cond_1

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;->finish()V

    .line 83
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 77
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget v3, p0, Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;->campaignKey:I

    iget v4, p0, Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;->currentSlideNo:I

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->newInstance(IIZ)Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 78
    const/16 v3, 0x1003

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 79
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 81
    invoke-virtual {p0, v0, v1}, Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 23
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sput-object p0, Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;->slider:Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;

    .line 27
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 28
    .local v1, "lpWindow":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 29
    const v2, 0x3f19999a    # 0.6f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 30
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 31
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 33
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 34
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 35
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 36
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->setFormat(I)V

    .line 37
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 39
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "campaignKey"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;->campaignKey:I

    .line 40
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "position"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;->position:I

    .line 42
    iget v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;->campaignKey:I

    if-nez v2, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;->finish()V

    .line 62
    :goto_0
    return-void

    .line 49
    :cond_0
    if-eqz p1, :cond_1

    .line 50
    :try_start_0
    const-string v2, "slideNo"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;->currentSlideNo:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_1
    invoke-direct {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;->createView()V

    goto :goto_0

    .line 52
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;->position:I

    iput v2, p0, Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;->currentSlideNo:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/igaworks/adbrix/cpe/activitydialog/FullScreenSlider;->finish()V

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 88
    sget-object v0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->pdFragment:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->pdFragment:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;

    iget-object v0, v0, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "slideNo"

    sget-object v1, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->pdFragment:Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;

    iget-object v1, v1, Lcom/igaworks/adbrix/cpe/activitydialog/PlaceDetailsFragment;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    :cond_0
    return-void
.end method
