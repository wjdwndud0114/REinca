.class Lcom/igaworks/net/JsonHttpsUrlConnectionThread$1;
.super Ljava/lang/Object;
.source "JsonHttpsUrlConnectionThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/net/JsonHttpsUrlConnectionThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/net/JsonHttpsUrlConnectionThread;


# direct methods
.method constructor <init>(Lcom/igaworks/net/JsonHttpsUrlConnectionThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/net/JsonHttpsUrlConnectionThread;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/igaworks/net/JsonHttpsUrlConnectionThread$1;->this$0:Lcom/igaworks/net/JsonHttpsUrlConnectionThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 167
    iget-object v0, p0, Lcom/igaworks/net/JsonHttpsUrlConnectionThread$1;->this$0:Lcom/igaworks/net/JsonHttpsUrlConnectionThread;

    # getter for: Lcom/igaworks/net/JsonHttpsUrlConnectionThread;->listener:Lcom/igaworks/interfaces/HttpCallbackListener;
    invoke-static {v0}, Lcom/igaworks/net/JsonHttpsUrlConnectionThread;->access$100(Lcom/igaworks/net/JsonHttpsUrlConnectionThread;)Lcom/igaworks/interfaces/HttpCallbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/net/JsonHttpsUrlConnectionThread$1;->this$0:Lcom/igaworks/net/JsonHttpsUrlConnectionThread;

    # getter for: Lcom/igaworks/net/JsonHttpsUrlConnectionThread;->httpResponseString:Ljava/lang/String;
    invoke-static {v1}, Lcom/igaworks/net/JsonHttpsUrlConnectionThread;->access$000(Lcom/igaworks/net/JsonHttpsUrlConnectionThread;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/igaworks/interfaces/HttpCallbackListener;->callback(Ljava/lang/String;)V

    .line 168
    sget-boolean v0, Lcom/igaworks/impl/CommonFrameworkImpl;->isTest:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/net/JsonHttpsUrlConnectionThread$1;->this$0:Lcom/igaworks/net/JsonHttpsUrlConnectionThread;

    # getter for: Lcom/igaworks/net/JsonHttpsUrlConnectionThread;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/igaworks/net/JsonHttpsUrlConnectionThread;->access$200(Lcom/igaworks/net/JsonHttpsUrlConnectionThread;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Live"

    iget-object v2, p0, Lcom/igaworks/net/JsonHttpsUrlConnectionThread$1;->this$0:Lcom/igaworks/net/JsonHttpsUrlConnectionThread;

    # getter for: Lcom/igaworks/net/JsonHttpsUrlConnectionThread;->httpResponseString:Ljava/lang/String;
    invoke-static {v2}, Lcom/igaworks/net/JsonHttpsUrlConnectionThread;->access$000(Lcom/igaworks/net/JsonHttpsUrlConnectionThread;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 169
    :cond_0
    return-void
.end method
