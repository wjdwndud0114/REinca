.class public abstract Lcom/tnkfactory/ad/c;
.super Lcom/tnkfactory/ad/AdLayout;


# instance fields
.field protected a:Lcom/tnkfactory/ad/TnkAdListener;

.field protected b:I

.field protected c:I

.field protected d:J

.field protected e:I

.field protected f:Z

.field private g:Z

.field private h:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/AdLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/ad/c;->a:Lcom/tnkfactory/ad/TnkAdListener;

    iput v1, p0, Lcom/tnkfactory/ad/c;->b:I

    iput v1, p0, Lcom/tnkfactory/ad/c;->c:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tnkfactory/ad/c;->d:J

    iput v2, p0, Lcom/tnkfactory/ad/c;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tnkfactory/ad/c;->f:Z

    iput-boolean v2, p0, Lcom/tnkfactory/ad/c;->g:Z

    iput v2, p0, Lcom/tnkfactory/ad/c;->h:I

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Ljava/lang/Class;)Landroid/view/View;
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v2, v0

    :cond_0
    :goto_1
    if-eqz v2, :cond_3

    :cond_1
    return-object v2

    :cond_2
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2}, Lcom/tnkfactory/ad/c;->a(Landroid/view/ViewGroup;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static a(Landroid/app/Activity;I)Lcom/tnkfactory/ad/c;
    .locals 2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/tnkfactory/ad/c;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tnkfactory/ad/c;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/tnkfactory/ad/f;

    invoke-direct {v0, p0, p1}, Lcom/tnkfactory/ad/f;-><init>(Lcom/tnkfactory/ad/c;Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/tnkfactory/ad/f;->a(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/tnkfactory/ad/c;->d()V

    return-void
.end method

.method static synthetic a(Lcom/tnkfactory/ad/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/tnkfactory/ad/c;->e()V

    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/tnkfactory/ad/c;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/tnkfactory/ad/c;->b:I

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/tnkfactory/ad/c;->b:I

    invoke-static {v0}, Lcom/tnkfactory/ad/eg;->a(I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/tnkfactory/ad/d;

    invoke-direct {v1, p0}, Lcom/tnkfactory/ad/d;-><init>(Lcom/tnkfactory/ad/c;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/c;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    invoke-virtual {p0, v2}, Lcom/tnkfactory/ad/c;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v2}, Lcom/tnkfactory/ad/c;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/tnkfactory/ad/c;->requestFocus()Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tnkfactory/ad/c;->b()V

    goto :goto_0
.end method

.method private e()V
    .locals 3

    invoke-virtual {p0}, Lcom/tnkfactory/ad/c;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    instance-of v1, v0, Lcom/tnkfactory/ad/f;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/tnkfactory/ad/f;

    invoke-virtual {v0}, Lcom/tnkfactory/ad/f;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DRFP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tnkfactory/ad/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tnkfactory/ad/c;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const-class v1, Landroid/opengl/GLSurfaceView;

    invoke-direct {p0, v0, v1}, Lcom/tnkfactory/ad/c;->a(Landroid/view/ViewGroup;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getCurrentInterstitialAdView(Landroid/app/Activity;)Lcom/tnkfactory/ad/c;
    .locals 1

    const/16 v0, 0x63

    invoke-static {p0, v0}, Lcom/tnkfactory/ad/c;->a(Landroid/app/Activity;I)Lcom/tnkfactory/ad/c;

    move-result-object v0

    return-object v0
.end method

.method public static removeCurrentInterstitialAdView(Landroid/app/Activity;Z)V
    .locals 2

    invoke-static {p0}, Lcom/tnkfactory/ad/c;->getCurrentInterstitialAdView(Landroid/app/Activity;)Lcom/tnkfactory/ad/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/tnkfactory/ad/c;->removeFromParentWithCloseEvent(ZI)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected getContainerView()Landroid/view/ViewGroup;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/tnkfactory/ad/c;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    instance-of v2, v0, Lcom/tnkfactory/ad/f;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/tnkfactory/ad/f;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/tnkfactory/ad/AdLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tnkfactory/ad/c;->g:Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/tnkfactory/ad/c;->g:Z

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/tnkfactory/ad/c;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tnkfactory/ad/c;->h:I

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_2

    iget-boolean v2, p0, Lcom/tnkfactory/ad/c;->g:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/tnkfactory/ad/c;->h:I

    if-lt v2, v0, :cond_1

    iput v1, p0, Lcom/tnkfactory/ad/c;->h:I

    iget-boolean v2, p0, Lcom/tnkfactory/ad/c;->f:Z

    if-eqz v2, :cond_0

    iput v1, p0, Lcom/tnkfactory/ad/c;->e:I

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/c;->removeFromParent(Z)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public parentLayout()Lcom/tnkfactory/ad/AdLayout;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public removeFromParent()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/c;->removeFromParent(Z)V

    return-void
.end method

.method public removeFromParent(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/tnkfactory/ad/c;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/tnkfactory/ad/c;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/tnkfactory/ad/c;->c:I

    invoke-static {v0}, Lcom/tnkfactory/ad/eg;->b(I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/tnkfactory/ad/e;

    invoke-direct {v1, p0}, Lcom/tnkfactory/ad/e;-><init>(Lcom/tnkfactory/ad/c;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/tnkfactory/ad/c;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    iget-object v0, p0, Lcom/tnkfactory/ad/c;->a:Lcom/tnkfactory/ad/TnkAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/ad/c;->a:Lcom/tnkfactory/ad/TnkAdListener;

    iget v1, p0, Lcom/tnkfactory/ad/c;->e:I

    invoke-interface {v0, v1}, Lcom/tnkfactory/ad/TnkAdListener;->onClose(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/tnkfactory/ad/c;->c()V

    invoke-direct {p0}, Lcom/tnkfactory/ad/c;->e()V

    invoke-virtual {p0}, Lcom/tnkfactory/ad/c;->a()V

    goto :goto_1
.end method

.method public removeFromParentWithCloseEvent(ZI)V
    .locals 0

    iput p2, p0, Lcom/tnkfactory/ad/c;->e:I

    invoke-virtual {p0, p1}, Lcom/tnkfactory/ad/c;->removeFromParent(Z)V

    return-void
.end method

.method public setAnimationType(II)V
    .locals 4

    const-wide/16 v2, 0xa

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    rem-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tnkfactory/ad/c;->b:I

    :goto_0
    if-nez p2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    rem-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tnkfactory/ad/c;->c:I

    :goto_1
    return-void

    :cond_0
    iput p1, p0, Lcom/tnkfactory/ad/c;->b:I

    goto :goto_0

    :cond_1
    iput p2, p0, Lcom/tnkfactory/ad/c;->c:I

    goto :goto_1
.end method

.method public setListener(Lcom/tnkfactory/ad/TnkAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/c;->a:Lcom/tnkfactory/ad/TnkAdListener;

    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tnkfactory/ad/c;->g:Z

    instance-of v0, p1, Landroid/app/NativeActivity;

    if-nez v0, :cond_0

    sget-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdInterstitial:Lcom/tnkfactory/ad/TnkAdInterstitialStyle;

    iget-boolean v0, v0, Lcom/tnkfactory/ad/TnkAdInterstitialStyle;->useWindowMode:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/c;->a(Landroid/app/Activity;)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tnkfactory/ad/c;->d:J

    iget-object v0, p0, Lcom/tnkfactory/ad/c;->a:Lcom/tnkfactory/ad/TnkAdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tnkfactory/ad/c;->a:Lcom/tnkfactory/ad/TnkAdListener;

    invoke-interface {v0}, Lcom/tnkfactory/ad/TnkAdListener;->onShow()V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/tnkfactory/ad/c;->b(Landroid/app/Activity;)V

    goto :goto_0
.end method
