.class Lcom/tnkfactory/ad/he;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tnkfactory/ad/hc;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/hd;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/hd;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/he;->a:Lcom/tnkfactory/ad/hd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Ljava/lang/String;
    .locals 9

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-boolean v1, v1, Lcom/tnkfactory/ad/TnkAdWallStyle;->enableCurrencyFormat:Z

    if-eqz v1, :cond_3

    const-wide v2, 0x174876e800L

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    long-to-double v2, p1

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sub-double/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-wide/32 v2, 0x5f5e100

    cmp-long v1, p1, v2

    if-ltz v1, :cond_1

    long-to-double v2, p1

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sub-double/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0xf4240

    cmp-long v1, p1, v2

    if-ltz v1, :cond_2

    long-to-double v2, p1

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sub-double/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
