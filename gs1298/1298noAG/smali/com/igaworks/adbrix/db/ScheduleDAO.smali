.class public Lcom/igaworks/adbrix/db/ScheduleDAO;
.super Ljava/lang/Object;
.source "ScheduleDAO.java"


# static fields
.field public static final SCHEDULE_SP_KEY:Ljava/lang/String; = "saved_schedule"

.field public static final SCHEDULE_SP_NAME:Ljava/lang/String; = "schedule_sp"

.field private static singleton:Lcom/igaworks/adbrix/db/ScheduleDAO;


# instance fields
.field private scheduleEditor:Landroid/content/SharedPreferences$Editor;

.field private scheduleSP:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/igaworks/adbrix/db/ScheduleDAO;->scheduleEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 40
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/db/ScheduleDAO;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adbrix/db/ScheduleDAO;->scheduleEditor:Landroid/content/SharedPreferences$Editor;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/db/ScheduleDAO;->scheduleEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method public static getInstance()Lcom/igaworks/adbrix/db/ScheduleDAO;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/igaworks/adbrix/db/ScheduleDAO;->singleton:Lcom/igaworks/adbrix/db/ScheduleDAO;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/igaworks/adbrix/db/ScheduleDAO;

    invoke-direct {v0}, Lcom/igaworks/adbrix/db/ScheduleDAO;-><init>()V

    sput-object v0, Lcom/igaworks/adbrix/db/ScheduleDAO;->singleton:Lcom/igaworks/adbrix/db/ScheduleDAO;

    .line 25
    :cond_0
    sget-object v0, Lcom/igaworks/adbrix/db/ScheduleDAO;->singleton:Lcom/igaworks/adbrix/db/ScheduleDAO;

    return-object v0
.end method

.method private getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/igaworks/adbrix/db/ScheduleDAO;->scheduleSP:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 31
    const-string v0, "schedule_sp"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/adbrix/db/ScheduleDAO;->scheduleSP:Landroid/content/SharedPreferences;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/igaworks/adbrix/db/ScheduleDAO;->scheduleSP:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public getSchedule(Landroid/content/Context;)Lcom/igaworks/adbrix/model/ScheduleContainer;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/db/ScheduleDAO;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "saved_schedule"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/igaworks/adbrix/json/JSON2ScheduleConverter;->json2ScheduleV2(Landroid/content/Context;Ljava/lang/String;)Lcom/igaworks/adbrix/model/ScheduleContainer;

    move-result-object v0

    return-object v0
.end method

.method public saveSchedule(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "schedule"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/db/ScheduleDAO;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "saved_schedule"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 49
    invoke-direct {p0, p1}, Lcom/igaworks/adbrix/db/ScheduleDAO;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    return-void
.end method
