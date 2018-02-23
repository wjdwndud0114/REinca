.class Lcom/tnkfactory/ad/unity/TnkUnityPlugin$27$1;
.super Lcom/tnkfactory/ad/ServiceCallback;
.source "TnkUnityPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tnkfactory/ad/unity/TnkUnityPlugin$27;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tnkfactory/ad/unity/TnkUnityPlugin$27;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/unity/TnkUnityPlugin$27;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tnkfactory/ad/unity/TnkUnityPlugin$27;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$27$1;->this$0:Lcom/tnkfactory/ad/unity/TnkUnityPlugin$27;

    invoke-direct {p0}, Lcom/tnkfactory/ad/ServiceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onReturn(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 560
    check-cast p2, [J

    .end local p2    # "result":Ljava/lang/Object;
    move-object v1, p2

    check-cast v1, [J

    .line 561
    .local v1, "ret":[J
    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, "pointStr":Ljava/lang/String;
    const/4 v3, 0x1

    aget-wide v4, v1, v3

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, "seqId":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plugin purchaseItem() on return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    .line 564
    iget-object v3, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$27$1;->this$0:Lcom/tnkfactory/ad/unity/TnkUnityPlugin$27;

    # getter for: Lcom/tnkfactory/ad/unity/TnkUnityPlugin$27;->handler:Ljava/lang/String;
    invoke-static {v3}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$27;->access$300(Lcom/tnkfactory/ad/unity/TnkUnityPlugin$27;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onReturnPurchaseItemBinding"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->sendUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    return-void
.end method
