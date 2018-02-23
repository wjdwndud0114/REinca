.class Lcom/igaworks/dao/CounterDAOForCPEActivity$7;
.super Ljava/lang/Object;
.source "CounterDAOForCPEActivity.java"

# interfaces
.implements Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/CounterDAOForCPEActivity;->updateDateUpdated(Lcom/igaworks/model/ActivityCounter;IIIILjava/util/Calendar;)V
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

.field final synthetic val$calendar:Ljava/util/Calendar;

.field final synthetic val$counter:Lcom/igaworks/model/ActivityCounter;

.field final synthetic val$dayUpdated:I

.field final synthetic val$hourUpdated:I

.field final synthetic val$monthUpdated:I

.field final synthetic val$yearUpdated:I


# direct methods
.method constructor <init>(Lcom/igaworks/dao/CounterDAOForCPEActivity;IIIILjava/util/Calendar;Lcom/igaworks/model/ActivityCounter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/dao/CounterDAOForCPEActivity;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$7;->this$0:Lcom/igaworks/dao/CounterDAOForCPEActivity;

    iput p2, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$7;->val$yearUpdated:I

    iput p3, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$7;->val$monthUpdated:I

    iput p4, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$7;->val$dayUpdated:I

    iput p5, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$7;->val$hourUpdated:I

    iput-object p6, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$7;->val$calendar:Ljava/util/Calendar;

    iput-object p7, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$7;->val$counter:Lcom/igaworks/model/ActivityCounter;

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
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 176
    .local v1, "newValue":Landroid/content/ContentValues;
    const-string v2, "year_updated"

    iget v3, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$7;->val$yearUpdated:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    const-string v2, "month_updated"

    iget v3, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$7;->val$monthUpdated:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    const-string v2, "day_updated"

    iget v3, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$7;->val$dayUpdated:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    const-string v2, "hour_updated"

    iget v3, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$7;->val$hourUpdated:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    const/4 v0, 0x0

    .line 183
    .local v0, "date":Ljava/util/Date;
    iget-object v2, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$7;->val$calendar:Ljava/util/Calendar;

    if-nez v2, :cond_0

    .line 184
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 189
    :goto_0
    const-string v2, "update_datetime"

    sget-object v3, Lcom/igaworks/dao/AdbrixDB_v2;->DB_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v2, "no_counting_update_datetime"

    sget-object v3, Lcom/igaworks/dao/AdbrixDB_v2;->DB_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v2, "ActivityCounter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$7;->val$counter:Lcom/igaworks/model/ActivityCounter;

    invoke-virtual {v4}, Lcom/igaworks/model/ActivityCounter;->getActivityCounterNo()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v1, v3, v4}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->updateAsync(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igaworks/util/bolts_task/Task;->makeVoid()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v2

    return-object v2

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/igaworks/dao/CounterDAOForCPEActivity$7;->val$calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/CounterDAOForCPEActivity$7;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
