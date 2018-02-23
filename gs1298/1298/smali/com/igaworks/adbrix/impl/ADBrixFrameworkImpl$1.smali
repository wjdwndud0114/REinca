.class Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$1;
.super Ljava/util/TimerTask;
.source "ADBrixFrameworkImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->enableFlush()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$1;->this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$1;->this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    # getter for: Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->flushTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->access$000(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$1;->this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    # getter for: Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->flushTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->access$000(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 89
    iget-object v0, p0, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl$1;->this$0:Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;

    const/4 v1, 0x0

    # setter for: Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->flushTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;->access$002(Lcom/igaworks/adbrix/impl/ADBrixFrameworkImpl;Ljava/util/Timer;)Ljava/util/Timer;

    .line 91
    :cond_0
    return-void
.end method
