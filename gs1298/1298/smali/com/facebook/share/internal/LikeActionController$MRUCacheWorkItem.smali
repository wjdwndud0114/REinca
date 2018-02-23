.class Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MRUCacheWorkItem"
.end annotation


# static fields
.field private static mruCachedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cacheItem:Ljava/lang/String;

.field private shouldTrim:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1711
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->mruCachedItems:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "cacheItem"    # Ljava/lang/String;
    .param p2, "shouldTrim"    # Z

    .prologue
    .line 1715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1716
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->cacheItem:Ljava/lang/String;

    .line 1717
    iput-boolean p2, p0, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->shouldTrim:Z

    .line 1718
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1722
    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->cacheItem:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1723
    sget-object v2, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->mruCachedItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->cacheItem:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1724
    sget-object v2, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->mruCachedItems:Ljava/util/ArrayList;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->cacheItem:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1726
    :cond_0
    iget-boolean v2, p0, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->shouldTrim:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->mruCachedItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x80

    if-lt v2, v3, :cond_1

    .line 1727
    const/16 v1, 0x40

    .line 1728
    .local v1, "targetSize":I
    :goto_0
    sget-object v2, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->mruCachedItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1729
    sget-object v2, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->mruCachedItems:Ljava/util/ArrayList;

    sget-object v3, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->mruCachedItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1732
    .local v0, "cacheKey":Ljava/lang/String;
    # getter for: Lcom/facebook/share/internal/LikeActionController;->cache:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$400()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1735
    .end local v0    # "cacheKey":Ljava/lang/String;
    .end local v1    # "targetSize":I
    :cond_1
    return-void
.end method
