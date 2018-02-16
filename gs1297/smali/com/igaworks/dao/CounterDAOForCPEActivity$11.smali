.class Lcom/igaworks/dao/CounterDAOForCPEActivity$11;
.super Ljava/lang/Object;
.source "CounterDAOForCPEActivity.java"

# interfaces
.implements Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/CounterDAOForCPEActivity;->getActivityCounters(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable",
        "<",
        "Lcom/igaworks/util/bolts_task/Task",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/igaworks/model/ActivityCounter;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/dao/CounterDAOForCPEActivity;

.field final synthetic val$activity:Ljava/lang/String;

.field final synthetic val$group:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/CounterDAOForCPEActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/dao/CounterDAOForCPEActivity;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$11;->this$0:Lcom/igaworks/dao/CounterDAOForCPEActivity;

    iput-object p2, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$11;->val$group:Ljava/lang/String;

    iput-object p3, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$11;->val$activity:Ljava/lang/String;

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
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/model/ActivityCounter;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 384
    const-string v0, "ActivityCounter"

    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "year"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "month"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "day"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "hour"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "activity_group"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "activity"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "counter"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "year_updated"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "month_updated"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "day_updated"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "hour_updated"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "regist_datetime"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "update_datetime"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "no_counting_update_datetime"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$11;->this$0:Lcom/igaworks/dao/CounterDAOForCPEActivity;

    iget-object v3, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$11;->val$group:Ljava/lang/String;

    iget-object v4, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$11;->val$activity:Ljava/lang/String;

    .line 399
    invoke-virtual {v2, v3, v4}, Lcom/igaworks/dao/CounterDAOForCPEActivity;->getQueryString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 384
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/dao/CounterDAOForCPEActivity$11$1;

    invoke-direct {v1, p0}, Lcom/igaworks/dao/CounterDAOForCPEActivity$11$1;-><init>(Lcom/igaworks/dao/CounterDAOForCPEActivity$11;)V

    .line 399
    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 384
    return-object v0
.end method

.method public bridge synthetic call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/CounterDAOForCPEActivity$11;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
