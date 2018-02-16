.class public final Lcom/tapjoy/internal/gr;
.super Lcom/tapjoy/internal/gq;
.source "SourceFile"


# static fields
.field public static final d:Lcom/tapjoy/internal/bn;


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Ljava/util/Map;

.field public c:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/tapjoy/internal/gr$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gr$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gr;->d:Lcom/tapjoy/internal/bn;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/bs;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lcom/tapjoy/internal/gq;-><init>()V

    .line 1074
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iput-object v1, p0, Lcom/tapjoy/internal/gr;->a:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->h()V

    move-object v1, v0

    move-object v2, v0

    .line 24
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->l()Ljava/lang/String;

    move-result-object v0

    .line 26
    const-string v3, "layouts"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 27
    iget-object v0, p0, Lcom/tapjoy/internal/gr;->a:Ljava/util/ArrayList;

    sget-object v3, Lcom/tapjoy/internal/ha;->d:Lcom/tapjoy/internal/bn;

    invoke-virtual {p1, v0, v3}, Lcom/tapjoy/internal/bs;->a(Ljava/util/List;Lcom/tapjoy/internal/bn;)V

    goto :goto_0

    .line 29
    :cond_0
    const-string v3, "meta"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 30
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->d()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gr;->b:Ljava/util/Map;

    goto :goto_0

    .line 32
    :cond_1
    const-string v3, "max_show_time"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 33
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->p()D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, p0, Lcom/tapjoy/internal/gr;->c:F

    goto :goto_0

    .line 35
    :cond_2
    const-string v3, "ad_content"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 36
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->b()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 37
    :cond_3
    const-string v3, "redirect_url"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 38
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->b()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 41
    :cond_4
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->s()V

    goto :goto_0

    .line 44
    :cond_5
    invoke-virtual {p1}, Lcom/tapjoy/internal/bs;->i()V

    .line 46
    iget-object v0, p0, Lcom/tapjoy/internal/gr;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 47
    iget-object v0, p0, Lcom/tapjoy/internal/gr;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/ha;

    .line 48
    iget-object v4, v0, Lcom/tapjoy/internal/ha;->c:Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    .line 49
    iget-object v0, v0, Lcom/tapjoy/internal/ha;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gz;

    .line 50
    iget-object v5, v0, Lcom/tapjoy/internal/gz;->i:Ljava/lang/String;

    if-nez v5, :cond_8

    .line 51
    iput-object v2, v0, Lcom/tapjoy/internal/gz;->i:Ljava/lang/String;

    .line 53
    :cond_8
    iget-object v5, v0, Lcom/tapjoy/internal/gz;->h:Ljava/lang/String;

    if-nez v5, :cond_7

    .line 54
    iput-object v1, v0, Lcom/tapjoy/internal/gz;->h:Ljava/lang/String;

    goto :goto_1

    .line 60
    :cond_9
    return-void
.end method
