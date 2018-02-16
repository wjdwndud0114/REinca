.class Lcom/igaworks/util/bolts_task/CustomSQLiteCursor$1;
.super Ljava/lang/Object;
.source "CustomSQLiteCursor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;


# direct methods
.method constructor <init>(Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor$1;->this$0:Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor$1;->this$0:Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;

    # getter for: Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;->access$000(Lcom/igaworks/util/bolts_task/CustomSQLiteCursor;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 204
    const/4 v0, 0x0

    return-object v0
.end method
