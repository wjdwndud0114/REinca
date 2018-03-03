.class Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$27;
.super Ljava/lang/Object;
.source "CustomSQLiteDatabase.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->rawQueryAsync(Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
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
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

.field final synthetic val$args:[Ljava/lang/String;

.field final synthetic val$sql:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$27;->this$0:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    iput-object p2, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$27;->val$sql:Ljava/lang/String;

    iput-object p3, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$27;->val$args:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/igaworks/util/bolts_task/Task;)Landroid/database/Cursor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 362
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$27;->this$0:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    # getter for: Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->access$300(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$27;->val$sql:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$27;->val$args:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 359
    invoke-virtual {p0, p1}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$27;->then(Lcom/igaworks/util/bolts_task/Task;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
