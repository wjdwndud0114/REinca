.class Lcom/igaworks/commerce/db/CommerceEventV2DAO$2;
.super Ljava/lang/Object;
.source "CommerceEventV2DAO.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/commerce/db/CommerceEventV2DAO;->updateIsDirtyProperpy(Landroid/content/Context;Ljava/util/ArrayList;ILcom/igaworks/util/bolts_task/CustomSQLiteDatabase;Ljava/lang/String;)Lcom/igaworks/util/bolts_task/Task;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/commerce/db/CommerceEventV2DAO;

.field final synthetic val$count:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/igaworks/commerce/db/CommerceEventV2DAO;Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$2;->this$0:Lcom/igaworks/commerce/db/CommerceEventV2DAO;

    iput-object p2, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$2;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p3, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$2;->val$size:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$2;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/igaworks/commerce/db/CommerceEventV2DAO$2;->val$size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/igaworks/commerce/db/CommerceEventV2DAO$2;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
