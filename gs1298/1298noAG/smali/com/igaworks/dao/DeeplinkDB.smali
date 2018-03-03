.class public Lcom/igaworks/dao/DeeplinkDB;
.super Ljava/lang/Object;
.source "DeeplinkDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/dao/DeeplinkDB$CommerceDBOpenHelper;,
        Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable;
    }
.end annotation


# static fields
.field public static final COMMERCE_CLICK_ID:Ljava/lang/String; = "commerce_click_id"

.field public static final CONVERSION_KEY:Ljava/lang/String; = "conversion_key"

.field public static final DATABASE_NAME:Ljava/lang/String; = "deeplink.db"

.field public static final DATABASE_TABLE_CONVERSION_RESTORE:Ljava/lang/String; = "ConversionRestore"

.field public static final DATABASE_VERSION:I = 0x4

.field static final DEEPLINK_INFO:Ljava/lang/String; = "deeplink_info"

.field public static final IS_DIRTY:Ljava/lang/String; = "isDirty"

.field public static final KEY:Ljava/lang/String; = "_id"

.field public static final LINK_PARAM:Ljava/lang/String; = "link_param"

.field public static final RETRY_COUNT:Ljava/lang/String; = "retry_count"

.field public static final TABLE_REENGAGEMENT_CONVERSION:Ljava/lang/String; = "ReEngagementConversionTbl"

.field public static final TABLE_THIRD_PARTY_CONVERSION:Ljava/lang/String; = "ThirdPartyConversionTbl"


# instance fields
.field protected dbHelper:Lcom/igaworks/dao/DeeplinkDB$CommerceDBOpenHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected runWithManagedComplexTransaction(Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable",
            "<",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TT;>;>;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "callable":Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable;, "Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable<Lcom/igaworks/util/bolts_task/Task<TT;>;>;"
    iget-object v0, p0, Lcom/igaworks/dao/DeeplinkDB;->dbHelper:Lcom/igaworks/dao/DeeplinkDB$CommerceDBOpenHelper;

    invoke-virtual {v0}, Lcom/igaworks/dao/DeeplinkDB$CommerceDBOpenHelper;->getWritableDatabaseAsync()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/dao/DeeplinkDB$3;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/dao/DeeplinkDB$3;-><init>(Lcom/igaworks/dao/DeeplinkDB;Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable;)V

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method protected runWithManagedConnection(Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable",
            "<",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TT;>;>;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "callable":Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable;, "Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable<Lcom/igaworks/util/bolts_task/Task<TT;>;>;"
    iget-object v0, p0, Lcom/igaworks/dao/DeeplinkDB;->dbHelper:Lcom/igaworks/dao/DeeplinkDB$CommerceDBOpenHelper;

    invoke-virtual {v0}, Lcom/igaworks/dao/DeeplinkDB$CommerceDBOpenHelper;->getWritableDatabaseAsync()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/dao/DeeplinkDB$1;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/dao/DeeplinkDB$1;-><init>(Lcom/igaworks/dao/DeeplinkDB;Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable;)V

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method protected runWithManagedTransaction(Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable",
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
    .line 69
    .local p1, "callable":Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable;, "Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable<Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;>;"
    iget-object v0, p0, Lcom/igaworks/dao/DeeplinkDB;->dbHelper:Lcom/igaworks/dao/DeeplinkDB$CommerceDBOpenHelper;

    invoke-virtual {v0}, Lcom/igaworks/dao/DeeplinkDB$CommerceDBOpenHelper;->getWritableDatabaseAsync()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/dao/DeeplinkDB$2;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/dao/DeeplinkDB$2;-><init>(Lcom/igaworks/dao/DeeplinkDB;Lcom/igaworks/dao/DeeplinkDB$SQLiteDatabaseCallable;)V

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
