.class public final Lcom/igaworks/IgawCommon;
.super Ljava/lang/Object;
.source "IgawCommon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/IgawCommon$Gender;
    }
.end annotation


# static fields
.field private static autosessiontrackingEnable:Z

.field private static commonFrameWork:Lcom/igaworks/interfaces/CommonInterface;

.field public static igawPubQueue:Ljava/util/concurrent/ExecutorService;

.field public static igawT:Ljava/util/Timer;

.field public static isProtectSessionTrackingCall:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-boolean v0, Lcom/igaworks/IgawCommon;->autosessiontrackingEnable:Z

    .line 29
    sput-boolean v0, Lcom/igaworks/IgawCommon;->isProtectSessionTrackingCall:Z

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/igaworks/IgawCommon;->igawT:Ljava/util/Timer;

    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autoSessionTracking(Landroid/app/Application;)V
    .locals 6
    .param p0, "applicaton"    # Landroid/app/Application;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 169
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    .line 170
    new-instance v1, Lcom/igaworks/IgawActivityLifecycleCallbacks;

    invoke-direct {v1}, Lcom/igaworks/IgawActivityLifecycleCallbacks;-><init>()V

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 171
    invoke-static {}, Lcom/igaworks/IgawCommon;->framework()Lcom/igaworks/interfaces/CommonInterface;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/igaworks/interfaces/CommonInterface;->startApplicationForInternalUse(Landroid/content/Context;)V

    .line 172
    const/4 v1, 0x1

    sput-boolean v1, Lcom/igaworks/IgawCommon;->autosessiontrackingEnable:Z

    .line 177
    :goto_0
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "IGAW_QA"

    const-string v3, "called autoSessionTracking"

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 181
    :goto_1
    return-void

    .line 174
    :cond_0
    invoke-static {}, Lcom/igaworks/IgawCommon;->framework()Lcom/igaworks/interfaces/CommonInterface;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/igaworks/interfaces/CommonInterface;->startApplicationForInternalUse(Landroid/content/Context;)V

    .line 175
    const-string v1, "IGAW_QA"

    const-string v2, "IgawCommon.autoSessionTracking API requires minSdkVersion >= 15"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoSessionTracking Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static custom(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 257
    :try_start_0
    sget-object v1, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/igaworks/IgawCommon$9;

    invoke-direct {v2, p0}, Lcom/igaworks/IgawCommon$9;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static custom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 274
    :try_start_0
    sget-object v1, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/igaworks/IgawCommon$10;

    invoke-direct {v2, p0, p1}, Lcom/igaworks/IgawCommon$10;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static endSession()V
    .locals 6

    .prologue
    .line 85
    :try_start_0
    sget-boolean v1, Lcom/igaworks/IgawCommon;->autosessiontrackingEnable:Z

    if-eqz v1, :cond_0

    .line 86
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "IGAW_QA"

    const-string v3, "Called endSession api when autosessiontrackingEnable is true"

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Lcom/igaworks/IgawCommon;->framework()Lcom/igaworks/interfaces/CommonInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/igaworks/interfaces/CommonInterface;->endSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endSession Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "errorName"    # Ljava/lang/String;
    .param p1, "detail"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 240
    :try_start_0
    sget-object v1, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/igaworks/IgawCommon$8;

    invoke-direct {v2, p0, p1}, Lcom/igaworks/IgawCommon$8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static framework()Lcom/igaworks/interfaces/CommonInterface;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/igaworks/IgawCommon;->commonFrameWork:Lcom/igaworks/interfaces/CommonInterface;

    if-nez v0, :cond_1

    .line 38
    const-class v1, Lcom/igaworks/IgawCommon;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lcom/igaworks/IgawCommon;->commonFrameWork:Lcom/igaworks/interfaces/CommonInterface;

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkFactory;->getCommonFramework()Lcom/igaworks/interfaces/CommonInterface;

    move-result-object v0

    sput-object v0, Lcom/igaworks/IgawCommon;->commonFrameWork:Lcom/igaworks/interfaces/CommonInterface;

    .line 42
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    sget-object v0, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    .line 45
    :cond_3
    sget-object v0, Lcom/igaworks/IgawCommon;->commonFrameWork:Lcom/igaworks/interfaces/CommonInterface;

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static onReceiveReferral(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 292
    invoke-static {}, Lcom/igaworks/IgawCommon;->framework()Lcom/igaworks/interfaces/CommonInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/igaworks/interfaces/CommonInterface;->onReceiveReferral(Landroid/content/Context;)V

    .line 293
    return-void
.end method

.method public static onReceiveReferral(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawParams"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-static {}, Lcom/igaworks/IgawCommon;->framework()Lcom/igaworks/interfaces/CommonInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/igaworks/interfaces/CommonInterface;->onReceiveReferral(Landroid/content/Context;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public static protectSessionTracking(Landroid/app/Activity;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 340
    :try_start_0
    const-string v1, "IGAW_QA"

    const-string v2, "Call protectSessionTracking"

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 341
    sget-boolean v1, Lcom/igaworks/IgawCommon;->isProtectSessionTrackingCall:Z

    if-nez v1, :cond_1

    .line 343
    invoke-static {}, Lcom/igaworks/IgawCommon;->framework()Lcom/igaworks/interfaces/CommonInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/igaworks/interfaces/CommonInterface;->endSession()V

    .line 344
    const/4 v1, 0x1

    sput-boolean v1, Lcom/igaworks/impl/CommonFrameworkImpl;->isFocusOnForCrashlytics:Z

    .line 345
    const/4 v1, 0x1

    sput-boolean v1, Lcom/igaworks/IgawCommon;->isProtectSessionTrackingCall:Z

    .line 346
    sget-object v1, Lcom/igaworks/IgawCommon;->igawT:Ljava/util/Timer;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/igaworks/IgawCommon;->igawT:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 347
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    sput-object v1, Lcom/igaworks/IgawCommon;->igawT:Ljava/util/Timer;

    .line 348
    sget-object v1, Lcom/igaworks/IgawCommon;->igawT:Ljava/util/Timer;

    new-instance v2, Lcom/igaworks/IgawCommon$11;

    invoke-direct {v2, p0}, Lcom/igaworks/IgawCommon$11;-><init>(Landroid/app/Activity;)V

    const-wide/32 v4, 0x15f90

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 372
    :goto_0
    return-void

    .line 365
    :cond_1
    const-string v1, "IGAW_QA"

    const-string v2, "protectSessionTracking is called already"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static registerReferrer(Landroid/app/Activity;)V
    .locals 2
    .param p0, "deeplinkActivity"    # Landroid/app/Activity;

    .prologue
    .line 194
    invoke-static {}, Lcom/igaworks/IgawCommon;->framework()Lcom/igaworks/interfaces/CommonInterface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/igaworks/interfaces/CommonInterface;->deeplinkConversion(Landroid/app/Activity;Z)V

    .line 195
    return-void
.end method

.method public static setAge(I)V
    .locals 3
    .param p0, "age"    # I

    .prologue
    .line 98
    :try_start_0
    sget-object v1, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/igaworks/IgawCommon$1;

    invoke-direct {v2, p0}, Lcom/igaworks/IgawCommon$1;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setClientRewardEventListener(Lcom/igaworks/interfaces/IgawRewardItemEventListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/igaworks/interfaces/IgawRewardItemEventListener;

    .prologue
    .line 301
    invoke-static {}, Lcom/igaworks/IgawCommon;->framework()Lcom/igaworks/interfaces/CommonInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/igaworks/interfaces/CommonInterface;->setClientRewardEventListener(Lcom/igaworks/interfaces/IgawRewardItemEventListener;)V

    .line 303
    return-void
.end method

.method public static setDeferredLinkListener(Landroid/content/Context;Lcom/igaworks/interfaces/DeferredLinkListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/igaworks/interfaces/DeferredLinkListener;

    .prologue
    .line 314
    invoke-static {}, Lcom/igaworks/IgawCommon;->framework()Lcom/igaworks/interfaces/CommonInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/igaworks/interfaces/CommonInterface;->setDeferredLinkListener(Landroid/content/Context;Lcom/igaworks/interfaces/DeferredLinkListener;)V

    .line 315
    return-void
.end method

.method public static setGender(I)V
    .locals 3
    .param p0, "gender"    # I

    .prologue
    .line 111
    :try_start_0
    sget-object v1, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/igaworks/IgawCommon$2;

    invoke-direct {v2, p0}, Lcom/igaworks/IgawCommon$2;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setReferralUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deeplinkStr"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 325
    invoke-static {}, Lcom/igaworks/IgawCommon;->framework()Lcom/igaworks/interfaces/CommonInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/igaworks/interfaces/CommonInterface;->setReferralUrlForFacebook(Landroid/content/Context;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public static setReferralUrlForFacebook(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deeplinkStr"    # Ljava/lang/String;

    .prologue
    .line 333
    invoke-static {}, Lcom/igaworks/IgawCommon;->framework()Lcom/igaworks/interfaces/CommonInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/igaworks/interfaces/CommonInterface;->setReferralUrlForFacebook(Landroid/content/Context;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public static setUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 153
    :try_start_0
    invoke-static {p0}, Lcom/igaworks/impl/CommonFrameworkImpl;->setContext(Landroid/content/Context;)V

    .line 154
    sget-object v1, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/igaworks/IgawCommon$5;

    invoke-direct {v2, p1}, Lcom/igaworks/IgawCommon$5;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 4
    .param p0, "userId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    :try_start_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 129
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Lcom/igaworks/util/bolts_task/Task;->delay(J)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    new-instance v2, Lcom/igaworks/IgawCommon$3;

    invoke-direct {v2, p0}, Lcom/igaworks/IgawCommon$3;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/igaworks/impl/InternalAction;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v2, v3}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    .line 149
    :goto_0
    return-void

    .line 138
    :cond_0
    sget-object v1, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/igaworks/IgawCommon$4;

    invoke-direct {v2, p0}, Lcom/igaworks/IgawCommon$4;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static startApplication(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 186
    :try_start_0
    invoke-static {}, Lcom/igaworks/IgawCommon;->framework()Lcom/igaworks/interfaces/CommonInterface;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/igaworks/interfaces/CommonInterface;->startApplicationForInternalUse(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static startSession(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 50
    :try_start_0
    invoke-static {p0}, Lcom/igaworks/impl/CommonFrameworkImpl;->setContext(Landroid/content/Context;)V

    .line 51
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v1

    sput-object v1, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    .line 52
    sget-boolean v1, Lcom/igaworks/IgawCommon;->autosessiontrackingEnable:Z

    if-eqz v1, :cond_0

    .line 53
    const-string v1, "IGAW_QA"

    const-string v2, "Called startSession api when autosessiontrackingEnable is true"

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 60
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-static {}, Lcom/igaworks/IgawCommon;->framework()Lcom/igaworks/interfaces/CommonInterface;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/igaworks/interfaces/CommonInterface;->startSession(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static startSession(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 68
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const-string v1, "IGAW_QA"

    const-string v2, "IgawCommon.startSession API: Context must be Activity Context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/igaworks/impl/CommonFrameworkImpl;->setContext(Landroid/content/Context;)V

    .line 72
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v1

    sput-object v1, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    .line 73
    sget-boolean v1, Lcom/igaworks/IgawCommon;->autosessiontrackingEnable:Z

    if-eqz v1, :cond_1

    .line 74
    const-string v1, "IGAW_QA"

    const-string v2, "Called startSession api when autosessiontrackingEnable is true"

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 81
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-static {}, Lcom/igaworks/IgawCommon;->framework()Lcom/igaworks/interfaces/CommonInterface;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/igaworks/interfaces/CommonInterface;->startSession(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static viral(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 204
    :try_start_0
    sget-object v1, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/igaworks/IgawCommon$6;

    invoke-direct {v2, p0}, Lcom/igaworks/IgawCommon$6;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static viral(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 222
    :try_start_0
    sget-object v1, Lcom/igaworks/IgawCommon;->igawPubQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/igaworks/IgawCommon$7;

    invoke-direct {v2, p0, p1}, Lcom/igaworks/IgawCommon$7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
