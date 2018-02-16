.class Lcom/igaworks/dao/CounterDAOForCPEActivity$10;
.super Ljava/lang/Object;
.source "CounterDAOForCPEActivity.java"

# interfaces
.implements Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/CounterDAOForCPEActivity;->getActivityCounters(IIILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
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

.field final synthetic val$day:I

.field final synthetic val$group:Ljava/lang/String;

.field final synthetic val$month:I

.field final synthetic val$year:I


# direct methods
.method constructor <init>(Lcom/igaworks/dao/CounterDAOForCPEActivity;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/dao/CounterDAOForCPEActivity;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$10;->this$0:Lcom/igaworks/dao/CounterDAOForCPEActivity;

    iput p2, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$10;->val$year:I

    iput p3, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$10;->val$month:I

    iput p4, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$10;->val$day:I

    iput-object p5, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$10;->val$group:Ljava/lang/String;

    iput-object p6, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$10;->val$activity:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;
    .locals 8
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
    .line 331
    const-string v6, "ActivityCounter"

    const/16 v0, 0xf

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v7, v0

    const/4 v0, 0x1

    const-string v1, "year"

    aput-object v1, v7, v0

    const/4 v0, 0x2

    const-string v1, "month"

    aput-object v1, v7, v0

    const/4 v0, 0x3

    const-string v1, "day"

    aput-object v1, v7, v0

    const/4 v0, 0x4

    const-string v1, "hour"

    aput-object v1, v7, v0

    const/4 v0, 0x5

    const-string v1, "activity_group"

    aput-object v1, v7, v0

    const/4 v0, 0x6

    const-string v1, "activity"

    aput-object v1, v7, v0

    const/4 v0, 0x7

    const-string v1, "counter"

    aput-object v1, v7, v0

    const/16 v0, 0x8

    const-string v1, "year_updated"

    aput-object v1, v7, v0

    const/16 v0, 0x9

    const-string v1, "month_updated"

    aput-object v1, v7, v0

    const/16 v0, 0xa

    const-string v1, "day_updated"

    aput-object v1, v7, v0

    const/16 v0, 0xb

    const-string v1, "hour_updated"

    aput-object v1, v7, v0

    const/16 v0, 0xc

    const-string v1, "regist_datetime"

    aput-object v1, v7, v0

    const/16 v0, 0xd

    const-string v1, "update_datetime"

    aput-object v1, v7, v0

    const/16 v0, 0xe

    const-string v1, "no_counting_update_datetime"

    aput-object v1, v7, v0

    iget-object v0, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$10;->this$0:Lcom/igaworks/dao/CounterDAOForCPEActivity;

    iget v1, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$10;->val$year:I

    iget v2, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$10;->val$month:I

    iget v3, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$10;->val$day:I

    iget-object v4, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$10;->val$group:Ljava/lang/String;

    iget-object v5, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$10;->val$activity:Ljava/lang/String;

    .line 346
    invoke-virtual/range {v0 .. v5}, Lcom/igaworks/dao/CounterDAOForCPEActivity;->getQueryString(IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 331
    invoke-virtual {p1, v6, v7, v0, v1}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/dao/CounterDAOForCPEActivity$10$1;

    invoke-direct {v1, p0}, Lcom/igaworks/dao/CounterDAOForCPEActivity$10$1;-><init>(Lcom/igaworks/dao/CounterDAOForCPEActivity$10;)V

    .line 346
    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 331
    return-object v0
.end method

.method public bridge synthetic call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 326
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/CounterDAOForCPEActivity$10;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
