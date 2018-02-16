.class public Lcom/igaworks/IgawActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "IgawActivityLifecycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final ADPOPCORN_SETTING_SP:Ljava/lang/String;

.field private final IAB_ACTIVITY_NAME:Ljava/lang/String;

.field private final IS_ADPOPCORN_USER:Ljava/lang/String;

.field private commonInterface:Lcom/igaworks/impl/CommonFrameworkImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "IabV3Activity"

    iput-object v0, p0, Lcom/igaworks/IgawActivityLifecycleCallbacks;->IAB_ACTIVITY_NAME:Ljava/lang/String;

    .line 22
    const-string v0, "adpopcorn_sdk_flag"

    iput-object v0, p0, Lcom/igaworks/IgawActivityLifecycleCallbacks;->ADPOPCORN_SETTING_SP:Ljava/lang/String;

    .line 23
    const-string v0, "isAdPopcornUser"

    iput-object v0, p0, Lcom/igaworks/IgawActivityLifecycleCallbacks;->IS_ADPOPCORN_USER:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/igaworks/IgawActivityLifecycleCallbacks;)Lcom/igaworks/impl/CommonFrameworkImpl;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/IgawActivityLifecycleCallbacks;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/igaworks/IgawActivityLifecycleCallbacks;->commonInterface:Lcom/igaworks/impl/CommonFrameworkImpl;

    return-object v0
.end method

.method static synthetic access$002(Lcom/igaworks/IgawActivityLifecycleCallbacks;Lcom/igaworks/impl/CommonFrameworkImpl;)Lcom/igaworks/impl/CommonFrameworkImpl;
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/IgawActivityLifecycleCallbacks;
    .param p1, "x1"    # Lcom/igaworks/impl/CommonFrameworkImpl;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/igaworks/IgawActivityLifecycleCallbacks;->commonInterface:Lcom/igaworks/impl/CommonFrameworkImpl;

    return-object p1
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 120
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 46
    invoke-static {}, Lcom/igaworks/IgawCommon;->framework()Lcom/igaworks/interfaces/CommonInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/igaworks/interfaces/CommonInterface;->endSession()V

    .line 48
    :try_start_0
    const-string v2, "adpopcorn_sdk_flag"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 49
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v2, "isAdPopcornUser"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 50
    .local v0, "isAdPopcornUser":Z
    const-string v2, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IgawActivityLifecycleCallbacks isAdPopcornUser : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {p1, v2, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 51
    if-eqz v0, :cond_0

    .line 52
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/igaworks/IgawActivityLifecycleCallbacks$1;

    invoke-direct {v3, p0, p1}, Lcom/igaworks/IgawActivityLifecycleCallbacks$1;-><init>(Lcom/igaworks/IgawActivityLifecycleCallbacks;Landroid/app/Activity;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v0    # "isAdPopcornUser":Z
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 40
    invoke-static {}, Lcom/igaworks/IgawCommon;->framework()Lcom/igaworks/interfaces/CommonInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/igaworks/interfaces/CommonInterface;->startSession(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 114
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 35
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 107
    return-void
.end method
