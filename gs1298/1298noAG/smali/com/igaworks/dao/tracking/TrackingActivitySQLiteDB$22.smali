.class Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$22;
.super Ljava/lang/Object;
.source "TrackingActivitySQLiteDB.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->removeTrackingData(Landroid/content/Context;Ljava/util/ArrayList;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
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
.field final synthetic this$0:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

.field final synthetic val$count:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

.field final synthetic val$mTrackingActivityModel:Ljava/util/ArrayList;

.field final synthetic val$table:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    .prologue
    .line 512
    iput-object p1, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$22;->this$0:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    iput-object p2, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$22;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$22;->val$mTrackingActivityModel:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$22;->val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    iput-object p5, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$22;->val$table:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;
    .locals 7
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
    .line 516
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    iget-object v5, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$22;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 517
    .local v3, "index":I
    iget-object v5, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$22;->val$mTrackingActivityModel:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igaworks/dao/tracking/TrackingActivityModel;

    .line 518
    .local v0, "appTrack":Lcom/igaworks/dao/tracking/TrackingActivityModel;
    invoke-virtual {v0}, Lcom/igaworks/dao/tracking/TrackingActivityModel;->getId()I

    move-result v2

    .line 519
    .local v2, "id":I
    const-string v4, "Id=?"

    .line 520
    .local v4, "where":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 521
    .local v1, "args":[Ljava/lang/String;
    iget-object v5, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$22;->val$db:Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    iget-object v6, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$22;->val$table:Ljava/lang/String;

    invoke-virtual {v5, v6, v4, v1}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->deleteAsync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v5

    return-object v5
.end method

.method public bridge synthetic then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 512
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$22;->then(Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
