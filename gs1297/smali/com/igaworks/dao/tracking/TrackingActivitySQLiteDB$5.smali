.class Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$5;
.super Ljava/lang/Object;
.source "TrackingActivitySQLiteDB.java"

# interfaces
.implements Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->getOrphanTracking(Landroid/content/Context;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable",
        "<",
        "Lcom/igaworks/util/bolts_task/Task",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$table:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$5;->this$0:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    iput-object p2, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$5;->val$table:Ljava/lang/String;

    iput-object p3, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;
    .locals 3
    .param p1, "db"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$5;->this$0:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    iget-object v1, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$5;->val$table:Ljava/lang/String;

    iget-object v2, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$5;->val$context:Landroid/content/Context;

    # invokes: Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->getOrphanDirtyTrackingActivitiesInDBAsync(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;Landroid/content/Context;)Lcom/igaworks/util/bolts_task/Task;
    invoke-static {v0, p1, v1, v2}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->access$300(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;Landroid/content/Context;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$5;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
