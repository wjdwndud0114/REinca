.class Lcom/igaworks/dao/DeeplinkConversionRetryDAO$8;
.super Ljava/lang/Object;
.source "DeeplinkConversionRetryDAO.java"

# interfaces
.implements Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->removeDeeplinkConversionItems(Ljava/util/ArrayList;Landroid/content/Context;)Lcom/igaworks/util/bolts_task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable",
        "<",
        "Lcom/igaworks/util/bolts_task/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/dao/DeeplinkConversionRetryDAO;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/dao/DeeplinkConversionRetryDAO;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$8;->this$0:Lcom/igaworks/dao/DeeplinkConversionRetryDAO;

    iput-object p2, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$8;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$8;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;
    .locals 4
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
    .line 256
    iget-object v0, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$8;->this$0:Lcom/igaworks/dao/DeeplinkConversionRetryDAO;

    iget-object v1, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$8;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$8;->val$list:Ljava/util/ArrayList;

    const-string v3, "ConversionRestore"

    # invokes: Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->removeDeeplinkConversionItemList(Landroid/content/Context;Ljava/util/ArrayList;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    invoke-static {v0, v1, v2, p1, v3}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->access$100(Lcom/igaworks/dao/DeeplinkConversionRetryDAO;Landroid/content/Context;Ljava/util/ArrayList;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$8;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
