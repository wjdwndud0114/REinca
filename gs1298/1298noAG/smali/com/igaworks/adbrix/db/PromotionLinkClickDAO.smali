.class public Lcom/igaworks/adbrix/db/PromotionLinkClickDAO;
.super Ljava/lang/Object;
.source "PromotionLinkClickDAO.java"


# static fields
.field public static final LINK_CLICK_SP_NAME:Ljava/lang/String; = "link_click_sp"

.field private static singleton:Lcom/igaworks/adbrix/db/PromotionLinkClickDAO;


# instance fields
.field private clickEditor:Landroid/content/SharedPreferences$Editor;

.field private clickSP:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/igaworks/adbrix/db/PromotionLinkClickDAO;->clickEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 36
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/db/PromotionLinkClickDAO;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adbrix/db/PromotionLinkClickDAO;->clickEditor:Landroid/content/SharedPreferences$Editor;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/db/PromotionLinkClickDAO;->clickEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method public static getInstance()Lcom/igaworks/adbrix/db/PromotionLinkClickDAO;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/igaworks/adbrix/db/PromotionLinkClickDAO;->singleton:Lcom/igaworks/adbrix/db/PromotionLinkClickDAO;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/igaworks/adbrix/db/PromotionLinkClickDAO;

    invoke-direct {v0}, Lcom/igaworks/adbrix/db/PromotionLinkClickDAO;-><init>()V

    sput-object v0, Lcom/igaworks/adbrix/db/PromotionLinkClickDAO;->singleton:Lcom/igaworks/adbrix/db/PromotionLinkClickDAO;

    .line 21
    :cond_0
    sget-object v0, Lcom/igaworks/adbrix/db/PromotionLinkClickDAO;->singleton:Lcom/igaworks/adbrix/db/PromotionLinkClickDAO;

    return-object v0
.end method

.method private getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/igaworks/adbrix/db/PromotionLinkClickDAO;->clickSP:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 27
    const-string v0, "link_click_sp"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adbrix/db/PromotionLinkClickDAO;->clickSP:Landroid/content/SharedPreferences;

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/db/PromotionLinkClickDAO;->clickSP:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public getLinkClick(Landroid/content/Context;I)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "campaignKey"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/db/PromotionLinkClickDAO;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public saveLinkClick(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "campaignKey"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/db/PromotionLinkClickDAO;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/db/PromotionLinkClickDAO;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    return-void
.end method
