.class Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5$1;
.super Ljava/lang/Object;
.source "DeeplinkConversionRetryDAO.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;
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
.field final synthetic this$1:Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5;

.field final synthetic val$_db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5$1;->this$1:Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5;

    iput-object p2, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5$1;->val$_db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;
    .locals 12
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
    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 195
    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 196
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 197
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 198
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 201
    .local v1, "newTaskValues":Landroid/content/ContentValues;
    const-string v4, "conversion_key"

    iget-object v5, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5$1;->this$1:Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5;

    iget v5, v5, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5;->val$conversionKey:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 202
    const-string v4, "commerce_click_id"

    iget-object v5, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5$1;->this$1:Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5;

    iget-object v5, v5, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5;->val$clickID:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v4, "retry_count"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    const-string v4, "isDirty"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "IGAW_QA"

    const-string v6, "add retry conversion : key = %d, conversionKey = %d "

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5$1;->this$1:Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5;

    iget v8, v8, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5;->val$key:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5$1;->this$1:Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5;

    iget v8, v8, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5;->val$conversionKey:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v10}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 207
    iget-object v4, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5$1;->val$_db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    const-string v5, "ConversionRestore"

    invoke-virtual {v4, v5, v1}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->insertOrThrowAsync(Ljava/lang/String;Landroid/content/ContentValues;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v4

    .line 215
    .end local v1    # "newTaskValues":Landroid/content/ContentValues;
    :goto_0
    return-object v4

    .line 209
    :cond_1
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 210
    .local v3, "retry":I
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "IGAW_QA"

    const-string v6, "add retry conversion : key = %d, conversionKey = %d , retry time = %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5$1;->this$1:Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5;

    iget v8, v8, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5;->val$key:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5$1;->this$1:Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5;

    iget v8, v8, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5;->val$conversionKey:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v10}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 211
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 212
    .local v2, "newValue":Landroid/content/ContentValues;
    const-string v4, "retry_count"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    const-string v4, "isDirty"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 215
    iget-object v4, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5$1;->val$_db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    const-string v5, "ConversionRestore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5$1;->this$1:Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5;

    iget v7, v7, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5;->val$key:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v2, v6, v7}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->updateAsync(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igaworks/util/bolts_task/Task;->makeVoid()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v4

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
    .line 189
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/DeeplinkConversionRetryDAO$5$1;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
