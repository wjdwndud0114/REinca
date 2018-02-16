.class Lcom/igaworks/dao/ActivityDAOForRestore$2$1;
.super Ljava/lang/Object;
.source "ActivityDAOForRestore.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/ActivityDAOForRestore$2;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;
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
        "Ljava/util/List",
        "<",
        "Lcom/igaworks/model/RestoreActivity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/dao/ActivityDAOForRestore$2;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/ActivityDAOForRestore$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/dao/ActivityDAOForRestore$2;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/igaworks/dao/ActivityDAOForRestore$2$1;->this$1:Lcom/igaworks/dao/ActivityDAOForRestore$2;

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
    .line 89
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/ActivityDAOForRestore$2$1;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Landroid/database/Cursor;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/igaworks/model/RestoreActivity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 95
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/igaworks/model/RestoreActivity;>;"
    const/4 v3, 0x0

    .line 97
    .local v3, "restoreActivity":Lcom/igaworks/model/RestoreActivity;
    const/4 v0, 0x0

    .line 98
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_0

    .line 99
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 102
    :try_start_0
    sget-object v5, Lcom/igaworks/dao/AdbrixDB_v2;->DB_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    const/4 v6, 0x3

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_1
    new-instance v3, Lcom/igaworks/model/RestoreActivity;

    .end local v3    # "restoreActivity":Lcom/igaworks/model/RestoreActivity;
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v5, v6, v7, v0}, Lcom/igaworks/model/RestoreActivity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V

    .line 108
    .restart local v3    # "restoreActivity":Lcom/igaworks/model/RestoreActivity;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 103
    :catch_0
    move-exception v2

    .line 104
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .line 110
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 111
    return-object v4
.end method
