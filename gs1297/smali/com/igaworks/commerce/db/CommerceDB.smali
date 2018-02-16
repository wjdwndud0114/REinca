.class public Lcom/igaworks/commerce/db/CommerceDB;
.super Ljava/lang/Object;
.source "CommerceDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igaworks/commerce/db/CommerceDB$CommerceDBOpenHelper;,
        Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;
    }
.end annotation


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final CREATE_AT:Ljava/lang/String; = "create_at"

.field public static final CURRENCY:Ljava/lang/String; = "currency"

.field public static final DATABASE_NAME:Ljava/lang/String; = "commerce.db"

.field public static final DATABASE_TABLE_COMMERCE_EVENT_V2:Ljava/lang/String; = "CommerceEventV2"

.field public static final DATABASE_TABLE_PURCHASE_RESTORE:Ljava/lang/String; = "PurchaseRestore"

.field public static final DATABASE_VERSION:I = 0x3

.field public static final EVENT_JSON_VALUE:Ljava/lang/String; = "event_json"

.field public static final IS_DIRTY:Ljava/lang/String; = "is_Dirty"

.field public static final KEY:Ljava/lang/String; = "_id"

.field public static final ORDER_ID:Ljava/lang/String; = "order_id"

.field public static final PRICE:Ljava/lang/String; = "price"

.field public static final PRODUCT_ID:Ljava/lang/String; = "product_id"

.field public static final PRODUCT_NAME:Ljava/lang/String; = "product_name"

.field public static final QUANTITY:Ljava/lang/String; = "quantity"

.field public static final RETRY_COUNT:Ljava/lang/String; = "retry_count"


# instance fields
.field protected dbHelper:Lcom/igaworks/commerce/db/CommerceDB$CommerceDBOpenHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected runWithManagedComplexTransaction(Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable",
            "<",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TT;>;>;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "callable":Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;, "Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable<Lcom/igaworks/util/bolts_task/Task<TT;>;>;"
    iget-object v0, p0, Lcom/igaworks/commerce/db/CommerceDB;->dbHelper:Lcom/igaworks/commerce/db/CommerceDB$CommerceDBOpenHelper;

    invoke-virtual {v0}, Lcom/igaworks/commerce/db/CommerceDB$CommerceDBOpenHelper;->getWritableDatabaseAsync()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/commerce/db/CommerceDB$3;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/commerce/db/CommerceDB$3;-><init>(Lcom/igaworks/commerce/db/CommerceDB;Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;)V

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method protected runWithManagedConnection(Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable",
            "<",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TT;>;>;)",
            "Lcom/igaworks/util/bolts_task/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "callable":Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;, "Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable<Lcom/igaworks/util/bolts_task/Task<TT;>;>;"
    iget-object v0, p0, Lcom/igaworks/commerce/db/CommerceDB;->dbHelper:Lcom/igaworks/commerce/db/CommerceDB$CommerceDBOpenHelper;

    invoke-virtual {v0}, Lcom/igaworks/commerce/db/CommerceDB$CommerceDBOpenHelper;->getWritableDatabaseAsync()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/commerce/db/CommerceDB$1;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/commerce/db/CommerceDB$1;-><init>(Lcom/igaworks/commerce/db/CommerceDB;Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;)V

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method

.method protected runWithManagedTransaction(Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;)Lcom/igaworks/util/bolts_task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable",
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
    .line 65
    .local p1, "callable":Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;, "Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable<Lcom/igaworks/util/bolts_task/Task<Ljava/lang/Void;>;>;"
    iget-object v0, p0, Lcom/igaworks/commerce/db/CommerceDB;->dbHelper:Lcom/igaworks/commerce/db/CommerceDB$CommerceDBOpenHelper;

    invoke-virtual {v0}, Lcom/igaworks/commerce/db/CommerceDB$CommerceDBOpenHelper;->getWritableDatabaseAsync()Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    new-instance v1, Lcom/igaworks/commerce/db/CommerceDB$2;

    invoke-direct {v1, p0, p1}, Lcom/igaworks/commerce/db/CommerceDB$2;-><init>(Lcom/igaworks/commerce/db/CommerceDB;Lcom/igaworks/commerce/db/CommerceDB$SQLiteDatabaseCallable;)V

    invoke-virtual {v0, v1}, Lcom/igaworks/util/bolts_task/Task;->onSuccessTask(Lcom/igaworks/util/bolts_task/Continuation;)Lcom/igaworks/util/bolts_task/Task;

    move-result-object v0

    return-object v0
.end method
