.class public final Lcom/tapjoy/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Lcom/tapjoy/internal/bs;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bs;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/tapjoy/internal/bs;->h()V

    .line 68
    :goto_0
    invoke-virtual {v0}, Lcom/tapjoy/internal/bs;->j()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 69
    invoke-virtual {v0}, Lcom/tapjoy/internal/bs;->l()Ljava/lang/String;

    move-result-object v1

    .line 70
    const-string v2, "productId"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {v0}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/g;->a:Ljava/lang/String;

    goto :goto_0

    .line 72
    :cond_0
    const-string v2, "type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    invoke-virtual {v0}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/g;->b:Ljava/lang/String;

    goto :goto_0

    .line 74
    :cond_1
    const-string v2, "price"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    invoke-virtual {v0}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/g;->c:Ljava/lang/String;

    goto :goto_0

    .line 76
    :cond_2
    const-string v2, "title"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    invoke-virtual {v0}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/g;->d:Ljava/lang/String;

    goto :goto_0

    .line 78
    :cond_3
    const-string v2, "description"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 79
    invoke-virtual {v0}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/g;->e:Ljava/lang/String;

    goto :goto_0

    .line 80
    :cond_4
    const-string v2, "price_currency_code"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 81
    invoke-virtual {v0}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/g;->f:Ljava/lang/String;

    goto :goto_0

    .line 82
    :cond_5
    const-string v2, "price_amount_micros"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 83
    invoke-virtual {v0}, Lcom/tapjoy/internal/bs;->q()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tapjoy/internal/g;->g:J

    goto :goto_0

    .line 85
    :cond_6
    invoke-virtual {v0}, Lcom/tapjoy/internal/bs;->s()V

    goto :goto_0

    .line 88
    :cond_7
    invoke-virtual {v0}, Lcom/tapjoy/internal/bs;->i()V

    .line 89
    return-void
.end method
