.class Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$18;
.super Ljava/lang/Object;
.source "CustomSQLiteDatabase.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;I)Lcom/igaworks/util/bolts_task/Task;
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

.field final synthetic val$conflictAlgorithm:I

.field final synthetic val$table:Ljava/lang/String;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$18;->this$0:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    iput-object p2, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$18;->val$table:Ljava/lang/String;

    iput-object p3, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$18;->val$values:Landroid/content/ContentValues;

    iput p4, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$18;->val$conflictAlgorithm:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Long;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$18;->this$0:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    # getter for: Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->access$300(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$18;->val$table:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$18;->val$values:Landroid/content/ContentValues;

    iget v4, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$18;->val$conflictAlgorithm:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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
    .line 265
    invoke-virtual {p0, p1}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$18;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
