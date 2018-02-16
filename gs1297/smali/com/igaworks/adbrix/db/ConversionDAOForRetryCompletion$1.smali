.class Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$1;
.super Ljava/lang/Object;
.source "ConversionDAOForRetryCompletion.java"

# interfaces
.implements Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;->getRetryConversions()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable",
        "<",
        "Lcom/igaworks/util/bolts_task/Task",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/igaworks/adbrix/model/RetryCompleteConversion;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$1;->this$0:Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;

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
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/adbrix/model/RetryCompleteConversion;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 57
    const-string v0, "RetryCompleteConversion"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "conversion_key"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "retry_count"

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1, v4, v4}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$1$1;

    invoke-direct {v1, p0}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$1$1;-><init>(Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$1;)V

    .line 59
    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 57
    return-object v0
.end method

.method public bridge synthetic call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$1;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
