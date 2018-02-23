.class Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread$1;
.super Ljava/lang/Object;
.source "DeeplinkHttpUrlConnectionThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;


# direct methods
.method constructor <init>(Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread$1;->this$0:Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 150
    iget-object v0, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread$1;->this$0:Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;

    # getter for: Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->listener:Lcom/igaworks/interfaces/HttpCallbackListener;
    invoke-static {v0}, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->access$100(Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;)Lcom/igaworks/interfaces/HttpCallbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread$1;->this$0:Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;

    # getter for: Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->httpResponseString:Ljava/lang/String;
    invoke-static {v1}, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->access$000(Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/igaworks/interfaces/HttpCallbackListener;->callback(Ljava/lang/String;)V

    .line 151
    sget-boolean v0, Lcom/igaworks/impl/CommonFrameworkImpl;->isTest:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread$1;->this$0:Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;

    # getter for: Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->access$200(Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Live"

    iget-object v2, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread$1;->this$0:Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;

    # getter for: Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->httpResponseString:Ljava/lang/String;
    invoke-static {v2}, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->access$000(Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 152
    :cond_0
    return-void
.end method
