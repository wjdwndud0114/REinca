.class Lcom/tnkfactory/ad/unity/TnkUnityPlugin$28$1;
.super Lcom/tnkfactory/ad/ServiceCallback;
.source "TnkUnityPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tnkfactory/ad/unity/TnkUnityPlugin$28;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tnkfactory/ad/unity/TnkUnityPlugin$28;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/unity/TnkUnityPlugin$28;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tnkfactory/ad/unity/TnkUnityPlugin$28;

    .prologue
    .line 605
    iput-object p1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$28$1;->this$0:Lcom/tnkfactory/ad/unity/TnkUnityPlugin$28;

    invoke-direct {p0}, Lcom/tnkfactory/ad/ServiceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onReturn(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 609
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    .line 610
    .local v0, "state":Ljava/lang/Integer;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 611
    .local v1, "stateStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "plugin queryPublishState() on return = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    .line 612
    iget-object v2, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$28$1;->this$0:Lcom/tnkfactory/ad/unity/TnkUnityPlugin$28;

    # getter for: Lcom/tnkfactory/ad/unity/TnkUnityPlugin$28;->name:Ljava/lang/String;
    invoke-static {v2}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$28;->access$400(Lcom/tnkfactory/ad/unity/TnkUnityPlugin$28;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onReturnQueryPublishStateBinding"

    # invokes: Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->sendUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    return-void
.end method
