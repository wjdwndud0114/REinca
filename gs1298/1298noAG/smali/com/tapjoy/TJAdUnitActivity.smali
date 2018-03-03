.class public Lcom/tapjoy/TJAdUnitActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJAdUnitActivity$a;
    }
.end annotation


# static fields
.field private static a:Lcom/tapjoy/TJAdUnitActivity;


# instance fields
.field private b:Lcom/tapjoy/TJAdUnit;

.field private c:Lcom/tapjoy/TJPlacementData;

.field private d:Lcom/tapjoy/TJAdUnitActivity$a;

.field private e:Lcom/tapjoy/TJAdUnitSaveStateData;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Lcom/tapjoy/TJCloseButton;

.field private h:Landroid/widget/ProgressBar;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    new-instance v0, Lcom/tapjoy/TJAdUnitSaveStateData;

    invoke-direct {v0}, Lcom/tapjoy/TJAdUnitSaveStateData;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->e:Lcom/tapjoy/TJAdUnitSaveStateData;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitActivity;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJAdUnitActivity;)Lcom/tapjoy/TJAdUnit;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    return-object v0
.end method

.method static a()V
    .locals 2

    .prologue
    .line 403
    sget-object v0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnitActivity;

    .line 404
    if-eqz v0, :cond_0

    .line 405
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnitActivity;->handleClose(Z)V

    .line 407
    :cond_0
    return-void
.end method


# virtual methods
.method public handleClose()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJAdUnitActivity;->handleClose(Z)V

    .line 232
    return-void
.end method

