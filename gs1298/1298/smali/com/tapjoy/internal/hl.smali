.class public final Lcom/tapjoy/internal/hl;
.super Lcom/tapjoy/internal/hi;
.source "SourceFile"


# instance fields
.field private final c:Lcom/tapjoy/internal/ed;

.field private final d:Lcom/tapjoy/internal/dx;

.field private final e:Lcom/tapjoy/internal/ek;

.field private final f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/tapjoy/internal/ed;Lcom/tapjoy/internal/dx;Lcom/tapjoy/internal/ek;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/tapjoy/internal/hi;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/tapjoy/internal/hl;->c:Lcom/tapjoy/internal/ed;

    .line 21
    iput-object p2, p0, Lcom/tapjoy/internal/hl;->d:Lcom/tapjoy/internal/dx;

    .line 22
    iput-object p3, p0, Lcom/tapjoy/internal/hl;->e:Lcom/tapjoy/internal/ek;

    .line 23
    iput-object p4, p0, Lcom/tapjoy/internal/hl;->f:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/ee;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p1, Lcom/tapjoy/internal/ee;->d:Lcom/tapjoy/internal/ed;

    iget-object v1, p1, Lcom/tapjoy/internal/ee;->e:Lcom/tapjoy/internal/dx;

    iget-object v2, p1, Lcom/tapjoy/internal/ee;->f:Lcom/tapjoy/internal/ek;

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/tapjoy/internal/hl;-><init>(Lcom/tapjoy/internal/ed;Lcom/tapjoy/internal/dx;Lcom/tapjoy/internal/ek;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "api/v1/tokens"

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 4

    .prologue
    .line 41
    invoke-super {p0}, Lcom/tapjoy/internal/hi;->e()Ljava/util/Map;

    move-result-object v0

    .line 42
    const-string v1, "info"

    new-instance v2, Lcom/tapjoy/internal/br;

    iget-object v3, p0, Lcom/tapjoy/internal/hl;->c:Lcom/tapjoy/internal/ed;

    invoke-static {v3}, Lcom/tapjoy/internal/gp;->a(Lcom/tapjoy/internal/ed;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/br;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "app"

    new-instance v2, Lcom/tapjoy/internal/br;

    iget-object v3, p0, Lcom/tapjoy/internal/hl;->d:Lcom/tapjoy/internal/dx;

    invoke-static {v3}, Lcom/tapjoy/internal/gp;->a(Lcom/tapjoy/internal/dx;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/br;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "user"

    new-instance v2, Lcom/tapjoy/internal/br;

    iget-object v3, p0, Lcom/tapjoy/internal/hl;->e:Lcom/tapjoy/internal/ek;

    invoke-static {v3}, Lcom/tapjoy/internal/gp;->a(Lcom/tapjoy/internal/ek;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/br;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v1, p0, Lcom/tapjoy/internal/hl;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/internal/aq;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    const-string v1, "push_token"

    iget-object v2, p0, Lcom/tapjoy/internal/hl;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_0
    return-object v0
.end method
