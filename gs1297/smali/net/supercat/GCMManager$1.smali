.class Lnet/supercat/GCMManager$1;
.super Ljava/lang/Object;
.source "GCMManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/supercat/GCMManager;->notifyAllListeners(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/supercat/GCMManager;

.field final synthetic val$registerd:Z


# direct methods
.method constructor <init>(Lnet/supercat/GCMManager;Z)V
    .locals 0
    .param p1, "this$0"    # Lnet/supercat/GCMManager;

    .prologue
    .line 45
    iput-object p1, p0, Lnet/supercat/GCMManager$1;->this$0:Lnet/supercat/GCMManager;

    iput-boolean p2, p0, Lnet/supercat/GCMManager$1;->val$registerd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 49
    iget-object v1, p0, Lnet/supercat/GCMManager$1;->this$0:Lnet/supercat/GCMManager;

    # getter for: Lnet/supercat/GCMManager;->listeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lnet/supercat/GCMManager;->access$000(Lnet/supercat/GCMManager;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 54
    :cond_0
    return-void

    .line 51
    :cond_1
    iget-object v1, p0, Lnet/supercat/GCMManager$1;->this$0:Lnet/supercat/GCMManager;

    # getter for: Lnet/supercat/GCMManager;->listeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lnet/supercat/GCMManager;->access$000(Lnet/supercat/GCMManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/supercat/GCMManager$IStatusListener;

    .line 52
    .local v0, "l":Lnet/supercat/GCMManager$IStatusListener;
    iget-boolean v2, p0, Lnet/supercat/GCMManager$1;->val$registerd:Z

    invoke-interface {v0, v2}, Lnet/supercat/GCMManager$IStatusListener;->onStatusChanged(Z)V

    goto :goto_0
.end method
