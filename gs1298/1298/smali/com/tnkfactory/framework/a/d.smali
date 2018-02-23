.class public Lcom/tnkfactory/framework/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tnkfactory/framework/a/a;


# instance fields
.field private a:[B

.field private b:[I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>([B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tnkfactory/framework/a/d;->a:[B

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tnkfactory/framework/a/d;->b:[I

    iput v1, p0, Lcom/tnkfactory/framework/a/d;->c:I

    iput v1, p0, Lcom/tnkfactory/framework/a/d;->d:I

    iput-object p1, p0, Lcom/tnkfactory/framework/a/d;->a:[B

    return-void
.end method

.method private final a(B)I
    .locals 0

    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x100

    :cond_0
    return p1
.end method

.method private final a([III)V
    .locals 2

    aget v0, p1, p2

    aget v1, p1, p3

    aput v1, p1, p2

    aput v0, p1, p3

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 3

    iget v0, p0, Lcom/tnkfactory/framework/a/d;->c:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/tnkfactory/framework/a/d;->c:I

    iget-object v0, p0, Lcom/tnkfactory/framework/a/d;->b:[I

    iget v1, p0, Lcom/tnkfactory/framework/a/d;->c:I

    aget v0, v0, v1

    iget v1, p0, Lcom/tnkfactory/framework/a/d;->d:I

    add-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/tnkfactory/framework/a/d;->d:I

    iget-object v0, p0, Lcom/tnkfactory/framework/a/d;->b:[I

    iget v1, p0, Lcom/tnkfactory/framework/a/d;->c:I

    iget v2, p0, Lcom/tnkfactory/framework/a/d;->d:I

    invoke-direct {p0, v0, v1, v2}, Lcom/tnkfactory/framework/a/d;->a([III)V

    iget-object v0, p0, Lcom/tnkfactory/framework/a/d;->b:[I

    iget v1, p0, Lcom/tnkfactory/framework/a/d;->c:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/tnkfactory/framework/a/d;->b:[I

    iget v2, p0, Lcom/tnkfactory/framework/a/d;->d:I

    aget v1, v1, v2

    add-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/tnkfactory/framework/a/d;->b:[I

    aget v0, v1, v0

    int-to-byte v0, v0

    xor-int/2addr v0, p1

    return v0
.end method

.method public a()Lcom/tnkfactory/framework/a/a;
    .locals 5

    const/4 v1, 0x0

    iput v1, p0, Lcom/tnkfactory/framework/a/d;->c:I

    iput v1, p0, Lcom/tnkfactory/framework/a/d;->d:I

    iget-object v0, p0, Lcom/tnkfactory/framework/a/d;->a:[B

    array-length v0, v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/tnkfactory/framework/a/d;->a:[B

    array-length v0, v0

    const/16 v2, 0x20

    if-le v0, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "number of bytes must be between 1 and 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/tnkfactory/framework/a/d;->b:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/tnkfactory/framework/a/d;->b:[I

    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/tnkfactory/framework/a/d;->b:[I

    array-length v3, v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/tnkfactory/framework/a/d;->a:[B

    aget-byte v3, v3, v2

    invoke-direct {p0, v3}, Lcom/tnkfactory/framework/a/d;->a(B)I

    move-result v3

    iget-object v4, p0, Lcom/tnkfactory/framework/a/d;->b:[I

    aget v4, v4, v1

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    rem-int/lit16 v0, v0, 0x100

    iget-object v3, p0, Lcom/tnkfactory/framework/a/d;->b:[I

    invoke-direct {p0, v3, v1, v0}, Lcom/tnkfactory/framework/a/d;->a([III)V

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/tnkfactory/framework/a/d;->a:[B

    array-length v3, v3

    rem-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method public a([BII)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget v1, p0, Lcom/tnkfactory/framework/a/d;->c:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/tnkfactory/framework/a/d;->c:I

    iget-object v1, p0, Lcom/tnkfactory/framework/a/d;->b:[I

    iget v2, p0, Lcom/tnkfactory/framework/a/d;->c:I

    aget v1, v1, v2

    iget v2, p0, Lcom/tnkfactory/framework/a/d;->d:I

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/tnkfactory/framework/a/d;->d:I

    iget-object v1, p0, Lcom/tnkfactory/framework/a/d;->b:[I

    iget v2, p0, Lcom/tnkfactory/framework/a/d;->c:I

    iget v3, p0, Lcom/tnkfactory/framework/a/d;->d:I

    invoke-direct {p0, v1, v2, v3}, Lcom/tnkfactory/framework/a/d;->a([III)V

    iget-object v1, p0, Lcom/tnkfactory/framework/a/d;->b:[I

    iget v2, p0, Lcom/tnkfactory/framework/a/d;->c:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/tnkfactory/framework/a/d;->b:[I

    iget v3, p0, Lcom/tnkfactory/framework/a/d;->d:I

    aget v2, v2, v3

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int v2, p2, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    iget-object v4, p0, Lcom/tnkfactory/framework/a/d;->b:[I

    aget v1, v4, v1

    int-to-byte v1, v1

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(I)I
    .locals 3

    iget v0, p0, Lcom/tnkfactory/framework/a/d;->c:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/tnkfactory/framework/a/d;->c:I

    iget-object v0, p0, Lcom/tnkfactory/framework/a/d;->b:[I

    iget v1, p0, Lcom/tnkfactory/framework/a/d;->c:I

    aget v0, v0, v1

    iget v1, p0, Lcom/tnkfactory/framework/a/d;->d:I

    add-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/tnkfactory/framework/a/d;->d:I

    iget-object v0, p0, Lcom/tnkfactory/framework/a/d;->b:[I

    iget v1, p0, Lcom/tnkfactory/framework/a/d;->c:I

    iget v2, p0, Lcom/tnkfactory/framework/a/d;->d:I

    invoke-direct {p0, v0, v1, v2}, Lcom/tnkfactory/framework/a/d;->a([III)V

    iget-object v0, p0, Lcom/tnkfactory/framework/a/d;->b:[I

    iget v1, p0, Lcom/tnkfactory/framework/a/d;->c:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/tnkfactory/framework/a/d;->b:[I

    iget v2, p0, Lcom/tnkfactory/framework/a/d;->d:I

    aget v1, v1, v2

    add-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/tnkfactory/framework/a/d;->b:[I

    aget v0, v1, v0

    int-to-byte v0, v0

    xor-int/2addr v0, p1

    return v0
.end method
