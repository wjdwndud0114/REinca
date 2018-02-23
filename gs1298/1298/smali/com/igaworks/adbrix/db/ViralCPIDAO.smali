.class public Lcom/igaworks/adbrix/db/ViralCPIDAO;
.super Ljava/lang/Object;
.source "ViralCPIDAO.java"


# static fields
.field public static final VIRAL_CPI_SP_NAME:Ljava/lang/String; = "viral_cpi_sp"

.field private static activity:Landroid/app/Activity;

.field private static restoreViralCPI:Z

.field private static singleton:Lcom/igaworks/adbrix/db/ViralCPIDAO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/igaworks/adbrix/db/ViralCPIDAO;->restoreViralCPI:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/igaworks/adbrix/db/ViralCPIDAO;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/db/ViralCPIDAO;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/igaworks/adbrix/db/ViralCPIDAO;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/igaworks/adbrix/db/ViralCPIDAO;->singleton:Lcom/igaworks/adbrix/db/ViralCPIDAO;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/igaworks/adbrix/db/ViralCPIDAO;

    invoke-direct {v0}, Lcom/igaworks/adbrix/db/ViralCPIDAO;-><init>()V

    sput-object v0, Lcom/igaworks/adbrix/db/ViralCPIDAO;->singleton:Lcom/igaworks/adbrix/db/ViralCPIDAO;

    .line 23
    :cond_0
    sget-object v0, Lcom/igaworks/adbrix/db/ViralCPIDAO;->singleton:Lcom/igaworks/adbrix/db/ViralCPIDAO;

    return-object v0
.end method

.method private getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const-string v0, "viral_cpi_sp"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static isRestoreViralCPI()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/igaworks/adbrix/db/ViralCPIDAO;->restoreViralCPI:Z

    return v0
.end method

.method public static saveRestoreViralDialog(Landroid/app/Activity;)V
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 35
    sput-object p0, Lcom/igaworks/adbrix/db/ViralCPIDAO;->activity:Landroid/app/Activity;

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/igaworks/adbrix/db/ViralCPIDAO;->restoreViralCPI:Z

    .line 37
    return-void
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 44
    sput-object p0, Lcom/igaworks/adbrix/db/ViralCPIDAO;->activity:Landroid/app/Activity;

    .line 45
    return-void
.end method

.method public static setRestoreViralCPI(Z)V
    .locals 0
    .param p0, "restoreViralCPI"    # Z

    .prologue
    .line 31
    sput-boolean p0, Lcom/igaworks/adbrix/db/ViralCPIDAO;->restoreViralCPI:Z

    .line 32
    return-void
.end method


# virtual methods
.method public isDoNotShow(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "campaignKey"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/db/ViralCPIDAO;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

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

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeDoNotShow(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "campaignKey"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/db/ViralCPIDAO;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 67
    .local v0, "edt":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    return-void
.end method

.method public saveDoNotShow(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "campaignKey"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/db/ViralCPIDAO;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 61
    .local v0, "edt":Landroid/content/SharedPreferences$Editor;
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

    .line 62
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    return-void
.end method
