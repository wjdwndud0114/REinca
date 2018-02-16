.class public abstract Lcom/igaworks/dao/AdbrixDB;
.super Ljava/lang/Object;
.source "AdbrixDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/dao/AdbrixDB$AdbrixDBOpenHelper;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTIVITY:Ljava/lang/String; = "activity"

.field public static final ACTIVITY_COUNTER_NO:Ljava/lang/String; = "_id"

.field public static final CONVERSION_KEY:Ljava/lang/String; = "conversion_key"

.field public static final COUNTER:Ljava/lang/String; = "counter"

.field public static final DATABASE_NAME:Ljava/lang/String; = "adbrix_backward.db"

.field public static final DATABASE_TABLE_ALL_ACTIVITY:Ljava/lang/String; = "AllActivityCounter"

.field public static final DATABASE_TABLE_CPE:Ljava/lang/String; = "ActivityCounter"

.field public static final DATABASE_TABLE_RESTORE_ACTIVITY:Ljava/lang/String; = "CounterForRestore"

.field public static final DATABASE_TABLE_RETRY_COMPLETE_CONVERSION:Ljava/lang/String; = "RetryCompleteConversion"

.field public static final DATABASE_VERSION:I = 0x1

.field public static final DAY:Ljava/lang/String; = "day"

.field public static final DAY_UPDATED:Ljava/lang/String; = "day_updated"

.field public static final DB_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final GROUP:Ljava/lang/String; = "activity_group"

.field public static final HOUR:Ljava/lang/String; = "hour"

.field public static final HOUR_UPDATED:Ljava/lang/String; = "hour_updated"

.field public static final MONTH:Ljava/lang/String; = "month"

.field public static final MONTH_UPDATED:Ljava/lang/String; = "month_updated"

.field public static final NO_COUNTING_UPDATE_DATETIME:Ljava/lang/String; = "no_counting_update_datetime"

.field public static final REGIST_DATETIME:Ljava/lang/String; = "regist_datetime"

.field public static final RETRY_COUNT:Ljava/lang/String; = "retry_count"

.field public static final UPDATE_DATETIME:Ljava/lang/String; = "update_datetime"

.field public static final YEAR:Ljava/lang/String; = "year"

.field public static final YEAR_UPDATED:Ljava/lang/String; = "year_updated"

.field protected static dbHelper:Lcom/igaworks/dao/AdbrixDB$AdbrixDBOpenHelper;


# instance fields
.field protected context:Landroid/content/Context;

.field protected db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/igaworks/dao/AdbrixDB;->DB_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .prologue
    .line 83
    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Void;

    invoke-static {v2}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v2

    new-instance v3, Lcom/igaworks/dao/AdbrixDB$2;

    invoke-direct {v3, p0}, Lcom/igaworks/dao/AdbrixDB$2;-><init>(Lcom/igaworks/dao/AdbrixDB;)V

    sget-object v4, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v2, v3, v4}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    .line 92
    .local v1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    const-wide/16 v2, 0x3e8

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3, v4}, Lcom/igaworks/util/bolts_task/TaskUtils;->wait(Lcom/igaworks/util/bolts_task/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public open()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 61
    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Void;

    invoke-static {v2}, Lcom/igaworks/util/bolts_task/Task;->forResult(Ljava/lang/Object;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v2

    new-instance v3, Lcom/igaworks/dao/AdbrixDB$1;

    invoke-direct {v3, p0}, Lcom/igaworks/dao/AdbrixDB$1;-><init>(Lcom/igaworks/dao/AdbrixDB;)V

    sget-object v4, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v2, v3, v4}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    .line 74
    .local v1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;"
    const-wide/16 v2, 0x3e8

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3, v4}, Lcom/igaworks/util/bolts_task/TaskUtils;->wait(Lcom/igaworks/util/bolts_task/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
