.class public Lcom/igaworks/promotion/IgawPromotion;
.super Ljava/lang/Object;
.source "IgawPromotion.java"


# static fields
.field private static adbrixFrameWork:Lcom/igaworks/adbrix/interfaces/ADBrixInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/igaworks/adbrix/core/ADBrixUpdateLog;->updateVersion()V

    .line 19
    sget-object v0, Lcom/igaworks/promotion/IgawPromotion;->adbrixFrameWork:Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    if-nez v0, :cond_0

    .line 20
    invoke-static {}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkFactory;->getFramework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    sput-object v0, Lcom/igaworks/promotion/IgawPromotion;->adbrixFrameWork:Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    .line 23
    :cond_0
    sget-object v0, Lcom/igaworks/promotion/IgawPromotion;->adbrixFrameWork:Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    return-object v0
.end method

.method public static hideAD()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/igaworks/promotion/IgawPromotion;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->hideAD()V

    .line 47
    return-void
.end method

.method public static showAD(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 29
    invoke-static {}, Lcom/igaworks/promotion/IgawPromotion;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->showAD(Ljava/lang/String;Landroid/app/Activity;)V

    .line 31
    return-void
.end method

.method public static showAD(Ljava/lang/String;Landroid/app/Activity;Lcom/igaworks/adbrix/interfaces/ADBrixCallbackListener;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "onPlayBtnClickListener"    # Lcom/igaworks/adbrix/interfaces/ADBrixCallbackListener;

    .prologue
    .line 34
    invoke-static {}, Lcom/igaworks/promotion/IgawPromotion;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->showAD(Ljava/lang/String;Landroid/app/Activity;Lcom/igaworks/adbrix/interfaces/ADBrixCallbackListener;)V

    .line 36
    return-void
.end method

.method public static showAD(Ljava/lang/String;Landroid/app/Activity;Lcom/igaworks/adbrix/interfaces/PromotionActionListener;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "promotionActionListener"    # Lcom/igaworks/adbrix/interfaces/PromotionActionListener;

    .prologue
    .line 39
    invoke-static {}, Lcom/igaworks/promotion/IgawPromotion;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->showAD(Ljava/lang/String;Landroid/app/Activity;Lcom/igaworks/adbrix/interfaces/PromotionActionListener;)V

    .line 41
    return-void
.end method
