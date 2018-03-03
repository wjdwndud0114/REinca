.class Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$24$1$1;
.super Ljava/lang/Object;
.source "TrackingActivitySQLiteDB.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$24$1;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;
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
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$24$1;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$24$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$24$1;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$24$1$1;->this$2:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$24$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
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
    .line 566
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$24$1$1;->this$2:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$24$1;

    iget-object v0, v0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$24$1;->val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->endTransactionAsync()Lcom/igaworks/util/bolts_task/Task;

    .line 567
    iget-object v0, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$24$1$1;->this$2:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$24$1;

    iget-object v0, v0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$24$1;->val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->closeAsync()Lcom/igaworks/util/bolts_task/Task;

    .line 568
    return-object p1
.end method

.method public bridge synthetic then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 563
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$24$1$1;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
