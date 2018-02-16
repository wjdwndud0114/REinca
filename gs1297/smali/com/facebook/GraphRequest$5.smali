.class final Lcom/facebook/GraphRequest$5;
.super Ljava/lang/Object;
.source "GraphRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/GraphRequest;->runCallbacks(Lcom/facebook/GraphRequestBatch;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callbacks:Ljava/util/ArrayList;

.field final synthetic val$requests:Lcom/facebook/GraphRequestBatch;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/facebook/GraphRequestBatch;)V
    .locals 0

    .prologue
    .line 1376
    iput-object p1, p0, Lcom/facebook/GraphRequest$5;->val$callbacks:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/facebook/GraphRequest$5;->val$requests:Lcom/facebook/GraphRequestBatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1378
    iget-object v3, p0, Lcom/facebook/GraphRequest$5;->val$callbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1379
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/GraphRequest$Callback;Lcom/facebook/GraphResponse;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/facebook/GraphRequest$Callback;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/facebook/GraphResponse;

    invoke-interface {v3, v4}, Lcom/facebook/GraphRequest$Callback;->onCompleted(Lcom/facebook/GraphResponse;)V

    goto :goto_0

    .line 1382
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/GraphRequest$Callback;Lcom/facebook/GraphResponse;>;"
    :cond_0
    iget-object v3, p0, Lcom/facebook/GraphRequest$5;->val$requests:Lcom/facebook/GraphRequestBatch;

    invoke-virtual {v3}, Lcom/facebook/GraphRequestBatch;->getCallbacks()Ljava/util/List;

    move-result-object v1

    .line 1383
    .local v1, "batchCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphRequestBatch$Callback;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequestBatch$Callback;

    .line 1384
    .local v0, "batchCallback":Lcom/facebook/GraphRequestBatch$Callback;
    iget-object v4, p0, Lcom/facebook/GraphRequest$5;->val$requests:Lcom/facebook/GraphRequestBatch;

    invoke-interface {v0, v4}, Lcom/facebook/GraphRequestBatch$Callback;->onBatchCompleted(Lcom/facebook/GraphRequestBatch;)V

    goto :goto_1

    .line 1386
    .end local v0    # "batchCallback":Lcom/facebook/GraphRequestBatch$Callback;
    :cond_1
    return-void
.end method
