.class Lcom/igaworks/net/HttpsUrlConnectionThread$3;
.super Ljava/lang/Object;
.source "HttpsUrlConnectionThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/net/HttpsUrlConnectionThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/net/HttpsUrlConnectionThread;


# direct methods
.method constructor <init>(Lcom/igaworks/net/HttpsUrlConnectionThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/net/HttpsUrlConnectionThread;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/igaworks/net/HttpsUrlConnectionThread$3;->this$0:Lcom/igaworks/net/HttpsUrlConnectionThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/igaworks/net/HttpsUrlConnectionThread$3;->this$0:Lcom/igaworks/net/HttpsUrlConnectionThread;

    # getter for: Lcom/igaworks/net/HttpsUrlConnectionThread;->listener:Lcom/igaworks/interfaces/HttpCallbackListener;
    invoke-static {v0}, Lcom/igaworks/net/HttpsUrlConnectionThread;->access$200(Lcom/igaworks/net/HttpsUrlConnectionThread;)Lcom/igaworks/interfaces/HttpCallbackListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/igaworks/interfaces/HttpCallbackListener;->callback(Ljava/lang/String;)V

    .line 226
    return-void
.end method
