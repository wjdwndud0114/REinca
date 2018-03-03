.class Lcom/igaworks/core/OpenUDID_manager$ValueComparator;
.super Ljava/lang/Object;
.source "OpenUDID_manager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/core/OpenUDID_manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueComparator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/core/OpenUDID_manager;


# direct methods
.method private constructor <init>(Lcom/igaworks/core/OpenUDID_manager;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/igaworks/core/OpenUDID_manager$ValueComparator;->this$0:Lcom/igaworks/core/OpenUDID_manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/igaworks/core/OpenUDID_manager;Lcom/igaworks/core/OpenUDID_manager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/igaworks/core/OpenUDID_manager;
    .param p2, "x1"    # Lcom/igaworks/core/OpenUDID_manager$1;

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/igaworks/core/OpenUDID_manager$ValueComparator;-><init>(Lcom/igaworks/core/OpenUDID_manager;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/igaworks/core/OpenUDID_manager$ValueComparator;->this$0:Lcom/igaworks/core/OpenUDID_manager;

    # getter for: Lcom/igaworks/core/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;
    invoke-static {v0}, Lcom/igaworks/core/OpenUDID_manager;->access$700(Lcom/igaworks/core/OpenUDID_manager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/igaworks/core/OpenUDID_manager$ValueComparator;->this$0:Lcom/igaworks/core/OpenUDID_manager;

    # getter for: Lcom/igaworks/core/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;
    invoke-static {v0}, Lcom/igaworks/core/OpenUDID_manager;->access$700(Lcom/igaworks/core/OpenUDID_manager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 217
    const/4 v0, 0x1

    .line 221
    :goto_0
    return v0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/igaworks/core/OpenUDID_manager$ValueComparator;->this$0:Lcom/igaworks/core/OpenUDID_manager;

    # getter for: Lcom/igaworks/core/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;
    invoke-static {v0}, Lcom/igaworks/core/OpenUDID_manager;->access$700(Lcom/igaworks/core/OpenUDID_manager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/core/OpenUDID_manager$ValueComparator;->this$0:Lcom/igaworks/core/OpenUDID_manager;

    # getter for: Lcom/igaworks/core/OpenUDID_manager;->mReceivedOpenUDIDs:Ljava/util/Map;
    invoke-static {v1}, Lcom/igaworks/core/OpenUDID_manager;->access$700(Lcom/igaworks/core/OpenUDID_manager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 219
    const/4 v0, 0x0

    goto :goto_0

    .line 221
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
