.class Lcom/tnkfactory/ad/hi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tnkfactory/ad/hc;


# instance fields
.field final synthetic a:Lcom/tnkfactory/ad/hh;


# direct methods
.method constructor <init>(Lcom/tnkfactory/ad/hh;)V
    .locals 0

    iput-object p1, p0, Lcom/tnkfactory/ad/hi;->a:Lcom/tnkfactory/ad/hh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Ljava/lang/String;
    .locals 7

    const-wide v2, 0x40c3880000000000L    # 10000.0

    const-wide v4, 0x3fa999999999999aL    # 0.05

    sget-object v0, Lcom/tnkfactory/ad/TnkStyle;->AdWall:Lcom/tnkfactory/ad/TnkAdWallStyle;

    iget-boolean v0, v0, Lcom/tnkfactory/ad/TnkAdWallStyle;->enableCurrencyFormat:Z

    if-eqz v0, :cond_3

    const-wide/32 v0, 0x5f5e100

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    long-to-double v0, p1

    const-wide v2, 0x4197d78400000000L    # 1.0E8

    div-double/2addr v0, v2

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#.#"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sub-double/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5104"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-wide/32 v0, 0xf4240

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    long-to-double v0, p1

    div-double/2addr v0, v2

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4e07"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x2710

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    long-to-double v0, p1

    div-double/2addr v0, v2

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#.#"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sub-double/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4e07"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
