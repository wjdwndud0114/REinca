.class Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$5;
.super Ljava/lang/Object;
.source "ConversionDAOForRetryCompletion.java"

# interfaces
.implements Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;->clearRetryCount()Z
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


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$5;->this$0:Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion;

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

    .line 181
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ActivityDAOForRestore"

    const-string v2, "Remove restore queue"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 182
    const-string v0, "RetryCompleteConversion"

    invoke-virtual {p1, v0, v4, v4}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->deleteAsync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/Task;->makeVoid()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$5;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
