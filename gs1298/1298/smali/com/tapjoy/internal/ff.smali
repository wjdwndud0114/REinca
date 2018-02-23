.class public abstract Lcom/tapjoy/internal/ff;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/ff$a;
    }
.end annotation


# static fields
.field static a:Ljava/util/Set;

.field private static final b:Ljava/lang/ThreadLocal;

.field private static c:Lcom/tapjoy/internal/ff;

.field private static volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/tapjoy/internal/ff$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/ff$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/ff;->b:Ljava/lang/ThreadLocal;

    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tapjoy/internal/ff;->d:Z

    .line 127
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/internal/ff;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/tapjoy/internal/ff$a;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Lcom/tapjoy/internal/ff$a;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/ff$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tapjoy/internal/ff$a;->a()Lcom/tapjoy/internal/ff$a;

    move-result-object v1

    .line 192
    sget-object v0, Lcom/tapjoy/internal/ff;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-object v1
.end method

.method public static a(Lcom/tapjoy/internal/fh;)V
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lcom/tapjoy/internal/ff;->c:Lcom/tapjoy/internal/ff;

    if-nez v0, :cond_0

    .line 88
    sput-object p0, Lcom/tapjoy/internal/ff;->c:Lcom/tapjoy/internal/ff;

    .line 89
    sget-boolean v0, Lcom/tapjoy/internal/ff;->d:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lcom/tapjoy/internal/y;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/fh;->a(J)V

    .line 93
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tapjoy/internal/ff$a;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 228
    if-eqz p1, :cond_1

    .line 229
    iget-object v0, p1, Lcom/tapjoy/internal/ff$a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    sget-object v0, Lcom/tapjoy/internal/ff;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :goto_0
    return-void

    .line 232
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    iget-object v1, p1, Lcom/tapjoy/internal/ff$a;->a:Ljava/lang/String;

    aput-object v1, v0, v2

    goto :goto_0

    .line 236
    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v1

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 24
    invoke-static {p0, p1, p2}, Lcom/tapjoy/internal/ff;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/TreeMap;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 163
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/tapjoy/internal/bm;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0, p2}, Lcom/tapjoy/internal/ff;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 164
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;)V
    .locals 1

    .prologue
    .line 133
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/internal/ff;->a:Ljava/util/Set;

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/tapjoy/internal/ff;->a:Ljava/util/Set;

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 4

    .prologue
    .line 107
    sget-boolean v0, Lcom/tapjoy/internal/ff;->d:Z

    if-eq v0, p0, :cond_0

    .line 108
    sput-boolean p0, Lcom/tapjoy/internal/ff;->d:Z

    .line 109
    sget-object v0, Lcom/tapjoy/internal/ff;->c:Lcom/tapjoy/internal/ff;

    if-eqz v0, :cond_0

    .line 110
    if-eqz p0, :cond_1

    .line 111
    sget-object v0, Lcom/tapjoy/internal/ff;->c:Lcom/tapjoy/internal/ff;

    invoke-static {}, Lcom/tapjoy/internal/y;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tapjoy/internal/ff;->a(J)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    sget-object v0, Lcom/tapjoy/internal/ff;->c:Lcom/tapjoy/internal/ff;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ff;->a()V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/tapjoy/internal/ff$a;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/tapjoy/internal/ff;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/ff$a;

    .line 202
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tapjoy/internal/ff$a;->b()Lcom/tapjoy/internal/ff$a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/tapjoy/internal/ff$a;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/ff$a;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7

    .prologue
    .line 145
    sget-object v0, Lcom/tapjoy/internal/ff;->a:Ljava/util/Set;

    .line 146
    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    sget-boolean v0, Lcom/tapjoy/internal/ff;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/internal/ff;->c:Lcom/tapjoy/internal/ff;

    if-eqz v0, :cond_0

    .line 150
    sget-object v1, Lcom/tapjoy/internal/ff;->c:Lcom/tapjoy/internal/ff;

    invoke-static {}, Lcom/tapjoy/internal/y;->b()J

    move-result-wide v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/tapjoy/internal/ff;->a(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Lcom/tapjoy/internal/ff$a;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/tapjoy/internal/ff;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/ff$a;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lcom/tapjoy/internal/ff$a;
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/tapjoy/internal/ff;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/ff$a;

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Lcom/tapjoy/internal/ff$a;
    .locals 1

    .prologue
    .line 244
    new-instance v0, Lcom/tapjoy/internal/ff$a;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/ff$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(J)V
.end method

.method protected abstract a(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end method
