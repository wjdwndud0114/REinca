.class public final Lcom/tapjoy/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p1}, Lcom/tapjoy/internal/bs;->b(Ljava/lang/String;)Lcom/tapjoy/internal/bs;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/tapjoy/internal/bs;->h()V

    .line 92
    :goto_0
    invoke-virtual {v0}, Lcom/tapjoy/internal/bs;->j()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 93
    invoke-virtual {v0}, Lcom/tapjoy/internal/bs;->l()Ljava/lang/String;

    move-result-object v1

    .line 94
    const-string v2, "orderId"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/h;->a:Ljava/lang/String;

    goto :goto_0

    .line 96
    :cond_0
    const-string v2, "packageName"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    invoke-virtual {v0}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/h;->b:Ljava/lang/String;

    goto :goto_0

    .line 98
    :cond_1
    const-string v2, "productId"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    invoke-virtual {v0}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/h;->c:Ljava/lang/String;

    goto :goto_0

    .line 100
    :cond_2
    const-string v2, "purchaseTime"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    invoke-virtual {v0}, Lcom/tapjoy/internal/bs;->q()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tapjoy/internal/h;->d:J

    goto :goto_0

    .line 102
    :cond_3
    const-string v2, "purchaseState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 103
    invoke-virtual {v0}, Lcom/tapjoy/internal/bs;->r()I

    move-result v1

    iput v1, p0, Lcom/tapjoy/internal/h;->e:I

    goto :goto_0

    .line 104
    :cond_4
    const-string v2, "developerPayload"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 105
    invoke-virtual {v0}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/h;->f:Ljava/lang/String;

    goto :goto_0

    .line 106
    :cond_5
    const-string v2, "purchaseToken"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 107
    invoke-virtual {v0}, Lcom/tapjoy/internal/bs;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/h;->g:Ljava/lang/String;

    goto :goto_0

    .line 109
    :cond_6
    invoke-virtual {v0}, Lcom/tapjoy/internal/bs;->s()V

    goto :goto_0

    .line 112
    :cond_7
    invoke-virtual {v0}, Lcom/tapjoy/internal/bs;->i()V

    .line 113
    return-void
.end method
