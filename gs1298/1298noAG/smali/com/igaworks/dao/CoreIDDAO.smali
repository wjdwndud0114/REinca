.class public Lcom/igaworks/dao/CoreIDDAO;
.super Ljava/lang/Object;
.source "CoreIDDAO.java"


# static fields
.field public static final IGAWORKS_CORE_ID_SP:Ljava/lang/String; = "IgawCoreId"

.field public static final IGAWORKS_GOOGLE_ADID_KEY:Ljava/lang/String; = "Igaw_google_advertising_id"

.field public static final IGAWORKS_PUID_KEY:Ljava/lang/String; = "Igaw_puid"

.field private static isIntializing:Z

.field private static mGoogleAdIdDAO:Lcom/igaworks/dao/CoreIDDAO;


# instance fields
.field private IMEI:Ljava/lang/String;

.field private coreIdSP:Landroid/content/SharedPreferences;

.field private editor_coreIdSP:Landroid/content/SharedPreferences$Editor;

.field private googleAdId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/igaworks/dao/CoreIDDAO;->isIntializing:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/dao/CoreIDDAO;->googleAdId:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/igaworks/dao/CoreIDDAO;->IMEI:Ljava/lang/String;

    .line 28
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 12
    sget-boolean v0, Lcom/igaworks/dao/CoreIDDAO;->isIntializing:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 12
    sput-boolean p0, Lcom/igaworks/dao/CoreIDDAO;->isIntializing:Z

    return p0
.end method

.method static synthetic access$100(Lcom/igaworks/dao/CoreIDDAO;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/dao/CoreIDDAO;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/igaworks/dao/CoreIDDAO;->setGoogleAdId2SP(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/igaworks/dao/CoreIDDAO;->editor_coreIdSP:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 101
    invoke-direct {p0, p1}, Lcom/igaworks/dao/CoreIDDAO;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/dao/CoreIDDAO;->editor_coreIdSP:Landroid/content/SharedPreferences$Editor;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/igaworks/dao/CoreIDDAO;->editor_coreIdSP:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method private getGoogleAdIdFromSP(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/igaworks/dao/CoreIDDAO;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Igaw_google_advertising_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIMEIFromSP(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/igaworks/dao/CoreIDDAO;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Igaw_puid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/igaworks/dao/CoreIDDAO;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/igaworks/dao/CoreIDDAO;->mGoogleAdIdDAO:Lcom/igaworks/dao/CoreIDDAO;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/igaworks/dao/CoreIDDAO;

    invoke-direct {v0}, Lcom/igaworks/dao/CoreIDDAO;-><init>()V

    sput-object v0, Lcom/igaworks/dao/CoreIDDAO;->mGoogleAdIdDAO:Lcom/igaworks/dao/CoreIDDAO;

    .line 33
    :cond_0
    sget-object v0, Lcom/igaworks/dao/CoreIDDAO;->mGoogleAdIdDAO:Lcom/igaworks/dao/CoreIDDAO;

    return-object v0
.end method

.method private getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/igaworks/dao/CoreIDDAO;->coreIdSP:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 94
    const-string v0, "IgawCoreId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/dao/CoreIDDAO;->coreIdSP:Landroid/content/SharedPreferences;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/igaworks/dao/CoreIDDAO;->coreIdSP:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private setGoogleAdId2SP(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "googleAdId"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/igaworks/dao/CoreIDDAO;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Igaw_google_advertising_id"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    invoke-direct {p0, p1}, Lcom/igaworks/dao/CoreIDDAO;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    return-void
.end method

.method private setIMEI2SP(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "IMEI"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/igaworks/dao/CoreIDDAO;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Igaw_puid"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 82
    invoke-direct {p0, p1}, Lcom/igaworks/dao/CoreIDDAO;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    return-void
.end method


# virtual methods
.method public getGoogleAdId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/igaworks/dao/CoreIDDAO;->googleAdId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/igaworks/dao/CoreIDDAO;->getGoogleAdIdFromSP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/dao/CoreIDDAO;->googleAdId:Ljava/lang/String;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/igaworks/dao/CoreIDDAO;->googleAdId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/CoreIDDAO;->initialize(Landroid/content/Context;)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/igaworks/dao/CoreIDDAO;->googleAdId:Ljava/lang/String;

    return-object v0
.end method

.method public getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/igaworks/dao/CoreIDDAO;->IMEI:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/igaworks/dao/CoreIDDAO;->getIMEIFromSP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/dao/CoreIDDAO;->IMEI:Ljava/lang/String;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/igaworks/dao/CoreIDDAO;->IMEI:Ljava/lang/String;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/igaworks/dao/CoreIDDAO$1;

    invoke-direct {v2, p0, p1}, Lcom/igaworks/dao/CoreIDDAO$1;-><init>(Lcom/igaworks/dao/CoreIDDAO;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 71
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setGoogleAdId(Ljava/lang/String;)V
    .locals 0
    .param p1, "googleAdId"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/igaworks/dao/CoreIDDAO;->googleAdId:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setIMEI(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "IMEI"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p2, p0, Lcom/igaworks/dao/CoreIDDAO;->IMEI:Ljava/lang/String;

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/igaworks/dao/CoreIDDAO;->setIMEI2SP(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    return-void
.end method
