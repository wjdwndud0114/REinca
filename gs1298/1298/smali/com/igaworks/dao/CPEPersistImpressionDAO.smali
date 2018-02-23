.class public Lcom/igaworks/dao/CPEPersistImpressionDAO;
.super Lcom/igaworks/dao/AbstractCPEImpressionDAO;
.source "CPEPersistImpressionDAO.java"


# static fields
.field protected static adspaceEditor:Landroid/content/SharedPreferences$Editor;

.field protected static adspaceSP:Landroid/content/SharedPreferences;

.field protected static engagementEditor:Landroid/content/SharedPreferences$Editor;

.field protected static engagementSP:Landroid/content/SharedPreferences;

.field protected static promotionEditor:Landroid/content/SharedPreferences$Editor;

.field protected static promotionSP:Landroid/content/SharedPreferences;

.field protected static singleton:Lcom/igaworks/dao/AbstractCPEImpressionDAO;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/igaworks/dao/AbstractCPEImpressionDAO;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/igaworks/dao/CPEPersistImpressionDAO;Landroid/content/Context;I)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/dao/CPEPersistImpressionDAO;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/igaworks/dao/CPEPersistImpressionDAO;->getSharedPreference(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/igaworks/dao/CPEPersistImpressionDAO;Landroid/content/Context;I)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/dao/CPEPersistImpressionDAO;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/igaworks/dao/CPEPersistImpressionDAO;->getEditor(Landroid/content/Context;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method private getEditor(Landroid/content/Context;I)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scheduleType"    # I

    .prologue
    .line 57
    packed-switch p2, :pswitch_data_0

    .line 80
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 59
    :pswitch_0
    sget-object v0, Lcom/igaworks/dao/CPEPersistImpressionDAO;->engagementEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/igaworks/dao/CPEPersistImpressionDAO;->getSharedPreference(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/igaworks/dao/CPEPersistImpressionDAO;->engagementEditor:Landroid/content/SharedPreferences$Editor;

    .line 63
    :cond_0
    sget-object v0, Lcom/igaworks/dao/CPEPersistImpressionDAO;->engagementEditor:Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 66
    :pswitch_1
    sget-object v0, Lcom/igaworks/dao/CPEPersistImpressionDAO;->promotionEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/igaworks/dao/CPEPersistImpressionDAO;->getSharedPreference(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/igaworks/dao/CPEPersistImpressionDAO;->promotionEditor:Landroid/content/SharedPreferences$Editor;

    .line 70
    :cond_1
    sget-object v0, Lcom/igaworks/dao/CPEPersistImpressionDAO;->promotionEditor:Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 73
    :pswitch_2
    sget-object v0, Lcom/igaworks/dao/CPEPersistImpressionDAO;->adspaceEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_2

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/igaworks/dao/CPEPersistImpressionDAO;->getSharedPreference(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/igaworks/dao/CPEPersistImpressionDAO;->adspaceEditor:Landroid/content/SharedPreferences$Editor;

    .line 77
    :cond_2
    sget-object v0, Lcom/igaworks/dao/CPEPersistImpressionDAO;->adspaceEditor:Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance()Lcom/igaworks/dao/AbstractCPEImpressionDAO;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/igaworks/dao/CPEPersistImpressionDAO;->singleton:Lcom/igaworks/dao/AbstractCPEImpressionDAO;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/igaworks/dao/CPEPersistImpressionDAO;

    invoke-direct {v0}, Lcom/igaworks/dao/CPEPersistImpressionDAO;-><init>()V

    sput-object v0, Lcom/igaworks/dao/CPEPersistImpressionDAO;->singleton:Lcom/igaworks/dao/AbstractCPEImpressionDAO;

    .line 21
    :cond_0
    sget-object v0, Lcom/igaworks/dao/CPEPersistImpressionDAO;->singleton:Lcom/igaworks/dao/AbstractCPEImpressionDAO;

    return-object v0
.end method

.method private getSharedPreference(Landroid/content/Context;I)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scheduleType"    # I

    .prologue
    const/4 v1, 0x0

    .line 26
    packed-switch p2, :pswitch_data_0

    .line 48
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 28
    :pswitch_0
    sget-object v0, Lcom/igaworks/dao/CPEPersistImpressionDAO;->engagementSP:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 29
    const-string v0, "persist_cpe_counter"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/igaworks/dao/CPEPersistImpressionDAO;->engagementSP:Landroid/content/SharedPreferences;

    .line 32
    :cond_0
    sget-object v0, Lcom/igaworks/dao/CPEPersistImpressionDAO;->engagementSP:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 35
    :pswitch_1
    sget-object v0, Lcom/igaworks/dao/CPEPersistImpressionDAO;->promotionSP:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 36
    const-string v0, "persist_promotion_counter"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/igaworks/dao/CPEPersistImpressionDAO;->promotionSP:Landroid/content/SharedPreferences;

    .line 39
    :cond_1
    sget-object v0, Lcom/igaworks/dao/CPEPersistImpressionDAO;->promotionSP:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 42
    :pswitch_2
    sget-object v0, Lcom/igaworks/dao/CPEPersistImpressionDAO;->adspaceSP:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    .line 43
    const-string v0, "persist_ad_space_counter"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/igaworks/dao/CPEPersistImpressionDAO;->adspaceSP:Landroid/content/SharedPreferences;

    .line 46
    :cond_2
    sget-object v0, Lcom/igaworks/dao/CPEPersistImpressionDAO;->adspaceSP:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public clearImpressionData(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    return-void
.end method

.method public getImpressionData(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scheduleType"    # I
    .param p3, "targetStorageKey"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Lcom/igaworks/dao/CPEPersistImpressionDAO;->getSharedPreference(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 139
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::--::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public increaseImpressionData(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scheduleType"    # I
    .param p3, "targetStorageKey"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/igaworks/dao/CPEPersistImpressionDAO$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/dao/CPEPersistImpressionDAO$1;-><init>(Lcom/igaworks/dao/CPEPersistImpressionDAO;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 100
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 102
    return-void
.end method

.method public removeImpressionData(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scheduleType"    # I
    .param p3, "targetStorageKey"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/igaworks/dao/CPEPersistImpressionDAO$3;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/igaworks/dao/CPEPersistImpressionDAO$3;-><init>(Lcom/igaworks/dao/CPEPersistImpressionDAO;Landroid/content/Context;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 131
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 133
    return-void
.end method

.method public setImpressionData(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scheduleType"    # I
    .param p3, "targetStorageKey"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    .line 107
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/igaworks/dao/CPEPersistImpressionDAO$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/igaworks/dao/CPEPersistImpressionDAO$2;-><init>(Lcom/igaworks/dao/CPEPersistImpressionDAO;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 116
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 118
    return-void
.end method
