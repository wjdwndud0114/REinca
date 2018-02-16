.class public final Lcom/tapjoy/internal/hb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/tapjoy/internal/hb;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-static {p0}, Lcom/tapjoy/internal/ct;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    :goto_0
    return-object v0

    .line 19
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tapjoy/internal/hb;

    invoke-direct {v1}, Lcom/tapjoy/internal/hb;-><init>()V

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 22
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 24
    const/16 v4, 0x77

    if-ne v3, v4, :cond_1

    .line 25
    const/4 v3, 0x0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Lcom/tapjoy/internal/hb;->a:F

    .line 26
    const/4 v2, 0x1

    iput v2, v1, Lcom/tapjoy/internal/hb;->b:I

    :goto_1
    move-object v0, v1

    .line 34
    goto :goto_0

    .line 27
    :cond_1
    const/16 v4, 0x68

    if-ne v3, v4, :cond_2

    .line 28
    const/4 v3, 0x0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Lcom/tapjoy/internal/hb;->a:F

    .line 29
    const/4 v2, 0x2

    iput v2, v1, Lcom/tapjoy/internal/hb;->b:I

    goto :goto_1

    .line 37
    :catch_0
    move-exception v1

    goto :goto_0

    .line 31
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Lcom/tapjoy/internal/hb;->a:F

    .line 32
    const/4 v2, 0x0

    iput v2, v1, Lcom/tapjoy/internal/hb;->b:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public final a(FF)F
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 42
    iget v0, p0, Lcom/tapjoy/internal/hb;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 43
    iget v0, p0, Lcom/tapjoy/internal/hb;->a:F

    mul-float/2addr v0, p1

    div-float/2addr v0, v2

    .line 46
    :goto_0
    return v0

    .line 44
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/hb;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 45
    iget v0, p0, Lcom/tapjoy/internal/hb;->a:F

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 46
    :cond_1
    iget v0, p0, Lcom/tapjoy/internal/hb;->a:F

    goto :goto_0
.end method
