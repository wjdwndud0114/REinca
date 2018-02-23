.class Lcom/igaworks/commerce/impl/CommerceImpl$2;
.super Ljava/lang/Object;
.source "CommerceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/commerce/impl/CommerceImpl;->fireEvent(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/commerce/impl/CommerceImpl;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$json:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/igaworks/commerce/impl/CommerceImpl;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/commerce/impl/CommerceImpl;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/igaworks/commerce/impl/CommerceImpl$2;->this$0:Lcom/igaworks/commerce/impl/CommerceImpl;

    iput-object p2, p0, Lcom/igaworks/commerce/impl/CommerceImpl$2;->val$json:Ljava/lang/String;

    iput-object p3, p0, Lcom/igaworks/commerce/impl/CommerceImpl$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 249
    :try_start_0
    const-string v1, "IGAW_QA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Commerce >> purchase for commerceV2--fireEvent--1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/igaworks/commerce/impl/CommerceImpl$2;->val$json:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v1, p0, Lcom/igaworks/commerce/impl/CommerceImpl$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/commerce/impl/CommerceImpl$2;->val$json:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/igaworks/commerce/db/CommerceEventV2DAO;->addEvent(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
