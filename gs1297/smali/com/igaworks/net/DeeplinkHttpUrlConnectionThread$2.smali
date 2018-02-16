.class Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread$2;
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
    .line 161
    iput-object p1, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread$2;->this$0:Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread$2;->this$0:Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;

    # getter for: Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->listener:Lcom/igaworks/interfaces/HttpCallbackListener;
    invoke-static {v0}, Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;->access$100(Lcom/igaworks/net/DeeplinkHttpUrlConnectionThread;)Lcom/igaworks/interfaces/HttpCallbackListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/igaworks/interfaces/HttpCallbackListener;->callback(Ljava/lang/String;)V

    .line 165
    return-void
.end method
