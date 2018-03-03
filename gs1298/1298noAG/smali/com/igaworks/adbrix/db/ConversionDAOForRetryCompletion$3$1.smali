.class Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3$1;
.super Ljava/lang/Object;
.source "ConversionDAOForRetryCompletion.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/igaworks/util/bolts_task/Continuation",
        "<",
        "Landroid/database/Cursor;",
        "Lcom/igaworks/util/bolts_task/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3;

.field final synthetic val$_db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3$1;->this$1:Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3;

    iput-object p2, p0, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3$1;->val$_db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Landroid/database/Cursor;",
            ">;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Landroid/database/Cursor;>;"
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 138
    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 139
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 140
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 142
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 145
    .local v1, "newTaskValues":Landroid/content/ContentValues;
    const-string v3, "conversion_key"

    iget-object v4, p0, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3$1;->this$1:Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3;

    iget v4, v4, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3;->val$conversionKey:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    const-string v3, "retry_count"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ActivityDAOForRestore"

    const-string v5, "add retry complete conversion : conversionKey = %d"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3$1;->this$1:Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3;

    iget v7, v7, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3;->val$conversionKey:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 149
    iget-object v3, p0, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3$1;->val$_db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    const-string v4, "RetryCompleteConversion"

    invoke-virtual {v3, v4, v1}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->insertOrThrowAsync(Ljava/lang/String;Landroid/content/ContentValues;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v3

    .line 155
    .end local v1    # "newTaskValues":Landroid/content/ContentValues;
    :goto_0
    return-object v3

    .line 152
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 153
    .local v2, "newValue":Landroid/content/ContentValues;
    const-string v3, "retry_count"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 155
    iget-object v3, p0, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3$1;->val$_db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    const-string v4, "RetryCompleteConversion"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "conversion_key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3$1;->this$1:Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3;

    iget v6, v6, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3;->val$conversionKey:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->updateAsync(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igaworks/util/bolts_task/Task;->makeVoid()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v3

    goto :goto_0
.end method

.method public bridge synthetic then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/igaworks/adbrix/db/ConversionDAOForRetryCompletion$3$1;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