.method public handleClose(Z)V
    .locals 4
    .param p1, "shouldForceClose"    # Z

    .prologue
    .line 238
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getCloseRequested()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    const-string v0, "TJAdUnitActivity"

    const-string v1, "closeRequested"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJAdUnit;->closeRequested(Z)V

    .line 246
    new-instance v0, Lcom/tapjoy/TJAdUnitActivity$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJAdUnitActivity$1;-><init>(Lcom/tapjoy/TJAdUnitActivity;)V

    .line 256
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 257
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 259
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 396
    const/16 v0, 0x147

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "placement_data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    if-eqz v0, :cond_0

    .line 397
    const-string v0, "placement_data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJPlacementData;

    .line 398
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getCallbackID()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/tapjoy/TJAdUnit;->invokeBridgeCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->handleClose()V

    .line 228
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->handleClose()V

    .line 387
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0xd

    const/4 v7, -0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 56
    const-string v0, "TJAdUnitActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TJAdUnitActivity onCreate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sput-object p0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnitActivity;

    .line 61
    if-eqz p1, :cond_1

    .line 62
    const-string v0, "ad_unit_bundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJAdUnitSaveStateData;

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->e:Lcom/tapjoy/TJAdUnitSaveStateData;

    .line 63
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->e:Lcom/tapjoy/TJAdUnitSaveStateData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->e:Lcom/tapjoy/TJAdUnitSaveStateData;

    iget-boolean v0, v0, Lcom/tapjoy/TJAdUnitSaveStateData;->isVideoComplete:Z

    if-eqz v0, :cond_1

    .line 64
    const-string v0, "TJAdUnitActivity"

    const-string v1, "finishing TJAdUnitActivity"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->finish()V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_9

    const-string v1, "placement_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 78
    const-string v1, "placement_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJPlacementData;

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJPlacementData;

    .line 87
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getContentViewId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getContentViewId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/tapjoy/TapjoyConnectCore;->viewWillOpen(Ljava/lang/String;I)V

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;)Lcom/tapjoy/TJCorePlacement;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 93
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;)Lcom/tapjoy/TJCorePlacement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->getAdUnit()Lcom/tapjoy/TJAdUnit;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    .line 100
    :goto_1
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->hasCalledLoad()Z

    move-result v0

    if-nez v0, :cond_3

    .line 101
    const-string v0, "TJAdUnitActivity"

    const-string v1, "No content loaded for ad unit -- loading now"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0, v1, v4, p0}, Lcom/tapjoy/TJAdUnit;->load(Lcom/tapjoy/TJPlacementData;ZLandroid/content/Context;)V

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0, p0}, Lcom/tapjoy/TJAdUnit;->setAdUnitActivity(Lcom/tapjoy/TJAdUnitActivity;)V

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_b

    .line 110
    const v0, 0x1030005

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJAdUnitActivity;->setTheme(I)V

    .line 118
    :goto_2
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isUnitTestMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 122
    new-instance v0, Lcom/tapjoy/TJAdUnitActivity$a;

    invoke-direct {v0, p0, v4}, Lcom/tapjoy/TJAdUnitActivity$a;-><init>(Lcom/tapjoy/TJAdUnitActivity;B)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->d:Lcom/tapjoy/TJAdUnitActivity$a;

    .line 123
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->d:Lcom/tapjoy/TJAdUnitActivity$a;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TJAdUnitActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    :cond_4
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 128
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    .line 129
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 133
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getBackgroundWebView()Lcom/tapjoy/mraid/view/BasicWebView;

    move-result-object v2

    .line 134
    invoke-virtual {v2, v1}, Lcom/tapjoy/mraid/view/BasicWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    invoke-virtual {v2}, Lcom/tapjoy/mraid/view/BasicWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 138
    invoke-virtual {v2}, Lcom/tapjoy/mraid/view/BasicWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 142
    :cond_5
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getWebView()Lcom/tapjoy/mraid/view/MraidView;

    move-result-object v3

    .line 143
    invoke-virtual {v3, v1}, Lcom/tapjoy/mraid/view/MraidView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    invoke-virtual {v3}, Lcom/tapjoy/mraid/view/MraidView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 147
    invoke-virtual {v3}, Lcom/tapjoy/mraid/view/MraidView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 150
    :cond_6
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getVideoView()Landroid/widget/VideoView;

    move-result-object v1

    .line 151
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 152
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 153
    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    invoke-virtual {v1}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 157
    invoke-virtual {v1}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 161
    :cond_7
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 164
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 167
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 170
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x101007a

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Landroid/widget/ProgressBar;

    .line 173
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->hasProgressSpinner()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 174
    invoke-virtual {p0, v6}, Lcom/tapjoy/TJAdUnitActivity;->setProgressSpinnerVisibility(Z)V

    .line 180
    :goto_3
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 181
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 182
    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getWebView()Lcom/tapjoy/mraid/view/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->isMraid()Z

    move-result v0

    if-nez v0, :cond_8

    .line 187
    new-instance v0, Lcom/tapjoy/TJCloseButton;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJCloseButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Lcom/tapjoy/TJCloseButton;

    .line 188
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Lcom/tapjoy/TJCloseButton;

    invoke-virtual {v0, p0}, Lcom/tapjoy/TJCloseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Lcom/tapjoy/TJCloseButton;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 192
    :cond_8
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJAdUnitActivity;->setContentView(Landroid/view/View;)V

    .line 194
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0, v6}, Lcom/tapjoy/TJAdUnit;->setVisible(Z)V

    .line 197
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;)Lcom/tapjoy/TJCorePlacement;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->f()V

    goto/16 :goto_0

    .line 81
    :cond_9
    const-string v0, "TJAdUnitActivity"

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v3, "Failed to launch AdUnit Activity"

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 82
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->finish()V

    goto/16 :goto_0

    .line 96
    :cond_a
    new-instance v0, Lcom/tapjoy/TJAdUnit;

    invoke-direct {v0}, Lcom/tapjoy/TJAdUnit;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    goto/16 :goto_1

    .line 112
    :cond_b
    invoke-virtual {p0, v6}, Lcom/tapjoy/TJAdUnitActivity;->requestWindowFeature(I)Z

    .line 113
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 114
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    goto/16 :goto_2

    .line 176
    :cond_c
    invoke-virtual {p0, v4}, Lcom/tapjoy/TJAdUnitActivity;->setProgressSpinnerVisibility(Z)V

    goto/16 :goto_3
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 263
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 264
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TJAdUnitActivity;->a:Lcom/tapjoy/TJAdUnitActivity;

    .line 266
    const-string v0, "TJAdUnitActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->destroy()V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->d:Lcom/tapjoy/TJAdUnitActivity$a;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isUnitTestMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->d:Lcom/tapjoy/TJAdUnitActivity$a;

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJAdUnitActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJPlacementData;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->isBaseActivity()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getContentViewId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getContentViewId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->viewDidClose(Ljava/lang/String;)V

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;)Lcom/tapjoy/TJCorePlacement;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_3

    .line 284
    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->e()V

    .line 287
    :cond_3
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 318
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 319
    const-string v0, "TJAdUnitActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->pauseVideo()Z

    .line 322
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 291
    const-string v0, "TJAdUnitActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 295
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->isLockedOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJAdUnitActivity;->setRequestedOrientation(I)V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->e:Lcom/tapjoy/TJAdUnitSaveStateData;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnit;->resume(Lcom/tapjoy/TJAdUnitSaveStateData;)V

    .line 300
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 326
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 328
    const-string v0, "TJAdUnitActivity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->e:Lcom/tapjoy/TJAdUnitSaveStateData;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v1}, Lcom/tapjoy/TJAdUnit;->getVideoSeekTime()I

    move-result v1

    iput v1, v0, Lcom/tapjoy/TJAdUnitSaveStateData;->seekTime:I

    .line 331
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->e:Lcom/tapjoy/TJAdUnitSaveStateData;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->b:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v1}, Lcom/tapjoy/TJAdUnit;->isVideoComplete()Z

    move-result v1

    iput-boolean v1, v0, Lcom/tapjoy/TJAdUnitSaveStateData;->isVideoComplete:Z

    .line 333
    const-string v0, "ad_unit_bundle"

    iget-object v1, p0, Lcom/tapjoy/TJAdUnitActivity;->e:Lcom/tapjoy/TJAdUnitSaveStateData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 334
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 304
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 305
    const-string v0, "TJAdUnitActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/tapjoy/internal/fz;->a()Lcom/tapjoy/internal/fz;

    move-result-object v0

    .line 1952
    iget-boolean v0, v0, Lcom/tapjoy/internal/fz;->n:Z

    .line 307
    if-eqz v0, :cond_0

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitActivity;->i:Z

    .line 309
    invoke-static {p0}, Lcom/tapjoy/internal/fn;->a(Landroid/app/Activity;)V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->isBaseActivity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TJAdUnitActivity;->setResult(ILandroid/content/Intent;)V

    .line 314
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnitActivity;->i:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnitActivity;->i:Z

    .line 340
    invoke-static {p0}, Lcom/tapjoy/internal/fn;->b(Landroid/app/Activity;)V

    .line 343
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 344
    const-string v0, "TJAdUnitActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public setCloseButtonVisibility(Z)V
    .locals 2
    .param p1, "visibility"    # Z

    .prologue
    .line 207
    if-eqz p1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Lcom/tapjoy/TJCloseButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCloseButton;->setVisibility(I)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->g:Lcom/tapjoy/TJCloseButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCloseButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setProgressSpinnerVisibility(Z)V
    .locals 2
    .param p1, "visibility"    # Z

    .prologue
    .line 218
    if-eqz p1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitActivity;->h:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public showErrorDialog()V
    .locals 3

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnitActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "An error occured. Please try again later."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/tapjoy/TJAdUnitActivity$2;

    invoke-direct {v2, p0}, Lcom/tapjoy/TJAdUnitActivity$2;-><init>(Lcom/tapjoy/TJAdUnitActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 379
    :cond_0
    return-void
.end method
