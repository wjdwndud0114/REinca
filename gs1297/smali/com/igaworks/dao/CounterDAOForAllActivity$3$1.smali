.class Lcom/igaworks/dao/CounterDAOForAllActivity$3$1;
.super Ljava/lang/Object;
.source "CounterDAOForAllActivity.java"

# interfaces
.implements Lcom/igaworks/util/bolts_task/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/dao/CounterDAOForAllActivity$3;->call(Lcom/igaworks/util/bolts_task/CustomSQLiteDatabase;)Lcom/igaworks/util/bolts_task/Task;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igaworks/dao/CounterDAOForAllActivity$3;


# direct methods
.method constructor <init>(Lcom/igaworks/dao/CounterDAOForAllActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/igaworks/dao/CounterDAOForAllActivity$3;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/igaworks/dao/CounterDAOForAllActivity$3$1;->this$1:Lcom/igaworks/dao/CounterDAOForAllActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/igaworks/util/bolts_task/Task",
            "<",
            "Landroid/database/Cursor;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "task":Lcom/igaworks/util/bolts_task/Task;, "Lcom/igaworks/util/bolts_task/Task<Landroid/database/Cursor;>;"
    const/4 v2, 0x0

    .line 139
    .local v2, "result":I
    invoke-virtual {p1}, Lcom/igaworks/util/bolts_task/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 140
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 141
    .local v0, "count":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez v0, :cond_0

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 142
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 143
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/igaworks/dao/CounterDAOForAllActivity$3$1;->then(Lcom/igaworks/util/bolts_task/Task;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
