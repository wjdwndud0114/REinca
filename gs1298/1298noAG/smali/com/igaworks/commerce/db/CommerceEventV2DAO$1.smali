.class Lcom/igaworks/commerce/db/CommerceEventV2DAO$1;
.super Ljava/lang/Object;
.source "CommerceEventV2DAO.java"

# interfaces
.implements Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/commerce/db/CommerceEventV2DAO;->getEventForCommerceV2()Ljava/util/ArrayList;
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
        "Ljava/util/ArrayList",
        "<",
        "Lcom/igaworks/commerce/model/CommerceV2EventItem;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/commerce/db/CommerceEventV2DAO;

.field final synthetic val$retryList:Lcom/igaworks/util/bolts_task/Capture;


# direct methods
.method constructor <init>(Lcom/igaworks/commerce/db/CommerceEventV2DAO;Lcom/igaworks/util/bolts_task/Capture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$1;->this$0:Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    iput-object p2, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$1;->val$retryList:Lcom/igaworks/util/bolts_task/Capture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;
    .locals 6
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
            "Lcom/igaworks/commerce/model/CommerceV2EventItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 64
    move-object v0, p1

    .line 65
    .local v0, "_db":Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    const-string v1, "CommerceEventV2"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "event_json"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "retry_count"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2, v5, v5}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    new-instance v2, Lcom/igaworks/commerce/db/CommerceEventV2DAO$1$3;

    invoke-direct {v2, p0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO$1$3;-><init>(Lcom/igaworks/commerce/db/CommerceEventV2DAO$1;)V

    .line 66
    invoke-virtual {v1, v2}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    new-instance v2, Lcom/igaworks/commerce/db/CommerceEventV2DAO$1$2;

    invoke-direct {v2, p0, v0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO$1$2;-><init>(Lcom/igaworks/commerce/db/CommerceEventV2DAO$1;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    .line 82
    invoke-virtual {v1, v2}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    new-instance v2, Lcom/igaworks/commerce/db/CommerceEventV2DAO$1$1;

    invoke-direct {v2, p0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO$1$1;-><init>(Lcom/igaworks/commerce/db/CommerceEventV2DAO$1;)V

    .line 89
    invoke-virtual {v1, v2}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    .line 65
    return-object v1
.end method

.method public bridge synthetic call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/igaworks/commerce/db/CommerceEventV2DAO$1;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
