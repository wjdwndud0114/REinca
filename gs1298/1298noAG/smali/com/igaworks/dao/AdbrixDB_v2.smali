.class public abstract Lcom/igaworks/dao/AdbrixDB_v2;
.super Ljava/lang/Object;
.source "AdbrixDB_v2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;,
        Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;
    }
.end annotation


# static fields
.field public static final ACTIVITY:Ljava/lang/String; = "activity"

.field public static final ACTIVITY_COUNTER_NO:Ljava/lang/String; = "_id"

.field public static final CONVERSION_KEY:Ljava/lang/String; = "conversion_key"

.field public static final COUNTER:Ljava/lang/String; = "counter"

.field public static final DATABASE_NAME:Ljava/lang/String; = "adbrix.db"

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


# instance fields
.field protected dbHelper:Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/igaworks/dao/AdbrixDB_v2;->DB_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected runWithManagedComplexTransaction(Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable",
            "<",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TT;>;>;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "callable":Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;, "Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable<Lcom/igaworks/util/bolts_task/Task<TT;>;>;"
    iget-object v0, p0, Lcom/igaworks/dao/AdbrixDB_v2;->dbHelper:Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;

    invoke-virtual {v0}, Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;->getWritableDatabaseAsync()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/dao/AdbrixDB_v2$3;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/dao/AdbrixDB_v2$3;-><init>(Lcom/igaworks/dao/AdbrixDB_v2;Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)V

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method protected runWithManagedConnection(Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable",
            "<",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TT;>;>;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "callable":Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;, "Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable<Lcom/igaworks/util/bolts_task/Task<TT;>;>;"
    iget-object v0, p0, Lcom/igaworks/dao/AdbrixDB_v2;->dbHelper:Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;

    invoke-virtual {v0}, Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;->getWritableDatabaseAsync()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/dao/AdbrixDB_v2$1;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/dao/AdbrixDB_v2$1;-><init>(Lcom/igaworks/dao/AdbrixDB_v2;Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)V

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method protected runWithManagedTransaction(Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable",
            "<",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "callable":Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;, "Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable<Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;>;"
    iget-object v0, p0, Lcom/igaworks/dao/AdbrixDB_v2;->dbHelper:Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;

    invoke-virtual {v0}, Lcom/igaworks/dao/AdbrixDB_v2$AdbrixDBOpenHelper;->getWritableDatabaseAsync()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/dao/AdbrixDB_v2$2;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/dao/AdbrixDB_v2$2;-><init>(Lcom/igaworks/dao/AdbrixDB_v2;Lcom/igaworks/dao/AdbrixDB_v2$SQLiteDatabaseCallable;)V

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
