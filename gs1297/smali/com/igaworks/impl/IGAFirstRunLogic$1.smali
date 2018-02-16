.class Lcom/igaworks/impl/IGAFirstRunLogic$1;
.super Ljava/lang/Object;
.source "IGAFirstRunLogic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/impl/IGAFirstRunLogic;->startInstallReferrerClientConnection(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/impl/IGAFirstRunLogic;


# direct methods
.method constructor <init>(Lcom/igaworks/impl/IGAFirstRunLogic;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/impl/IGAFirstRunLogic;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/igaworks/impl/IGAFirstRunLogic$1;->this$0:Lcom/igaworks/impl/IGAFirstRunLogic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/igaworks/impl/IGAFirstRunLogic$1;->this$0:Lcom/igaworks/impl/IGAFirstRunLogic;

    # getter for: Lcom/igaworks/impl/IGAFirstRunLogic;->gotGoogleReferrer:Z
    invoke-static {v0}, Lcom/igaworks/impl/IGAFirstRunLogic;->access$000(Lcom/igaworks/impl/IGAFirstRunLogic;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    const-string v0, "IGAW_QA"

    const-string v1, "FirstRun::Install Referrer Service Callback Timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/igaworks/impl/IGAFirstRunLogic$1;->this$0:Lcom/igaworks/impl/IGAFirstRunLogic;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igaworks/impl/IGAFirstRunLogic;->googleInstallReferrerSequenceComplete(Z)V

    .line 148
    :cond_0
    return-void
.end method
