.class Lcom/tnkfactory/ad/unity/TnkUnityPlugin$26$1;
.super Lcom/tnkfactory/ad/ServiceCallback;
.source "TnkUnityPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tnkfactory/ad/unity/TnkUnityPlugin$26;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tnkfactory/ad/unity/TnkUnityPlugin$26;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/unity/TnkUnityPlugin$26;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tnkfactory/ad/unity/TnkUnityPlugin$26;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$26$1;->this$0:Lcom/tnkfactory/ad/unity/TnkUnityPlugin$26;

    invoke-direct {p0}, Lcom/tnkfactory/ad/ServiceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onReturn(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 528
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    .line 529
    .local v0, "point":Ljava/lang/Integer;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, "pointStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "plugin withdrawPoints() on return = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tnkfactory/ad/Logger;->d(Ljava/lang/String;)V

    .line 531
    iget-object v2, p0, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$26$1;->this$0:Lcom/tnkfactory/ad/unity/TnkUnityPlugin$26;

    # getter for: Lcom/tnkfactory/ad/unity/TnkUnityPlugin$26;->name:Ljava/lang/String;
    invoke-static {v2}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin$26;->access$200(Lcom/tnkfactory/ad/unity/TnkUnityPlugin$26;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onReturnWithdrawPointsBinding"

    # invokes: Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->sendUnityMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v1}, Lcom/tnkfactory/ad/unity/TnkUnityPlugin;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    return-void
.end method
