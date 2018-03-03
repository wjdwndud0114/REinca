.class Lcom/igaworks/commerce/impl/CommerceImpl$1;
.super Ljava/lang/Object;
.source "CommerceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/commerce/impl/CommerceImpl;->fireEvent(Landroid/content/Context;Lcom/igaworks/commerce/model/CustomEventModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/commerce/impl/CommerceImpl;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$model:Lcom/igaworks/commerce/model/CustomEventModel;


# direct methods
.method constructor <init>(Lcom/igaworks/commerce/impl/CommerceImpl;Landroid/content/Context;Lcom/igaworks/commerce/model/CustomEventModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/commerce/impl/CommerceImpl;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/igaworks/commerce/impl/CommerceImpl$1;->this$0:Lcom/igaworks/commerce/impl/CommerceImpl;

    iput-object p2, p0, Lcom/igaworks/commerce/impl/CommerceImpl$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/igaworks/commerce/impl/CommerceImpl$1;->val$model:Lcom/igaworks/commerce/model/CustomEventModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/commerce/impl/CommerceImpl$1;->val$context:Landroid/content/Context;

    const-string v2, "IGAW_QA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eventFired >> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/igaworks/commerce/impl/CommerceImpl$1;->val$model:Lcom/igaworks/commerce/model/CustomEventModel;

    invoke-virtual {v4}, Lcom/igaworks/commerce/model/CustomEventModel;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 225
    iget-object v1, p0, Lcom/igaworks/commerce/impl/CommerceImpl$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/commerce/impl/CommerceImpl$1;->val$model:Lcom/igaworks/commerce/model/CustomEventModel;

    invoke-virtual {v2}, Lcom/igaworks/commerce/model/CustomEventModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/igaworks/commerce/db/CommerceEventDAO;->addEvent(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
