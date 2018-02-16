.class Lcom/igaworks/net/HttpUrlConnectionThread$3;
.super Ljava/lang/Object;
.source "HttpUrlConnectionThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/net/HttpUrlConnectionThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/net/HttpUrlConnectionThread;


# direct methods
.method constructor <init>(Lcom/igaworks/net/HttpUrlConnectionThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/net/HttpUrlConnectionThread;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/igaworks/net/HttpUrlConnectionThread$3;->this$0:Lcom/igaworks/net/HttpUrlConnectionThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/igaworks/net/HttpUrlConnectionThread$3;->this$0:Lcom/igaworks/net/HttpUrlConnectionThread;

    # getter for: Lcom/igaworks/net/HttpUrlConnectionThread;->listener:Lcom/igaworks/interfaces/HttpCallbackListener;
    invoke-static {v0}, Lcom/igaworks/net/HttpUrlConnectionThread;->access$200(Lcom/igaworks/net/HttpUrlConnectionThread;)Lcom/igaworks/interfaces/HttpCallbackListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/igaworks/interfaces/HttpCallbackListener;->callback(Ljava/lang/String;)V

    .line 221
    return-void
.end method
