.class Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$AdPopCornDailyPlayTimerTask$1;
.super Ljava/lang/Object;
.source "ADBrixFrameworkImpl.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$AdPopCornDailyPlayTimerTask;->run()V
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
.field final synthetic this$1:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$AdPopCornDailyPlayTimerTask;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$AdPopCornDailyPlayTimerTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$AdPopCornDailyPlayTimerTask;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$AdPopCornDailyPlayTimerTask$1;->this$1:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$AdPopCornDailyPlayTimerTask;

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
    .line 527
    invoke-virtual {p0, p1}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$AdPopCornDailyPlayTimerTask$1;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Void;
    .locals 1
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
    .line 533
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    const/4 v0, 0x0

    sput-boolean v0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->onProcessDailyPlay:Z

    .line 534
    const/4 v0, 0x0

    return-object v0
.end method
