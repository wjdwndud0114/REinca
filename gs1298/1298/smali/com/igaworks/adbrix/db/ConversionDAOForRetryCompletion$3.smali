.class Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3;
.super Ljava/lang/Object;
.source "ConversionDAOForRetryCompletion.java"

# interfaces
.implements Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;->updateOrInsertConversionForRetry(I)V
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;

.field final synthetic val$conversionKey:I


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3;->this$0:Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;

    iput p2, p0, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3;->val$conversionKey:I

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
    .line 130
    move-object v0, p1

    .line 131
    .local v0, "_db":Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    const-string v1, "RetryCompleteConversion"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "conversion_key"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "retry_count"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conversion_key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3;->val$conversionKey:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    new-instance v2, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3$1;

    invoke-direct {v2, p0, v0}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3$1;-><init>(Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    .line 133
    invoke-virtual {v1, v2}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    .line 131
    return-object v1
.end method

.method public bridge synthetic call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
