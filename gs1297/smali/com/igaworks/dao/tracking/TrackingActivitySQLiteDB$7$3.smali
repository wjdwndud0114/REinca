.class Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7$3;
.super Ljava/lang/Object;
.source "TrackingActivitySQLiteDB.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;
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
        "Ljava/util/ArrayList",
        "<",
        "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7$3;->this$1:Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/tracking/TrackingActivitySQLiteDB$7$3;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Landroid/database/Cursor;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/igaworks/dao/tracking/TrackingActivityModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 184
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v2, "impression_tracking":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/igaworks/dao/tracking/TrackingActivityModel;>;"
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 186
    new-instance v0, Lcom/igaworks/dao/tracking/TrackingActivityModel;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/igaworks/dao/tracking/TrackingActivityModel;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 187
    .local v0, "activity":Lcom/igaworks/dao/tracking/TrackingActivityModel;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 189
    .end local v0    # "activity":Lcom/igaworks/dao/tracking/TrackingActivityModel;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 190
    return-object v2
.end method
