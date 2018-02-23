.class Lcom/tnkfactory/ad/hk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tnkfactory/ad/hc;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/hj;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/hj;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/hk;->a:Lcom/tnkfactory/ad/hj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Ljava/lang/String;
    .locals 13

    const-wide v10, 0xe8d4a51000L

    const-wide/32 v8, 0x5f5e100

    const-wide/16 v6, 0x2710

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-boolean v0, v0, Lcom/tnkfactory/ad/TnkAdWallStyle;->enableCurrencyFormat:Z

    if-eqz v0, :cond_3

    cmp-long v0, p1, v10

    if-ltz v0, :cond_4

    div-long v4, p1, v10

    rem-long v0, p1, v10

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uc870"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    cmp-long v3, v0, v8

    if-ltz v3, :cond_0

    div-long v4, v0, v8

    rem-long/2addr v0, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uc5b5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    cmp-long v3, v0, v6

    if-ltz v3, :cond_1

    div-long v4, v0, v6

    rem-long/2addr v0, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\ub9cc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    move-wide v0, p1

    goto :goto_0
.end method
