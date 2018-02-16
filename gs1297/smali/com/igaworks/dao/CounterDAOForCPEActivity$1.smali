.class Lcom/igaworks/dao/CounterDAOForCPEActivity$1;
.super Ljava/lang/Object;
.source "CounterDAOForCPEActivity.java"

# interfaces
.implements Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/CounterDAOForCPEActivity;->insertCounter(IIIILjava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/dao/CounterDAOForCPEActivity;

.field final synthetic val$activity:Ljava/lang/String;

.field final synthetic val$calendar:Ljava/util/Calendar;

.field final synthetic val$day:I

.field final synthetic val$group:Ljava/lang/String;

.field final synthetic val$hour:I

.field final synthetic val$month:I

.field final synthetic val$year:I


# direct methods
.method constructor <init>(Lcom/igaworks/dao/CounterDAOForCPEActivity;IIIILjava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/dao/CounterDAOForCPEActivity;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;->this$0:Lcom/igaworks/dao/CounterDAOForCPEActivity;

    iput p2, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;->val$year:I

    iput p3, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;->val$month:I

    iput p4, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;->val$day:I

    iput p5, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;->val$hour:I

    iput-object p6, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;->val$group:Ljava/lang/String;

    iput-object p7, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;->val$activity:Ljava/lang/String;

    iput-object p8, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;->val$calendar:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;
    .locals 10
    .param p1, "db"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 59
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 62
    .local v1, "newTaskValues":Landroid/content/ContentValues;
    const-string v2, "year"

    iget v3, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;->val$year:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    const-string v2, "month"

    iget v3, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;->val$month:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    const-string v2, "day"

    iget v3, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;->val$day:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    const-string v2, "hour"

    iget v3, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;->val$hour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    const-string v2, "activity_group"

    iget-object v3, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;->val$group:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v2, "activity"

    iget-object v3, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;->val$activity:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v2, "counter"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    const-string v2, "year_updated"

    iget v3, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;->val$year:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    const-string v2, "month_updated"

    iget v3, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;->val$month:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    const-string v2, "day_updated"

    iget v3, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;->val$day:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    const-string v2, "hour_updated"

    iget v3, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;->val$hour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, "date":Ljava/util/Date;
    iget-object v2, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;->val$calendar:Ljava/util/Calendar;

    if-nez v2, :cond_0

    .line 77
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 81
    :goto_0
    const-string v2, "no_counting_update_datetime"

    sget-object v3, Lcom/igaworks/dao/AdbrixDB_v2;->DB_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "regist_datetime"

    sget-object v3, Lcom/igaworks/dao/AdbrixDB_v2;->DB_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "update_datetime"

    sget-object v3, Lcom/igaworks/dao/AdbrixDB_v2;->DB_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/igaworks/impl/CommonFrameworkImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "CounterDAOForCPEActivity"

    const-string v4, "Insert counter : [%d-%d-%d %dh] group = %s, activity = %s"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;->val$year:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    iget v6, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;->val$month:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget v6, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;->val$day:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x3

    iget v7, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;->val$hour:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;->val$group:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;->val$activity:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v9}, Lcom/igaworks/core/IgawLogger;->Logging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    const-string v2, "ActivityCounter"

    invoke-virtual {p1, v2, v1}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->insertOrThrowAsync(Ljava/lang/String;Landroid/content/ContentValues;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v2

    return-object v2

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;->val$calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/CounterDAOForCPEActivity$1;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
