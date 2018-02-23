.class public Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
.super Ljava/lang/Object;
.source "CustomSQLiteDatabase.java"


# static fields
.field private static final dbExecutor:Ljava/util/concurrent/ExecutorService;

.field private static final taskQueue:Lcom/igaworks/util/bolts_task/TaskQueue;


# instance fields
.field private current:Lcom/igaworks/util/bolts_task/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final currentLock:Ljava/lang/Object;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private openFlags:I

.field private final tcs:Lcom/igaworks/util/bolts_task/Task$TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">.TaskCompletionSource;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    .line 36
    new-instance v0, Lcom/igaworks/util/bolts_task/TaskQueue;

    invoke-direct {v0}, Lcom/igaworks/util/bolts_task/TaskQueue;-><init>()V

    sput-object v0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->taskQueue:Lcom/igaworks/util/bolts_task/TaskQueue;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->currentLock:Ljava/lang/Object;

    .line 51
    invoke-static {}, Lcom/igaworks/util/bolts_task/Task;->create()Lcom/igaworks/util/bolts_task/Task$TaskCompletionSource;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->tcs:Lcom/igaworks/util/bolts_task/Task$TaskCompletionSource;

    .line 61
    iput p1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->openFlags:I

    .line 63
    sget-object v0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->taskQueue:Lcom/igaworks/util/bolts_task/TaskQueue;

    new-instance v1, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$2;

    invoke-direct {v1, p0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$2;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/TaskQueue;->enqueue(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->currentLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Lcom/igaworks/util/bolts_task/Task;)Lcom/igaworks/util/bolts_task/Task;
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    .param p1, "x1"    # Lcom/igaworks/util/bolts_task/Task;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    return-object p1
.end method

.method static synthetic access$200(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task$TaskCompletionSource;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->tcs:Lcom/igaworks/util/bolts_task/Task$TaskCompletionSource;

    return-object v0
.end method

.method static synthetic access$300(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$302(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0
    .param p0, "x0"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$400(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)I
    .locals 1
    .param p0, "x0"    # Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    .prologue
    .line 20
    iget v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->openFlags:I

    return v0
.end method

.method static synthetic access$500()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static openDatabaseAsync(Landroid/database/sqlite/SQLiteOpenHelper;I)Lcom/igaworks/util/bolts_task/Task;
    .locals 3
    .param p0, "helper"    # Landroid/database/sqlite/SQLiteOpenHelper;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteOpenHelper;",
            "I)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;

    invoke-direct {v0, p1}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;-><init>(I)V

    .line 40
    .local v0, "db":Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;
    invoke-virtual {v0, p0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->open(Landroid/database/sqlite/SQLiteOpenHelper;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    new-instance v2, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$1;

    invoke-direct {v2, v0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$1;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    invoke-virtual {v1, v2}, Lcom/igaworks/util/bolts_task/Task;->continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public beginTransactionAsync()Lcom/igaworks/util/bolts_task/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    new-instance v2, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$7;

    invoke-direct {v2, p0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$7;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    sget-object v3, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, Lcom/igaworks/util/bolts_task/Task;->continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    .line 139
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    new-instance v2, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$8;

    invoke-direct {v2, p0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$8;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    sget-object v3, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, Lcom/igaworks/util/bolts_task/Task;->continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public closeAsync()Lcom/igaworks/util/bolts_task/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    new-instance v2, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$13;

    invoke-direct {v2, p0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$13;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    sget-object v3, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, Lcom/igaworks/util/bolts_task/Task;->continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    .line 213
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    new-instance v2, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$14;

    invoke-direct {v2, p0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$14;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    sget-object v3, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, Lcom/igaworks/util/bolts_task/Task;->continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteAsync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    iget-object v2, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v2

    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    new-instance v3, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$24;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$24;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v4, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v3, v4}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 341
    .local v0, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/Task;->makeVoid()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    .line 342
    new-instance v1, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$25;

    invoke-direct {v1, p0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$25;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    sget-object v3, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v3}, Lcom/igaworks/util/bolts_task/Task;->continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    .line 348
    invoke-virtual {v1}, Lcom/igaworks/util/bolts_task/Task;->makeVoid()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    monitor-exit v2

    .line 342
    return-object v1

    .line 349
    .end local v0    # "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public endTransactionAsync()Lcom/igaworks/util/bolts_task/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    new-instance v2, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$11;

    invoke-direct {v2, p0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$11;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    sget-object v3, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    .line 186
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    new-instance v2, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$12;

    invoke-direct {v2, p0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$12;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    sget-object v3, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, Lcom/igaworks/util/bolts_task/Task;->continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public inTransaction()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public insertOrThrowAsync(Ljava/lang/String;Landroid/content/ContentValues;)Lcom/igaworks/util/bolts_task/Task;
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    iget-object v2, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v2

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    new-instance v3, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$20;

    invoke-direct {v3, p0, p1, p2}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$20;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V

    sget-object v4, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v3, v4}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 294
    .local v0, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/Task;->makeVoid()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    .line 295
    new-instance v1, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$21;

    invoke-direct {v1, p0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$21;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    sget-object v3, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v3}, Lcom/igaworks/util/bolts_task/Task;->continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    .line 301
    invoke-virtual {v1}, Lcom/igaworks/util/bolts_task/Task;->makeVoid()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    monitor-exit v2

    .line 295
    return-object v1

    .line 302
    .end local v0    # "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public insertWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;I)Lcom/igaworks/util/bolts_task/Task;
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "conflictAlgorithm"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "I)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v2, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v2

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    new-instance v3, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$18;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$18;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;I)V

    sget-object v4, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v3, v4}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 271
    .local v0, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/Task;->makeVoid()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    .line 272
    new-instance v1, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$19;

    invoke-direct {v1, p0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$19;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    sget-object v3, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v3}, Lcom/igaworks/util/bolts_task/Task;->continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Lcom/igaworks/util/bolts_task/Task;->makeVoid()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    monitor-exit v2

    .line 272
    return-object v1

    .line 279
    .end local v0    # "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isOpenAsync()Lcom/igaworks/util/bolts_task/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v2, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v2

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    new-instance v3, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$4;

    invoke-direct {v3, p0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$4;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    invoke-virtual {v1, v3}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 95
    .local v0, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Boolean;>;"
    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/Task;->makeVoid()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    .line 96
    monitor-exit v2

    return-object v0

    .line 97
    .end local v0    # "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isReadOnlyAsync()Lcom/igaworks/util/bolts_task/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v2, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v2

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    new-instance v3, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$3;

    invoke-direct {v3, p0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$3;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    invoke-virtual {v1, v3}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 82
    .local v0, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Boolean;>;"
    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/Task;->makeVoid()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    .line 83
    monitor-exit v2

    return-object v0

    .line 84
    .end local v0    # "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method open(Landroid/database/sqlite/SQLiteOpenHelper;)Lcom/igaworks/util/bolts_task/Task;
    .locals 4
    .param p1, "helper"    # Landroid/database/sqlite/SQLiteOpenHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteOpenHelper;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    new-instance v2, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$6;

    invoke-direct {v2, p0, p1}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$6;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Landroid/database/sqlite/SQLiteOpenHelper;)V

    sget-object v3, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, Lcom/igaworks/util/bolts_task/Task;->continueWith(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v2, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$5;

    invoke-direct {v2, p0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$5;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    sget-object v3, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 115
    invoke-virtual {v0, v2, v3}, Lcom/igaworks/util/bolts_task/Task;->continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    .line 122
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    monitor-exit v1

    return-object v0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    .locals 9
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "select"    # [Ljava/lang/String;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v7, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v7

    .line 231
    :try_start_0
    iget-object v8, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    new-instance v0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$16;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$16;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v1, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v8, v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$15;

    invoke-direct {v1, p0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$15;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    sget-object v2, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    .line 236
    invoke-virtual {v0, v1, v2}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v6

    .line 247
    .local v6, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Landroid/database/Cursor;>;"
    invoke-virtual {v6}, Lcom/igaworks/util/bolts_task/Task;->makeVoid()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    .line 248
    new-instance v0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$17;

    invoke-direct {v0, p0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$17;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    sget-object v1, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v6, v0, v1}, Lcom/igaworks/util/bolts_task/Task;->continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    monitor-exit v7

    return-object v0

    .line 255
    .end local v6    # "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Landroid/database/Cursor;>;"
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queryNumEntries(Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    iget-object v2, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v2

    .line 391
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    new-instance v3, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$29;

    invoke-direct {v3, p0, p1}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$29;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)V

    sget-object v4, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v3, v4}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 397
    .local v0, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/Task;->makeVoid()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    .line 398
    new-instance v1, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$30;

    invoke-direct {v1, p0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$30;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    sget-object v3, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v3}, Lcom/igaworks/util/bolts_task/Task;->continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 405
    .end local v0    # "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public rawQueryAsync(Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    iget-object v2, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v2

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    new-instance v3, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$27;

    invoke-direct {v3, p0, p1, p2}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$27;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v4, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v3, v4}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    new-instance v3, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$26;

    invoke-direct {v3, p0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$26;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    sget-object v4, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    .line 364
    invoke-virtual {v1, v3, v4}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    .line 374
    .local v0, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Landroid/database/Cursor;>;"
    invoke-virtual {v0}, Lcom/igaworks/util/bolts_task/Task;->makeVoid()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    iput-object v1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    .line 375
    new-instance v1, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$28;

    invoke-direct {v1, p0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$28;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    sget-object v3, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v3}, Lcom/igaworks/util/bolts_task/Task;->continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 382
    .end local v0    # "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Landroid/database/Cursor;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTransactionSuccessfulAsync()Lcom/igaworks/util/bolts_task/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    new-instance v2, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$9;

    invoke-direct {v2, p0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$9;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    sget-object v3, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    .line 162
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    new-instance v2, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$10;

    invoke-direct {v2, p0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$10;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    sget-object v3, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, Lcom/igaworks/util/bolts_task/Task;->continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateAsync(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
    .locals 9
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    iget-object v7, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v7

    .line 312
    :try_start_0
    iget-object v8, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    new-instance v0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$22;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$22;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v1, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v8, v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccess(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v6

    .line 318
    .local v6, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Integer;>;"
    invoke-virtual {v6}, Lcom/igaworks/util/bolts_task/Task;->makeVoid()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;->current:Lcom/igaworks/util/bolts_task/Task;

    .line 319
    new-instance v0, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$23;

    invoke-direct {v0, p0}, Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase$23;-><init>(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)V

    sget-object v1, Lcom/igaworks/util/bolts_task/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v6, v0, v1}, Lcom/igaworks/util/bolts_task/Task;->continueWithTask(Lcom/igaworks/util/bolts_task/Continuation;Ljava/util/concurrent/Executor;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    monitor-exit v7

    return-object v0

    .line 326
    .end local v6    # "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
