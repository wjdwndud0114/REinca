.class Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$25$1;
.super Ljava/lang/Object;
.source "TrackingActivitySQLiteDB.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$25;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;
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
        "Lcom/igaworks/util/bolts_task/Task",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$25;

.field final synthetic val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$25;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$25;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$25$1;->this$1:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$25;

    iput-object p2, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$25$1;->val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 585
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$25$1;->this$1:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$25;

    iget-object v0, v0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$25;->val$callable:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable;

    iget-object v1, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$25$1;->val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    invoke-interface {v0, v1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/util/bolts_task/Task;

    new-instance v1, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$25$1$2;

    invoke-direct {v1, p0}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$25$1$2;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$25$1;)V

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$25$1$1;

    invoke-direct {v1, p0}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$25$1$1;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$25$1;)V

    .line 591
    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 585
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
    .line 582
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$25$1;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
