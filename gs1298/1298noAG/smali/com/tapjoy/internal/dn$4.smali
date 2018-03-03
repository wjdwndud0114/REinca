.class final Lcom/tapjoy/internal/dn$4;
.super Lcom/tapjoy/internal/dn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/dn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/dk;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/dn;-><init>(Lcom/tapjoy/internal/dk;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 6

    .prologue
    const v5, 0xdfff

    const/4 v0, 0x0

    .line 367
    check-cast p1, Ljava/lang/String;

    .line 4073
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_4

    .line 4074
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 4075
    const/16 v4, 0x80

    if-lt v3, v4, :cond_3

    .line 4077
    const/16 v4, 0x800

    if-ge v3, v4, :cond_0

    .line 4078
    add-int/lit8 v1, v1, 0x2

    .line 4073
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4079
    :cond_0
    const v4, 0xd800

    if-lt v3, v4, :cond_1

    if-le v3, v5, :cond_2

    .line 4080
    :cond_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    .line 4081
    :cond_2
    const v4, 0xdbff

    if-gt v3, v4, :cond_3

    add-int/lit8 v3, v0, 0x1

    if-ge v3, v2, :cond_3

    add-int/lit8 v3, v0, 0x1

    .line 4082
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v4, 0xdc00

    if-lt v3, v4, :cond_3

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v5, :cond_3

    .line 4084
    add-int/lit8 v1, v1, 0x4

    .line 4085
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4088
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 367
    :cond_4
    return v1
.end method

.method public final synthetic a(Lcom/tapjoy/internal/do;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 367
    .line 2264
    invoke-virtual {p1}, Lcom/tapjoy/internal/do;->h()J

    move-result-wide v0

    .line 2265
    iget-object v2, p1, Lcom/tapjoy/internal/do;->a:Lcom/tapjoy/internal/ht;

    invoke-interface {v2, v0, v1}, Lcom/tapjoy/internal/ht;->c(J)Ljava/lang/String;

    move-result-object v0

    .line 367
    return-object v0
.end method

.method public final synthetic a(Lcom/tapjoy/internal/dp;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 367
    check-cast p2, Ljava/lang/String;

    .line 3198
    iget-object v0, p1, Lcom/tapjoy/internal/dp;->a:Lcom/tapjoy/internal/hs;

    invoke-interface {v0, p2}, Lcom/tapjoy/internal/hs;->b(Ljava/lang/String;)Lcom/tapjoy/internal/hs;

    .line 367
    return-void
.end method
