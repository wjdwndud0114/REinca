.class public final Lcom/tapjoy/internal/aw;
.super Lcom/tapjoy/internal/av;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/LinkedHashMap;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/tapjoy/internal/av;-><init>()V

    .line 13
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/tapjoy/internal/aw;->a:Ljava/util/LinkedHashMap;

    .line 14
    const/16 v0, 0xa

    iput v0, p0, Lcom/tapjoy/internal/aw;->b:I

    .line 15
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tapjoy/internal/aw;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/tapjoy/internal/aw;->b:I

    sub-int/2addr v0, v1

    .line 38
    if-lez v0, :cond_0

    .line 39
    iget-object v1, p0, Lcom/tapjoy/internal/aw;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 40
    :goto_0
    if-lez v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    add-int/lit8 v0, v0, -0x1

    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;Z)Lcom/tapjoy/internal/at;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tapjoy/internal/aw;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/ar;

    .line 67
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 68
    new-instance v0, Lcom/tapjoy/internal/ar;

    invoke-direct {v0, p1}, Lcom/tapjoy/internal/ar;-><init>(Ljava/lang/Object;)V

    .line 69
    iget-object v1, p0, Lcom/tapjoy/internal/aw;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-direct {p0}, Lcom/tapjoy/internal/aw;->a()V

    .line 72
    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/tapjoy/internal/av;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    invoke-direct {p0}, Lcom/tapjoy/internal/aw;->a()V

    .line 52
    return-void
.end method
