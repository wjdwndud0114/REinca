.class public Lcom/igaworks/impl/ReferrerThread;
.super Ljava/lang/Thread;
.source "ReferrerThread.java"


# static fields
.field private static MAXIMUM_RETRY:I


# instance fields
.field private context:Landroid/content/Context;

.field private volatile stop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0xa

    sput v0, Lcom/igaworks/impl/ReferrerThread;->MAXIMUM_RETRY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igaworks/impl/ReferrerThread;->stop:Z

    return-void
.end method


# virtual methods
.method public requestStop()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igaworks/impl/ReferrerThread;->stop:Z

    .line 60
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    .line 17
    const-string v3, "IGAW_QA"

    const-string v4, "ReferrerThread has started "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/igaworks/impl/ReferrerThread;->context:Landroid/content/Context;

    .line 23
    :try_start_0
    const-string v3, "com.android.installreferrer.api.InstallReferrerClient"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 24
    new-instance v1, Lcom/igaworks/impl/IGAFirstRunLogic;

    invoke-direct {v1}, Lcom/igaworks/impl/IGAFirstRunLogic;-><init>()V

    .line 25
    .local v1, "firstRunLogic":Lcom/igaworks/impl/IGAFirstRunLogic;
    iget-object v3, p0, Lcom/igaworks/impl/ReferrerThread;->context:Landroid/content/Context;

    const/16 v4, 0x258

    invoke-virtual {v1, v3, v4}, Lcom/igaworks/impl/IGAFirstRunLogic;->waitForFirstRunData(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v1    # "firstRunLogic":Lcom/igaworks/impl/IGAFirstRunLogic;
    :goto_0
    const/4 v2, 0x0

    .line 35
    .local v2, "retry":I
    :cond_0
    :goto_1
    :try_start_1
    iget-boolean v3, p0, Lcom/igaworks/impl/ReferrerThread;->stop:Z

    if-nez v3, :cond_2

    .line 37
    iget-object v3, p0, Lcom/igaworks/impl/ReferrerThread;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/igaworks/dao/ReferralInfoDAO;->getOnReceiveReferralFlag(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    .line 38
    invoke-virtual {v3}, Lcom/igaworks/core/RequestParameter;->getReferralKey()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    sget-object v3, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v3}, Lcom/igaworks/core/RequestParameter;->getADBrixUserNo()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/igaworks/impl/ReferrerThread;->context:Landroid/content/Context;

    .line 39
    invoke-static {v3}, Lcom/igaworks/dao/AppImpressionDAO;->getSynAdbrix(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 41
    :cond_1
    invoke-static {}, Lcom/igaworks/impl/InternalAction;->getInstance()Lcom/igaworks/impl/InternalAction;

    move-result-object v3

    iget-object v4, p0, Lcom/igaworks/impl/ReferrerThread;->context:Landroid/content/Context;

    sget-boolean v5, Lcom/igaworks/impl/CommonFrameworkImpl;->isTest:Z

    sget-object v6, Lcom/igaworks/impl/CommonFrameworkImpl;->parameter:Lcom/igaworks/core/RequestParameter;

    sget-object v7, Lcom/igaworks/impl/CommonFrameworkImpl;->httpManager:Lcom/igaworks/net/CommonHttpManager;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/igaworks/impl/InternalAction;->referrerCallForAdbrix(Landroid/content/Context;ZLcom/igaworks/core/RequestParameter;Lcom/igaworks/net/CommonHttpManager;)V

    .line 42
    const-wide/16 v4, 0x7530

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    sget v3, Lcom/igaworks/impl/ReferrerThread;->MAXIMUM_RETRY:I

    if-le v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/igaworks/impl/ReferrerThread;->requestStop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 49
    .end local v2    # "retry":I
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "IGAW_QA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReferrerThread Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p0}, Lcom/igaworks/impl/ReferrerThread;->requestStop()V

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-boolean v3, p0, Lcom/igaworks/impl/ReferrerThread;->stop:Z

    if-eqz v3, :cond_3

    const-string v3, "IGAW_QA"

    const-string v4, "ReferrerThread stopped"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_3
    return-void

    .line 46
    .restart local v2    # "retry":I
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/igaworks/impl/ReferrerThread;->requestStop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 26
    .end local v2    # "retry":I
    :catch_1
    move-exception v3

    goto :goto_0
.end method
