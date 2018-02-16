.class Lcom/igaworks/dao/DeeplinkConversionRetryDAO$16;
.super Ljava/lang/Object;
.source "DeeplinkConversionRetryDAO.java"

# interfaces
.implements Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->getRetryThirdPartyConversions(Landroid/content/Context;)Ljava/util/ArrayList;
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
        "Ljava/util/ArrayList",
        "<",
        "Lcom/igaworks/model/DeeplinkReEngagementConversion;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/dao/DeeplinkConversionRetryDAO;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$retryList:Lcom/igaworks/util/bolts_task/Capture;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO;Lcom/igaworks/util/bolts_task/Capture;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/dao/DeeplinkConversionRetryDAO;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$16;->this$0:Lcom/igaworks/dao/DeeplinkConversionRetryDAO;

    iput-object p2, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$16;->val$retryList:Lcom/igaworks/util/bolts_task/Capture;

    iput-object p3, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$16;->val$context:Landroid/content/Context;

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
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/model/DeeplinkReEngagementConversion;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 439
    move-object v0, p1

    .line 441
    .local v0, "_db":Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    const-string v1, "ThirdPartyConversionTbl"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "conversion_key"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "deeplink_info"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "retry_count"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "isDirty"

    aput-object v4, v2, v3

    const-string v3, "isDirty = 0"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    new-instance v2, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$16$3;

    invoke-direct {v2, p0}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$16$3;-><init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO$16;)V

    .line 442
    invoke-virtual {v1, v2}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    new-instance v2, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$16$2;

    invoke-direct {v2, p0, v0}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$16$2;-><init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO$16;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    .line 457
    invoke-virtual {v1, v2}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    new-instance v2, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$16$1;

    invoke-direct {v2, p0}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$16$1;-><init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO$16;)V

    .line 464
    invoke-virtual {v1, v2}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    .line 441
    return-object v1
.end method

.method public bridge synthetic call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 436
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$16;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
