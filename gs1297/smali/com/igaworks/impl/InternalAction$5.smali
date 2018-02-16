.class Lcom/igaworks/impl/InternalAction$5;
.super Ljava/lang/Object;
.source "InternalAction.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/impl/InternalAction;->referrerCallForAdbrix(Landroid/content/Context;ZLcom/igaworks/core/RequestParameter;Lcom/igaworks/net/CommonHttpManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/igaworks/util/bolts_task/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/impl/InternalAction;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$httpManager:Lcom/igaworks/net/CommonHttpManager;

.field final synthetic val$isTest:Z

.field final synthetic val$parameter:Lcom/igaworks/core/RequestParameter;


# direct methods
.method constructor <init>(Lcom/igaworks/impl/InternalAction;ZLandroid/content/Context;Lcom/igaworks/core/RequestParameter;Lcom/igaworks/net/CommonHttpManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/impl/InternalAction;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/igaworks/impl/InternalAction$5;->this$0:Lcom/igaworks/impl/InternalAction;

    iput-boolean p2, p0, Lcom/igaworks/impl/InternalAction$5;->val$isTest:Z

    iput-object p3, p0, Lcom/igaworks/impl/InternalAction$5;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/igaworks/impl/InternalAction$5;->val$parameter:Lcom/igaworks/core/RequestParameter;

    iput-object p5, p0, Lcom/igaworks/impl/InternalAction$5;->val$httpManager:Lcom/igaworks/net/CommonHttpManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/igaworks/impl/InternalAction$5;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    .line 138
    iget-boolean v1, p0, Lcom/igaworks/impl/InternalAction$5;->val$isTest:Z

    if-eqz v1, :cond_0

    const-string v1, "IGAW_QA"

    const-string v2, "referrerCallForAdbrix"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/igaworks/impl/InternalAction$5;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/igaworks/dao/ReferralInfoDAO;->getOnReceiveReferralFlag(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 141
    iget-object v1, p0, Lcom/igaworks/impl/InternalAction$5;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/igaworks/dao/AppImpressionDAO;->getSharedPreferencesForFirstStart(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "fts"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/igaworks/impl/InternalAction$5;->val$parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v1}, Lcom/igaworks/core/RequestParameter;->getReferralKey()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/igaworks/impl/InternalAction$5;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/igaworks/dao/AppImpressionDAO;->addFirstStartToSP(Landroid/content/Context;)V

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/igaworks/impl/InternalAction$5;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/igaworks/dao/ReferralInfoDAO;->isSentRefferrerSuccess2Adbrix(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 145
    const-string v1, "IGAW_QA"

    const-string v2, "Can not send CPI referrerCallForAdbrix multiple times"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcom/igaworks/impl/InternalAction$5;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/igaworks/dao/ReferralInfoDAO;->clearOnReceiveReferralFlag(Landroid/content/Context;)V

    .line 163
    :cond_3
    :goto_0
    return-object v6

    .line 149
    :cond_4
    iget-object v1, p0, Lcom/igaworks/impl/InternalAction$5;->val$context:Landroid/content/Context;

    const-string v2, "IGAW_QA"

    const-string v3, "ReferralInfoDAO >> onReceiveReferral: true! SDK will call onReceiveReferral() api"

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 150
    iget-object v1, p0, Lcom/igaworks/impl/InternalAction$5;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/impl/InternalAction$5;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/dao/ReferralInfoDAO;->getReferralInfo_referrer_params(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/igaworks/IgawCommon;->onReceiveReferral(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_5
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/igaworks/dao/AppImpressionDAO;->getSynAdbrix(Landroid/content/Context;)Z

    move-result v0

    .line 154
    .local v0, "isAdbrixSyn":Z
    iget-object v1, p0, Lcom/igaworks/impl/InternalAction$5;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/igaworks/dao/AppImpressionDAO;->getSharedPreferencesForFirstStart(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "fts"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/igaworks/impl/InternalAction$5;->val$parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v1}, Lcom/igaworks/core/RequestParameter;->getReferralKey()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    if-nez v0, :cond_3

    .line 156
    :cond_6
    iget-object v1, p0, Lcom/igaworks/impl/InternalAction$5;->val$parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v1}, Lcom/igaworks/core/RequestParameter;->getReferralKey()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/igaworks/impl/InternalAction$5;->val$parameter:Lcom/igaworks/core/RequestParameter;

    invoke-virtual {v1}, Lcom/igaworks/core/RequestParameter;->getADBrixUserNo()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_7

    if-nez v0, :cond_3

    .line 157
    :cond_7
    iget-object v1, p0, Lcom/igaworks/impl/InternalAction$5;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/igaworks/dao/AppImpressionDAO;->addFirstStartToSP(Landroid/content/Context;)V

    .line 159
    iget-object v1, p0, Lcom/igaworks/impl/InternalAction$5;->val$httpManager:Lcom/igaworks/net/CommonHttpManager;

    iget-object v2, p0, Lcom/igaworks/impl/InternalAction$5;->val$parameter:Lcom/igaworks/core/RequestParameter;

    iget-object v3, p0, Lcom/igaworks/impl/InternalAction$5;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2, v3, v6}, Lcom/igaworks/net/CommonHttpManager;->normal_referrerCallForADBrix(Lcom/igaworks/core/RequestParameter;Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
