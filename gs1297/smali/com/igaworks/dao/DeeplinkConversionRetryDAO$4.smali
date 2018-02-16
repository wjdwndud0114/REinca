.class Lcom/igaworks/dao/DeeplinkConversionRetryDAO$4;
.super Ljava/lang/Object;
.source "DeeplinkConversionRetryDAO.java"

# interfaces
.implements Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/DeeplinkConversionRetryDAO;->getRetryCount(I)I
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
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/dao/DeeplinkConversionRetryDAO;

.field final synthetic val$key:I


# direct methods
.method constructor <init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/dao/DeeplinkConversionRetryDAO;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$4;->this$0:Lcom/igaworks/dao/DeeplinkConversionRetryDAO;

    iput p2, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$4;->val$key:I

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    const-string v0, "ConversionRestore"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "retry_count"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$4;->val$key:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$4$1;

    invoke-direct {v1, p0}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$4$1;-><init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO$4;)V

    .line 145
    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 144
    return-object v0
.end method

.method public bridge synthetic call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$4;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
