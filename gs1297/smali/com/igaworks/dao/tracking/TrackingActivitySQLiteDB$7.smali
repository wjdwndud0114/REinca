.class Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;
.super Ljava/lang/Object;
.source "TrackingActivitySQLiteDB.java"

# interfaces
.implements Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$SQLiteDatabaseCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;->getImpressionData(ZLandroid/content/Context;)Lcom/igaworks/util/bolts_task/Task;
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

.field final synthetic val$impList:Lcom/igaworks/util/bolts_task/Capture;

.field final synthetic val$isOldVersion:Z


# direct methods
.method constructor <init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;Lcom/igaworks/util/bolts_task/Capture;ZLandroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;->this$0:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB;

    iput-object p2, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;->val$impList:Lcom/igaworks/util/bolts_task/Capture;

    iput-boolean p3, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;->val$isOldVersion:Z

    iput-object p4, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;
    .locals 5
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
    const/4 v4, 0x0

    .line 174
    move-object v0, p1

    .line 175
    .local v0, "_db":Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    const-string v2, "SELECT * FROM tbl_ImpressionTracking WHERE isDirty=? ORDER BY Id ASC LIMIT 50"

    .line 177
    .local v2, "query":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 178
    .local v1, "args":[Ljava/lang/String;
    invoke-virtual {v0, v2, v1}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->rawQueryAsync(Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v3

    new-instance v4, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7$3;

    invoke-direct {v4, p0}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7$3;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;)V

    invoke-virtual {v3, v4}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v3

    new-instance v4, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7$2;

    invoke-direct {v4, p0, v0}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7$2;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    .line 192
    invoke-virtual {v3, v4}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v3

    new-instance v4, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7$1;

    invoke-direct {v4, p0}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7$1;-><init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;)V

    .line 212
    invoke-virtual {v3, v4}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v3

    .line 178
    return-object v3
.end method

.method public bridge synthetic call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
