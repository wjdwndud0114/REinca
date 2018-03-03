.class Lcom/igaworks/commerce/db/PurchaseRetryDAO$7;
.super Ljava/lang/Object;
.source "PurchaseRetryDAO.java"

# interfaces
.implements Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/commerce/db/PurchaseRetryDAO;->clearRetryItems()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable",
        "<",
        "Lcom/igaworks/util/bolts_task/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/commerce/db/PurchaseRetryDAO;


# direct methods
.method constructor <init>(Lcom/igaworks/commerce/db/PurchaseRetryDAO;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/commerce/db/PurchaseRetryDAO;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/igaworks/commerce/db/PurchaseRetryDAO$7;->this$0:Lcom/igaworks/commerce/db/PurchaseRetryDAO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;
    .locals 5
    .param p1, "db"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 246
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IGAW_QA"

    const-string v2, "PurchaseRetryDAO >> Remove restore queue"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 247
    const-string v0, "PurchaseRestore"

    invoke-virtual {p1, v0, v4, v4}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->deleteAsync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/Task;->makeVoid()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lcom/igaworks/commerce/db/PurchaseRetryDAO$7;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
