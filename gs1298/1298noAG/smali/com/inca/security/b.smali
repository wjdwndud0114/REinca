.class public Lcom/inca/security/b;
.super Ljava/lang/Object;
.source "f"


# static fields
.field public static final synthetic IIIIiiIiII:I = 0x4

.field public static final synthetic IIIiiIIiii:I = 0x0

.field public static final synthetic IIIiiiiIII:I = 0x10

.field public static final synthetic IIiIIIIIii:I = 0x80

.field public static final synthetic IIiIIIIiIi:I = 0x8

.field public static final synthetic IIiIiIIIii:I = 0x4

.field public static final synthetic IIiiIIIiIi:I = 0x4

.field public static final synthetic IIiiIiIIii:I = 0x6

.field public static final synthetic IIiiiIIiII:I = 0x4

.field public static final synthetic IiIIIiIIIi:I = 0x3

.field public static final synthetic IiIiIIIiIi:I = 0x8

.field public static final synthetic IiIiIiiIii:I = 0x110

.field public static final synthetic IiiIiiiIiI:I = 0xa

.field public static final synthetic IiiiIIIiIi:I = 0x10

.field public static final synthetic IiiiIIiIII:I = 0x111

.field public static final synthetic IiiiiIiiIi:I = 0xe

.field public static final synthetic iIIIiiIIIi:I = 0xf

.field public static final synthetic iiIIIIIiiI:I = 0xc

.field public static final synthetic iiIIIiiiiI:I = 0x10

.field public static final synthetic iiIIiIIiII:I = 0x2

.field public static final synthetic iiIIiIiIii:I = 0x4

.field public static final synthetic iiIiIIIiiI:I = 0x3

.field public static final synthetic iiIiiIIIii:I = 0x8

.field public static final synthetic iiiIIIIiII:I = 0x8

.field public static final synthetic iiiIiIIIII:I = 0x2

.field public static final synthetic iiiIiiiiII:I = 0x4

.field public static final synthetic iiiiIIIiii:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final IIiIIiIiIi(I)I
    .locals 1
    .param p0, "arg0"    # I

    .prologue
    .line 157
    add-int/lit8 p0, p0, -0x2

    .line 78
    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    .line 175
    .end local p0    # "arg0":I
    :goto_0
    return p0

    .restart local p0    # "arg0":I
    :cond_0
    const/4 p0, 0x3

    goto :goto_0
.end method

.method public static final IiIiiIiiII(I)I
    .locals 1
    .param p0, "arg0"    # I

    .prologue
    .line 117
    const/4 v0, 0x7

    if-ge p0, v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xb

    goto :goto_0
.end method

.method public static final IiiiIIIIii()I
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public static final IiiiIIIIii(I)I
    .locals 1
    .param p0, "arg0"    # I

    .prologue
    .line 180
    const/4 v0, 0x7

    if-ge p0, v0, :cond_0

    const/16 v0, 0x9

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xb

    goto :goto_0
.end method

.method public static final IiiiIIIIii(I)Z
    .locals 1
    .param p0, "arg0"    # I

    .prologue
    .line 166
    const/4 v0, 0x7

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final iIiIIiIIIi(I)I
    .locals 1
    .param p0, "arg0"    # I

    .prologue
    .line 165
    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    .line 124
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 182
    :cond_0
    const/16 v0, 0xa

    if-ge p0, v0, :cond_1

    .line 56
    add-int/lit8 v0, p0, -0x3

    goto :goto_0

    .line 19
    :cond_1
    add-int/lit8 v0, p0, -0x6

    goto :goto_0
.end method

.method public static final iiiiiiiIii(I)I
    .locals 1
    .param p0, "arg0"    # I

    .prologue
    const/4 v0, 0x7

    .line 0
    if-ge p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method
