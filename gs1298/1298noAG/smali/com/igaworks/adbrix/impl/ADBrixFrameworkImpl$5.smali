.class Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$5;
.super Ljava/lang/Object;
.source "ADBrixFrameworkImpl.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->onGetReferralResponse(Landroid/content/Context;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$5;->this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

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
    .line 383
    invoke-virtual {p0, p1}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$5;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;
    .locals 4
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
    .line 388
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    sget-object v0, Lcom/igaworks/adbrix/core/ADBrixHttpManager;->schedule:Lcom/igaworks/adbrix/model/ScheduleContainer;

    if-nez v0, :cond_0

    .line 389
    const-string v0, "IGAW_QA"

    const-string v1, "DailyPlay is waiting schedule"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 391
    :cond_0
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/igaworks/core/RequestParameter;->getATRequestParameter(Landroid/content/Context;)Lcom/igaworks/core/RequestParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/core/RequestParameter;->getReferralKey()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 392
    const-string v0, "IGAW_QA"

    const-string v1, "DailyPlay Skip: Organic"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 394
    :cond_1
    const-string v0, "IGAW_QA"

    const-string v1, "DailyPlay start and check"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$5;->this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->DailyPlayStart(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->access$500(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;Landroid/content/Context;)V

    goto :goto_0
.end method
