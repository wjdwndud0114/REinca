.class Lcom/igaworks/net/JsonHttpsUrlConnectionThread$2;
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
    .line 178
    iput-object p1, p0, Lcom/igaworks/net/JsonHttpsUrlConnectionThread$2;->this$0:Lcom/igaworks/net/JsonHttpsUrlConnectionThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/igaworks/net/JsonHttpsUrlConnectionThread$2;->this$0:Lcom/igaworks/net/JsonHttpsUrlConnectionThread;

    # getter for: Lcom/igaworks/net/JsonHttpsUrlConnectionThread;->listener:Lcom/igaworks/interfaces/HttpCallbackListener;
    invoke-static {v0}, Lcom/igaworks/net/JsonHttpsUrlConnectionThread;->access$100(Lcom/igaworks/net/JsonHttpsUrlConnectionThread;)Lcom/igaworks/interfaces/HttpCallbackListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/igaworks/interfaces/HttpCallbackListener;->callback(Ljava/lang/String;)V

    .line 182
    return-void
.end method
