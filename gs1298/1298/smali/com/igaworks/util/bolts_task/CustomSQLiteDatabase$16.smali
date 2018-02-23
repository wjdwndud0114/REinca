.class Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$16;
.super Ljava/lang/Object;
.source "CustomSQLiteDatabase.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
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

.field final synthetic val$select:[Ljava/lang/String;

.field final synthetic val$table:Ljava/lang/String;

.field final synthetic val$where:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$16;->this$0:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    iput-object p2, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$16;->val$table:Ljava/lang/String;

    iput-object p3, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$16;->val$select:[Ljava/lang/String;

    iput-object p4, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$16;->val$where:Ljava/lang/String;

    iput-object p5, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$16;->val$args:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/igaworks/util/bolts_task/Task;)Landroid/database/Cursor;
    .locals 8
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
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    const/4 v5, 0x0

    .line 234
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$16;->this$0:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    # getter for: Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->access$300(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$16;->val$table:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$16;->val$select:[Ljava/lang/String;

    iget-object v3, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$16;->val$where:Ljava/lang/String;

    iget-object v4, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$16;->val$args:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

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
    .line 231
    invoke-virtual {p0, p1}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$16;->then(Lcom/igaworks/util/bolts_task/Task;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
