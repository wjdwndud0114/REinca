.class public final Lcom/tapjoy/internal/hj;
.super Lcom/tapjoy/internal/hi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/hj$a;
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public d:Z

.field private final e:Lcom/tapjoy/internal/fz;

.field private final f:Lcom/tapjoy/internal/ed;

.field private final g:Lcom/tapjoy/internal/dx;

.field private final h:Lcom/tapjoy/internal/ek;

.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/fz;Lcom/tapjoy/internal/ed;Lcom/tapjoy/internal/dx;Lcom/tapjoy/internal/ek;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/tapjoy/internal/hi;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/tapjoy/internal/hj;->e:Lcom/tapjoy/internal/fz;

    .line 45
    iput-object p2, p0, Lcom/tapjoy/internal/hj;->f:Lcom/tapjoy/internal/ed;

    .line 46
    iput-object p3, p0, Lcom/tapjoy/internal/hj;->g:Lcom/tapjoy/internal/dx;

    .line 47
    iput-object p4, p0, Lcom/tapjoy/internal/hj;->h:Lcom/tapjoy/internal/ek;

    .line 48
    iput-object p5, p0, Lcom/tapjoy/internal/hj;->c:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/hj;->d:Z

    .line 50
    iput-object p6, p0, Lcom/tapjoy/internal/hj;->i:Landroid/content/Context;

    .line 51
    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/tapjoy/internal/bs;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 26
    .line 1086
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->h()V

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    .line 1087
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1088
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->l()Ljava/lang/String;

    move-result-object v0

    .line 1089
    const-string v4, "interstitial"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1090
    sget-object v0, Lcom/tapjoy/internal/gu;->n:Lcom/tapjoy/internal/bn;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/bs;->a(Lcom/tapjoy/internal/bn;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gu;

    move-object v3, v0

    goto :goto_0

    .line 1091
    :cond_0
    const-string v4, "contextual_button"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1092
    sget-object v0, Lcom/tapjoy/internal/gr;->d:Lcom/tapjoy/internal/bn;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/bs;->a(Lcom/tapjoy/internal/bn;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gr;

    move-object v2, v0

    goto :goto_0

    .line 1093
    :cond_1
    const-string v4, "enabled_placements"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1094
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->c()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 1096
    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->s()V

    goto :goto_0

    .line 1099
    :cond_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->i()V

    .line 1100
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gu;->a()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3}, Lcom/tapjoy/internal/gu;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1101
    :cond_4
    new-instance v0, Lcom/tapjoy/internal/hj$a;

    new-instance v2, Lcom/tapjoy/internal/ge;

    iget-object v4, p0, Lcom/tapjoy/internal/hj;->e:Lcom/tapjoy/internal/fz;

    iget-object v5, p0, Lcom/tapjoy/internal/hj;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/tapjoy/internal/hj;->i:Landroid/content/Context;

    invoke-direct {v2, v4, v5, v3, v6}, Lcom/tapjoy/internal/ge;-><init>(Lcom/tapjoy/internal/fz;Ljava/lang/String;Lcom/tapjoy/internal/gu;Landroid/content/Context;)V

    invoke-direct {v0, v2, v1}, Lcom/tapjoy/internal/hj$a;-><init>(Lcom/tapjoy/internal/gg;Ljava/util/List;)V

    .line 1104
    :goto_1
    return-object v0

    .line 1103
    :cond_5
    if-eqz v2, :cond_6

    .line 1104
    new-instance v0, Lcom/tapjoy/internal/hj$a;

    new-instance v3, Lcom/tapjoy/internal/fv;

    iget-object v4, p0, Lcom/tapjoy/internal/hj;->e:Lcom/tapjoy/internal/fz;

    iget-object v5, p0, Lcom/tapjoy/internal/hj;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/tapjoy/internal/hj;->i:Landroid/content/Context;

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/tapjoy/internal/fv;-><init>(Lcom/tapjoy/internal/fz;Ljava/lang/String;Lcom/tapjoy/internal/gr;Landroid/content/Context;)V

    invoke-direct {v0, v3, v1}, Lcom/tapjoy/internal/hj$a;-><init>(Lcom/tapjoy/internal/gg;Ljava/util/List;)V

    goto :goto_1

    .line 1106
    :cond_6
    new-instance v0, Lcom/tapjoy/internal/hj$a;

    new-instance v2, Lcom/tapjoy/internal/gf;

    invoke-direct {v2}, Lcom/tapjoy/internal/gf;-><init>()V

    invoke-direct {v0, v2, v1}, Lcom/tapjoy/internal/hj$a;-><init>(Lcom/tapjoy/internal/gg;Ljava/util/List;)V

    goto :goto_1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "placement"

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 4

    .prologue
    .line 60
    invoke-super {p0}, Lcom/tapjoy/internal/hi;->e()Ljava/util/Map;

    move-result-object v0

    .line 61
    const-string v1, "info"

    new-instance v2, Lcom/tapjoy/internal/br;

    iget-object v3, p0, Lcom/tapjoy/internal/hj;->f:Lcom/tapjoy/internal/ed;

    invoke-static {v3}, Lcom/tapjoy/internal/gp;->a(Lcom/tapjoy/internal/ed;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/br;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "app"

    new-instance v2, Lcom/tapjoy/internal/br;

    iget-object v3, p0, Lcom/tapjoy/internal/hj;->g:Lcom/tapjoy/internal/dx;

    invoke-static {v3}, Lcom/tapjoy/internal/gp;->a(Lcom/tapjoy/internal/dx;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/br;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "user"

    new-instance v2, Lcom/tapjoy/internal/br;

    iget-object v3, p0, Lcom/tapjoy/internal/hj;->h:Lcom/tapjoy/internal/ek;

    invoke-static {v3}, Lcom/tapjoy/internal/gp;->a(Lcom/tapjoy/internal/ek;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/br;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "placement"

    iget-object v2, p0, Lcom/tapjoy/internal/hj;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-object v0
.end method

.method protected final synthetic f()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 26
    .line 2070
    invoke-super {p0}, Lcom/tapjoy/internal/hi;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/hj$a;

    .line 2071
    iget-object v1, v0, Lcom/tapjoy/internal/hj$a;->a:Lcom/tapjoy/internal/gg;

    instance-of v1, v1, Lcom/tapjoy/internal/gf;

    if-nez v1, :cond_0

    .line 2072
    iget-object v1, v0, Lcom/tapjoy/internal/hj$a;->a:Lcom/tapjoy/internal/gg;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gg;->a()V

    .line 2073
    iget-object v1, v0, Lcom/tapjoy/internal/hj$a;->a:Lcom/tapjoy/internal/gg;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gg;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2074
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tapjoy/internal/hj;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 2075
    new-instance v1, Lcom/tapjoy/internal/gf;

    invoke-direct {v1}, Lcom/tapjoy/internal/gf;-><init>()V

    iput-object v1, v0, Lcom/tapjoy/internal/hj$a;->a:Lcom/tapjoy/internal/gg;

    .line 26
    :cond_0
    return-object v0
.end method
