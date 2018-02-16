.class Lorg/json/simple/parser/Yylex;
.super Ljava/lang/Object;
.source "Yylex.java"


# static fields
.field public static final STRING_BEGIN:I = 0x2

.field public static final YYEOF:I = -0x1

.field public static final YYINITIAL:I = 0x0

.field private static final ZZ_ACTION:[I

.field private static final ZZ_ACTION_PACKED_0:Ljava/lang/String; = "\u0002\u0000\u0002\u0001\u0001\u0002\u0001\u0003\u0001\u0004\u0003\u0001\u0001\u0005\u0001\u0006\u0001\u0007\u0001\u0008\u0001\t\u0001\n\u0001\u000b\u0001\u000c\u0001\r\u0005\u0000\u0001\u000c\u0001\u000e\u0001\u000f\u0001\u0010\u0001\u0011\u0001\u0012\u0001\u0013\u0001\u0014\u0001\u0000\u0001\u0015\u0001\u0000\u0001\u0015\u0004\u0000\u0001\u0016\u0001\u0017\u0002\u0000\u0001\u0018"

.field private static final ZZ_ATTRIBUTE:[I

.field private static final ZZ_ATTRIBUTE_PACKED_0:Ljava/lang/String; = "\u0002\u0000\u0001\t\u0003\u0001\u0001\t\u0003\u0001\u0006\t\u0002\u0001\u0001\t\u0005\u0000\u0008\t\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0004\u0000\u0002\t\u0002\u0000\u0001\t"

.field private static final ZZ_BUFFERSIZE:I = 0x4000

.field private static final ZZ_CMAP:[C

.field private static final ZZ_CMAP_PACKED:Ljava/lang/String; = "\t\u0000\u0001\u0007\u0001\u0007\u0002\u0000\u0001\u0007\u0012\u0000\u0001\u0007\u0001\u0000\u0001\t\u0008\u0000\u0001\u0006\u0001\u0019\u0001\u0002\u0001\u0004\u0001\n\n\u0003\u0001\u001a\u0006\u0000\u0004\u0001\u0001\u0005\u0001\u0001\u0014\u0000\u0001\u0017\u0001\u0008\u0001\u0018\u0003\u0000\u0001\u0012\u0001\u000b\u0002\u0001\u0001\u0011\u0001\u000c\u0005\u0000\u0001\u0013\u0001\u0000\u0001\r\u0003\u0000\u0001\u000e\u0001\u0014\u0001\u000f\u0001\u0010\u0005\u0000\u0001\u0015\u0001\u0000\u0001\u0016\uff82\u0000"

.field private static final ZZ_ERROR_MSG:[Ljava/lang/String;

.field private static final ZZ_LEXSTATE:[I

.field private static final ZZ_NO_MATCH:I = 0x1

.field private static final ZZ_PUSHBACK_2BIG:I = 0x2

.field private static final ZZ_ROWMAP:[I

.field private static final ZZ_ROWMAP_PACKED_0:Ljava/lang/String; = "\u0000\u0000\u0000\u001b\u00006\u0000Q\u0000l\u0000\u0087\u00006\u0000\u00a2\u0000\u00bd\u0000\u00d8\u00006\u00006\u00006\u00006\u00006\u00006\u0000\u00f3\u0000\u010e\u00006\u0000\u0129\u0000\u0144\u0000\u015f\u0000\u017a\u0000\u0195\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u0000\u01b0\u0000\u01cb\u0000\u01e6\u0000\u01e6\u0000\u0201\u0000\u021c\u0000\u0237\u0000\u0252\u00006\u00006\u0000\u026d\u0000\u0288\u00006"

.field private static final ZZ_TRANS:[I

.field private static final ZZ_UNKNOWN_ERROR:I


# instance fields
.field private sb:Ljava/lang/StringBuffer;

.field private yychar:I

.field private yycolumn:I

.field private yyline:I

.field private zzAtBOL:Z

.field private zzAtEOF:Z

.field private zzBuffer:[C

.field private zzCurrentPos:I

.field private zzEndRead:I

.field private zzLexicalState:I

.field private zzMarkedPos:I

.field private zzReader:Ljava/io/Reader;

.field private zzStartRead:I

.field private zzState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/json/simple/parser/Yylex;->ZZ_LEXSTATE:[I

    .line 40
    const-string v0, "\t\u0000\u0001\u0007\u0001\u0007\u0002\u0000\u0001\u0007\u0012\u0000\u0001\u0007\u0001\u0000\u0001\t\u0008\u0000\u0001\u0006\u0001\u0019\u0001\u0002\u0001\u0004\u0001\n\n\u0003\u0001\u001a\u0006\u0000\u0004\u0001\u0001\u0005\u0001\u0001\u0014\u0000\u0001\u0017\u0001\u0008\u0001\u0018\u0003\u0000\u0001\u0012\u0001\u000b\u0002\u0001\u0001\u0011\u0001\u000c\u0005\u0000\u0001\u0013\u0001\u0000\u0001\r\u0003\u0000\u0001\u000e\u0001\u0014\u0001\u000f\u0001\u0010\u0005\u0000\u0001\u0015\u0001\u0000\u0001\u0016\uff82\u0000"

    invoke-static {v0}, Lorg/json/simple/parser/Yylex;->zzUnpackCMap(Ljava/lang/String;)[C

    move-result-object v0

    sput-object v0, Lorg/json/simple/parser/Yylex;->ZZ_CMAP:[C

    .line 45
    invoke-static {}, Lorg/json/simple/parser/Yylex;->zzUnpackAction()[I

    move-result-object v0

    sput-object v0, Lorg/json/simple/parser/Yylex;->ZZ_ACTION:[I

    .line 77
    invoke-static {}, Lorg/json/simple/parser/Yylex;->zzUnpackRowMap()[I

    move-result-object v0

    sput-object v0, Lorg/json/simple/parser/Yylex;->ZZ_ROWMAP:[I

    .line 108
    const/16 v0, 0x2a3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/json/simple/parser/Yylex;->ZZ_TRANS:[I

    .line 185
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Unkown internal scanner error"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Error: could not match input"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Error: pushback value was too large"

    aput-object v2, v0, v1

    sput-object v0, Lorg/json/simple/parser/Yylex;->ZZ_ERROR_MSG:[Ljava/lang/String;

    .line 194
    invoke-static {}, Lorg/json/simple/parser/Yylex;->zzUnpackAttribute()[I

    move-result-object v0

    sput-object v0, Lorg/json/simple/parser/Yylex;->ZZ_ATTRIBUTE:[I

    return-void

    .line 23
    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x1
    .end array-data

    .line 108
    :array_1
    .array-data 4
        0x2
        0x2
        0x3
        0x4
        0x2
        0x2
        0x2
        0x5
        0x2
        0x6
        0x2
        0x2
        0x7
        0x8
        0x2
        0x9
        0x2
        0x2
        0x2
        0x2
        0x2
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x11
        0x12
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x4
        0x13
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x5
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x15
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x16
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x17
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        -0x1
        -0x1
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x21
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x22
        0x23
        -0x1
        -0x1
        0x22
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x25
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        -0x1
        0x27
        -0x1
        0x27
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x27
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x27
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x21
        -0x1
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x28
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x29
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2a
        -0x1
        0x2a
        -0x1
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2a
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
        0x2a
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2b
        -0x1
        0x2b
        -0x1
        0x2b
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2b
        0x2b
        -0x1
        -0x1
        -0x1
        -0x1
        0x2b
        0x2b
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2c
        -0x1
        0x2c
        -0x1
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2c
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        0x2c
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 292
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/json/simple/parser/Yylex;-><init>(Ljava/io/Reader;)V

    .line 293
    return-void
.end method

.method constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lorg/json/simple/parser/Yylex;->zzLexicalState:I

    .line 231
    const/16 v0, 0x4000

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/json/simple/parser/Yylex;->zzBuffer:[C

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/json/simple/parser/Yylex;->zzAtBOL:Z

    .line 267
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/json/simple/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    .line 282
    iput-object p1, p0, Lorg/json/simple/parser/Yylex;->zzReader:Ljava/io/Reader;

    .line 283
    return-void
.end method

.method private zzRefill()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 324
    iget v5, p0, Lorg/json/simple/parser/Yylex;->zzStartRead:I

    if-lez v5, :cond_0

    .line 325
    iget-object v5, p0, Lorg/json/simple/parser/Yylex;->zzBuffer:[C

    iget v6, p0, Lorg/json/simple/parser/Yylex;->zzStartRead:I

    iget-object v7, p0, Lorg/json/simple/parser/Yylex;->zzBuffer:[C

    iget v8, p0, Lorg/json/simple/parser/Yylex;->zzEndRead:I

    iget v9, p0, Lorg/json/simple/parser/Yylex;->zzStartRead:I

    sub-int/2addr v8, v9

    invoke-static {v5, v6, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    iget v5, p0, Lorg/json/simple/parser/Yylex;->zzEndRead:I

    iget v6, p0, Lorg/json/simple/parser/Yylex;->zzStartRead:I

    sub-int/2addr v5, v6

    iput v5, p0, Lorg/json/simple/parser/Yylex;->zzEndRead:I

    .line 331
    iget v5, p0, Lorg/json/simple/parser/Yylex;->zzCurrentPos:I

    iget v6, p0, Lorg/json/simple/parser/Yylex;->zzStartRead:I

    sub-int/2addr v5, v6

    iput v5, p0, Lorg/json/simple/parser/Yylex;->zzCurrentPos:I

    .line 332
    iget v5, p0, Lorg/json/simple/parser/Yylex;->zzMarkedPos:I

    iget v6, p0, Lorg/json/simple/parser/Yylex;->zzStartRead:I

    sub-int/2addr v5, v6

    iput v5, p0, Lorg/json/simple/parser/Yylex;->zzMarkedPos:I

    .line 333
    iput v3, p0, Lorg/json/simple/parser/Yylex;->zzStartRead:I

    .line 337
    :cond_0
    iget v5, p0, Lorg/json/simple/parser/Yylex;->zzCurrentPos:I

    iget-object v6, p0, Lorg/json/simple/parser/Yylex;->zzBuffer:[C

    array-length v6, v6

    if-lt v5, v6, :cond_1

    .line 339
    iget v5, p0, Lorg/json/simple/parser/Yylex;->zzCurrentPos:I

    mul-int/lit8 v5, v5, 0x2

    new-array v1, v5, [C

    .line 340
    .local v1, "newBuffer":[C
    iget-object v5, p0, Lorg/json/simple/parser/Yylex;->zzBuffer:[C

    iget-object v6, p0, Lorg/json/simple/parser/Yylex;->zzBuffer:[C

    array-length v6, v6

    invoke-static {v5, v3, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    iput-object v1, p0, Lorg/json/simple/parser/Yylex;->zzBuffer:[C

    .line 345
    .end local v1    # "newBuffer":[C
    :cond_1
    iget-object v5, p0, Lorg/json/simple/parser/Yylex;->zzReader:Ljava/io/Reader;

    iget-object v6, p0, Lorg/json/simple/parser/Yylex;->zzBuffer:[C

    iget v7, p0, Lorg/json/simple/parser/Yylex;->zzEndRead:I

    iget-object v8, p0, Lorg/json/simple/parser/Yylex;->zzBuffer:[C

    array-length v8, v8

    iget v9, p0, Lorg/json/simple/parser/Yylex;->zzEndRead:I

    sub-int/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/Reader;->read([CII)I

    move-result v2

    .line 348
    .local v2, "numRead":I
    if-lez v2, :cond_2

    .line 349
    iget v4, p0, Lorg/json/simple/parser/Yylex;->zzEndRead:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/json/simple/parser/Yylex;->zzEndRead:I

    .line 364
    :goto_0
    return v3

    .line 353
    :cond_2
    if-nez v2, :cond_4

    .line 354
    iget-object v5, p0, Lorg/json/simple/parser/Yylex;->zzReader:Ljava/io/Reader;

    invoke-virtual {v5}, Ljava/io/Reader;->read()I

    move-result v0

    .line 355
    .local v0, "c":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_3

    move v3, v4

    .line 356
    goto :goto_0

    .line 358
    :cond_3
    iget-object v4, p0, Lorg/json/simple/parser/Yylex;->zzBuffer:[C

    iget v5, p0, Lorg/json/simple/parser/Yylex;->zzEndRead:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/json/simple/parser/Yylex;->zzEndRead:I

    int-to-char v6, v0

    aput-char v6, v4, v5

    goto :goto_0

    .end local v0    # "c":I
    :cond_4
    move v3, v4

    .line 364
    goto :goto_0
.end method

.method private zzScanError(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    .line 468
    :try_start_0
    sget-object v2, Lorg/json/simple/parser/Yylex;->ZZ_ERROR_MSG:[Ljava/lang/String;

    aget-object v1, v2, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    .local v1, "message":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 470
    .end local v1    # "message":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v2, Lorg/json/simple/parser/Yylex;->ZZ_ERROR_MSG:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_0
.end method

.method private static zzUnpackAction(Ljava/lang/String;I[I)I
    .locals 7
    .param p0, "packed"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "result"    # [I

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, "i":I
    move v3, p1

    .line 64
    .local v3, "j":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, "l":I
    move v2, v1

    .line 65
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 66
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 67
    .local v0, "count":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 68
    .local v6, "value":I
    :goto_1
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    aput v6, p2, v3

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_1

    move v3, v4

    .line 69
    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_0

    .line 70
    .end local v0    # "count":I
    .end local v6    # "value":I
    :cond_0
    return v3

    .end local v3    # "j":I
    .restart local v0    # "count":I
    .restart local v4    # "j":I
    .restart local v6    # "value":I
    :cond_1
    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_1
.end method

.method private static zzUnpackAction()[I
    .locals 3

    .prologue
    .line 55
    const/16 v2, 0x2d

    new-array v1, v2, [I

    .line 56
    .local v1, "result":[I
    const/4 v0, 0x0

    .line 57
    .local v0, "offset":I
    const-string v2, "\u0002\u0000\u0002\u0001\u0001\u0002\u0001\u0003\u0001\u0004\u0003\u0001\u0001\u0005\u0001\u0006\u0001\u0007\u0001\u0008\u0001\t\u0001\n\u0001\u000b\u0001\u000c\u0001\r\u0005\u0000\u0001\u000c\u0001\u000e\u0001\u000f\u0001\u0010\u0001\u0011\u0001\u0012\u0001\u0013\u0001\u0014\u0001\u0000\u0001\u0015\u0001\u0000\u0001\u0015\u0004\u0000\u0001\u0016\u0001\u0017\u0002\u0000\u0001\u0018"

    invoke-static {v2, v0, v1}, Lorg/json/simple/parser/Yylex;->zzUnpackAction(Ljava/lang/String;I[I)I

    move-result v0

    .line 58
    return-object v1
.end method

.method private static zzUnpackAttribute(Ljava/lang/String;I[I)I
    .locals 7
    .param p0, "packed"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "result"    # [I

    .prologue
    .line 209
    const/4 v1, 0x0

    .line 210
    .local v1, "i":I
    move v3, p1

    .line 211
    .local v3, "j":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, "l":I
    move v2, v1

    .line 212
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 213
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 214
    .local v0, "count":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 215
    .local v6, "value":I
    :goto_1
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    aput v6, p2, v3

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_1

    move v3, v4

    .line 216
    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_0

    .line 217
    .end local v0    # "count":I
    .end local v6    # "value":I
    :cond_0
    return v3

    .end local v3    # "j":I
    .restart local v0    # "count":I
    .restart local v4    # "j":I
    .restart local v6    # "value":I
    :cond_1
    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_1
.end method

.method private static zzUnpackAttribute()[I
    .locals 3

    .prologue
    .line 202
    const/16 v2, 0x2d

    new-array v1, v2, [I

    .line 203
    .local v1, "result":[I
    const/4 v0, 0x0

    .line 204
    .local v0, "offset":I
    const-string v2, "\u0002\u0000\u0001\t\u0003\u0001\u0001\t\u0003\u0001\u0006\t\u0002\u0001\u0001\t\u0005\u0000\u0008\t\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0004\u0000\u0002\t\u0002\u0000\u0001\t"

    invoke-static {v2, v0, v1}, Lorg/json/simple/parser/Yylex;->zzUnpackAttribute(Ljava/lang/String;I[I)I

    move-result v0

    .line 205
    return-object v1
.end method

.method private static zzUnpackCMap(Ljava/lang/String;)[C
    .locals 8
    .param p0, "packed"    # Ljava/lang/String;

    .prologue
    .line 302
    const/high16 v7, 0x10000

    new-array v5, v7, [C

    .line 303
    .local v5, "map":[C
    const/4 v1, 0x0

    .line 304
    .local v1, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    move v2, v1

    .line 305
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    const/16 v7, 0x5a

    if-ge v2, v7, :cond_0

    .line 306
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 307
    .local v0, "count":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 308
    .local v6, "value":C
    :goto_1
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    aput-char v6, v5, v3

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_1

    move v3, v4

    .line 309
    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_0

    .line 310
    .end local v0    # "count":I
    .end local v6    # "value":C
    :cond_0
    return-object v5

    .end local v3    # "j":I
    .restart local v0    # "count":I
    .restart local v4    # "j":I
    .restart local v6    # "value":C
    :cond_1
    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_1
.end method

.method private static zzUnpackRowMap(Ljava/lang/String;I[I)I
    .locals 7
    .param p0, "packed"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "result"    # [I

    .prologue
    .line 95
    const/4 v1, 0x0

    .line 96
    .local v1, "i":I
    move v3, p1

    .line 97
    .local v3, "j":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, "l":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    move v2, v1

    .line 98
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 99
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    shl-int/lit8 v0, v6, 0x10

    .line 100
    .local v0, "high":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    or-int/2addr v6, v0

    aput v6, p2, v4

    move v4, v3

    .line 101
    .end local v3    # "j":I
    .restart local v4    # "j":I
    goto :goto_0

    .line 102
    .end local v0    # "high":I
    :cond_0
    return v4
.end method

.method private static zzUnpackRowMap()[I
    .locals 3

    .prologue
    .line 88
    const/16 v2, 0x2d

    new-array v1, v2, [I

    .line 89
    .local v1, "result":[I
    const/4 v0, 0x0

    .line 90
    .local v0, "offset":I
    const-string v2, "\u0000\u0000\u0000\u001b\u00006\u0000Q\u0000l\u0000\u0087\u00006\u0000\u00a2\u0000\u00bd\u0000\u00d8\u00006\u00006\u00006\u00006\u00006\u00006\u0000\u00f3\u0000\u010e\u00006\u0000\u0129\u0000\u0144\u0000\u015f\u0000\u017a\u0000\u0195\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u0000\u01b0\u0000\u01cb\u0000\u01e6\u0000\u01e6\u0000\u0201\u0000\u021c\u0000\u0237\u0000\u0252\u00006\u00006\u0000\u026d\u0000\u0288\u00006"

    invoke-static {v2, v0, v1}, Lorg/json/simple/parser/Yylex;->zzUnpackRowMap(Ljava/lang/String;I[I)I

    move-result v0

    .line 91
    return-object v1
.end method


# virtual methods
.method getPosition()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lorg/json/simple/parser/Yylex;->yychar:I

    return v0
.end method

.method public final yybegin(I)V
    .locals 0
    .param p1, "newState"    # I

    .prologue
    .line 415
    iput p1, p0, Lorg/json/simple/parser/Yylex;->zzLexicalState:I

    .line 416
    return-void
.end method

.method public final yycharat(I)C
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 439
    iget-object v0, p0, Lorg/json/simple/parser/Yylex;->zzBuffer:[C

    iget v1, p0, Lorg/json/simple/parser/Yylex;->zzStartRead:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public final yyclose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/json/simple/parser/Yylex;->zzAtEOF:Z

    .line 373
    iget v0, p0, Lorg/json/simple/parser/Yylex;->zzStartRead:I

    iput v0, p0, Lorg/json/simple/parser/Yylex;->zzEndRead:I

    .line 375
    iget-object v0, p0, Lorg/json/simple/parser/Yylex;->zzReader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lorg/json/simple/parser/Yylex;->zzReader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 377
    :cond_0
    return-void
.end method

.method public final yylength()I
    .locals 2

    .prologue
    .line 447
    iget v0, p0, Lorg/json/simple/parser/Yylex;->zzMarkedPos:I

    iget v1, p0, Lorg/json/simple/parser/Yylex;->zzStartRead:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public yylex()Lorg/json/simple/parser/Yytoken;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/simple/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 508
    move-object/from16 v0, p0

    iget v14, v0, Lorg/json/simple/parser/Yylex;->zzEndRead:I

    .line 509
    .local v14, "zzEndReadL":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/json/simple/parser/Yylex;->zzBuffer:[C

    .line 510
    .local v10, "zzBufferL":[C
    sget-object v11, Lorg/json/simple/parser/Yylex;->ZZ_CMAP:[C

    .line 512
    .local v11, "zzCMapL":[C
    sget-object v19, Lorg/json/simple/parser/Yylex;->ZZ_TRANS:[I

    .line 513
    .local v19, "zzTransL":[I
    sget-object v18, Lorg/json/simple/parser/Yylex;->ZZ_ROWMAP:[I

    .line 514
    .local v18, "zzRowMapL":[I
    sget-object v8, Lorg/json/simple/parser/Yylex;->ZZ_ATTRIBUTE:[I

    .line 517
    .local v8, "zzAttrL":[I
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/json/simple/parser/Yylex;->zzMarkedPos:I

    move/from16 v16, v0

    .line 519
    .local v16, "zzMarkedPosL":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/json/simple/parser/Yylex;->yychar:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/json/simple/parser/Yylex;->zzStartRead:I

    move/from16 v21, v0

    sub-int v21, v16, v21

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/json/simple/parser/Yylex;->yychar:I

    .line 521
    const/4 v7, -0x1

    .line 523
    .local v7, "zzAction":I
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/json/simple/parser/Yylex;->zzStartRead:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/json/simple/parser/Yylex;->zzCurrentPos:I

    move/from16 v12, v16

    .line 525
    .local v12, "zzCurrentPosL":I
    sget-object v20, Lorg/json/simple/parser/Yylex;->ZZ_LEXSTATE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/json/simple/parser/Yylex;->zzLexicalState:I

    move/from16 v21, v0

    aget v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lorg/json/simple/parser/Yylex;->zzState:I

    move v13, v12

    .line 531
    .end local v12    # "zzCurrentPosL":I
    .local v13, "zzCurrentPosL":I
    :goto_1
    if-ge v13, v14, :cond_1

    .line 532
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "zzCurrentPosL":I
    .restart local v12    # "zzCurrentPosL":I
    aget-char v15, v10, v13

    .line 555
    .local v15, "zzInput":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/json/simple/parser/Yylex;->zzState:I

    move/from16 v20, v0

    aget v20, v18, v20

    aget-char v21, v11, v15

    add-int v20, v20, v21

    aget v17, v19, v20

    .line 556
    .local v17, "zzNext":I
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 570
    .end local v17    # "zzNext":I
    :cond_0
    :goto_3
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/json/simple/parser/Yylex;->zzMarkedPos:I

    .line 572
    if-gez v7, :cond_6

    .end local v7    # "zzAction":I
    :goto_4
    packed-switch v7, :pswitch_data_0

    .line 676
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v15, v0, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/json/simple/parser/Yylex;->zzStartRead:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/json/simple/parser/Yylex;->zzCurrentPos:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 677
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/json/simple/parser/Yylex;->zzAtEOF:Z

    .line 678
    const/16 v20, 0x0

    :goto_5
    return-object v20

    .line 533
    .end local v12    # "zzCurrentPosL":I
    .end local v15    # "zzInput":I
    .restart local v7    # "zzAction":I
    .restart local v13    # "zzCurrentPosL":I
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/json/simple/parser/Yylex;->zzAtEOF:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 534
    const/4 v15, -0x1

    .restart local v15    # "zzInput":I
    move v12, v13

    .line 535
    .end local v13    # "zzCurrentPosL":I
    .restart local v12    # "zzCurrentPosL":I
    goto :goto_3

    .line 539
    .end local v12    # "zzCurrentPosL":I
    .end local v15    # "zzInput":I
    .restart local v13    # "zzCurrentPosL":I
    :cond_2
    move-object/from16 v0, p0

    iput v13, v0, Lorg/json/simple/parser/Yylex;->zzCurrentPos:I

    .line 540
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lorg/json/simple/parser/Yylex;->zzMarkedPos:I

    .line 541
    invoke-direct/range {p0 .. p0}, Lorg/json/simple/parser/Yylex;->zzRefill()Z

    move-result v5

    .line 543
    .local v5, "eof":Z
    move-object/from16 v0, p0

    iget v12, v0, Lorg/json/simple/parser/Yylex;->zzCurrentPos:I

    .line 544
    .end local v13    # "zzCurrentPosL":I
    .restart local v12    # "zzCurrentPosL":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/json/simple/parser/Yylex;->zzMarkedPos:I

    move/from16 v16, v0

    .line 545
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/json/simple/parser/Yylex;->zzBuffer:[C

    .line 546
    move-object/from16 v0, p0

    iget v14, v0, Lorg/json/simple/parser/Yylex;->zzEndRead:I

    .line 547
    if-eqz v5, :cond_3

    .line 548
    const/4 v15, -0x1

    .line 549
    .restart local v15    # "zzInput":I
    goto :goto_3

    .line 552
    .end local v15    # "zzInput":I
    :cond_3
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "zzCurrentPosL":I
    .restart local v13    # "zzCurrentPosL":I
    aget-char v15, v10, v12

    .restart local v15    # "zzInput":I
    move v12, v13

    .end local v13    # "zzCurrentPosL":I
    .restart local v12    # "zzCurrentPosL":I
    goto :goto_2

    .line 557
    .end local v5    # "eof":Z
    .restart local v17    # "zzNext":I
    :cond_4
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/json/simple/parser/Yylex;->zzState:I

    .line 559
    move-object/from16 v0, p0

    iget v0, v0, Lorg/json/simple/parser/Yylex;->zzState:I

    move/from16 v20, v0

    aget v9, v8, v20

    .line 560
    .local v9, "zzAttributes":I
    and-int/lit8 v20, v9, 0x1

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 561
    move-object/from16 v0, p0

    iget v7, v0, Lorg/json/simple/parser/Yylex;->zzState:I

    .line 562
    move/from16 v16, v12

    .line 563
    and-int/lit8 v20, v9, 0x8

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    :cond_5
    move v13, v12

    .line 566
    .end local v12    # "zzCurrentPosL":I
    .restart local v13    # "zzCurrentPosL":I
    goto/16 :goto_1

    .line 572
    .end local v9    # "zzAttributes":I
    .end local v13    # "zzCurrentPosL":I
    .end local v17    # "zzNext":I
    .restart local v12    # "zzCurrentPosL":I
    :cond_6
    sget-object v20, Lorg/json/simple/parser/Yylex;->ZZ_ACTION:[I

    aget v7, v20, v7

    goto/16 :goto_4

    .line 574
    .end local v7    # "zzAction":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/json/simple/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lorg/json/simple/parser/Yylex;->yytext()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 578
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/json/simple/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/json/simple/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->length()I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/simple/parser/Yylex;->yybegin(I)V

    goto/16 :goto_0

    .line 582
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/json/simple/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 586
    :pswitch_4
    new-instance v20, Lorg/json/simple/parser/Yytoken;

    const/16 v21, 0x2

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 590
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lorg/json/simple/parser/Yylex;->yytext()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    .local v6, "val":Ljava/lang/Boolean;
    new-instance v20, Lorg/json/simple/parser/Yytoken;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 594
    .end local v6    # "val":Ljava/lang/Boolean;
    :pswitch_6
    new-instance v20, Lorg/json/simple/parser/Yytoken;

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 598
    :pswitch_7
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/simple/parser/Yylex;->yybegin(I)V

    new-instance v20, Lorg/json/simple/parser/Yytoken;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/json/simple/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 602
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/json/simple/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v20, v0

    const/16 v21, 0x5c

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 606
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lorg/json/simple/parser/Yylex;->yytext()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    .local v6, "val":Ljava/lang/Double;
    new-instance v20, Lorg/json/simple/parser/Yytoken;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 610
    .end local v6    # "val":Ljava/lang/Double;
    :pswitch_a
    new-instance v20, Lorg/json/simple/parser/ParseException;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/json/simple/parser/Yylex;->yychar:I

    move/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/Character;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/simple/parser/Yylex;->yycharat(I)C

    move-result v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/Character;-><init>(C)V

    invoke-direct/range {v20 .. v23}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v20

    .line 614
    :pswitch_b
    new-instance v20, Lorg/json/simple/parser/Yytoken;

    const/16 v21, 0x4

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 618
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/json/simple/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v20, v0

    const/16 v21, 0xd

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 622
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/json/simple/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v20, v0

    const/16 v21, 0x2f

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 626
    :pswitch_e
    new-instance v20, Lorg/json/simple/parser/Yytoken;

    const/16 v21, 0x6

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 630
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/json/simple/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v20, v0

    const/16 v21, 0x22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 634
    :pswitch_10
    new-instance v20, Lorg/json/simple/parser/Yytoken;

    const/16 v21, 0x1

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 638
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/json/simple/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v20, v0

    const/16 v21, 0xc

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 643
    :pswitch_12
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/json/simple/parser/Yylex;->yytext()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x10

    invoke-static/range {v20 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 644
    .local v3, "ch":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/json/simple/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v20, v0

    int-to-char v0, v3

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 646
    .end local v3    # "ch":I
    :catch_0
    move-exception v4

    .line 647
    .local v4, "e":Ljava/lang/Exception;
    new-instance v20, Lorg/json/simple/parser/ParseException;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/json/simple/parser/Yylex;->yychar:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v4}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v20

    .line 652
    .end local v4    # "e":Ljava/lang/Exception;
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/json/simple/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v20, v0

    const/16 v21, 0x9

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 656
    :pswitch_14
    new-instance v20, Lorg/json/simple/parser/Yytoken;

    const/16 v21, 0x3

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 660
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lorg/json/simple/parser/Yylex;->yytext()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .local v6, "val":Ljava/lang/Long;
    new-instance v20, Lorg/json/simple/parser/Yytoken;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 664
    .end local v6    # "val":Ljava/lang/Long;
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/json/simple/parser/Yylex;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v20, v0

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 668
    :pswitch_17
    new-instance v20, Lorg/json/simple/parser/Yytoken;

    const/16 v21, 0x5

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 681
    :cond_7
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/json/simple/parser/Yylex;->zzScanError(I)V

    goto/16 :goto_0

    .line 572
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_15
        :pswitch_0
        :pswitch_2
        :pswitch_10
        :pswitch_4
        :pswitch_14
        :pswitch_b
        :pswitch_17
        :pswitch_e
        :pswitch_1
        :pswitch_8
        :pswitch_7
        :pswitch_f
        :pswitch_d
        :pswitch_3
        :pswitch_11
        :pswitch_16
        :pswitch_c
        :pswitch_13
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public yypushback(I)V
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 487
    invoke-virtual {p0}, Lorg/json/simple/parser/Yylex;->yylength()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 488
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/json/simple/parser/Yylex;->zzScanError(I)V

    .line 490
    :cond_0
    iget v0, p0, Lorg/json/simple/parser/Yylex;->zzMarkedPos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/json/simple/parser/Yylex;->zzMarkedPos:I

    .line 491
    return-void
.end method

.method public final yyreset(Ljava/io/Reader;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    const/4 v1, 0x0

    .line 391
    iput-object p1, p0, Lorg/json/simple/parser/Yylex;->zzReader:Ljava/io/Reader;

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/json/simple/parser/Yylex;->zzAtBOL:Z

    .line 393
    iput-boolean v1, p0, Lorg/json/simple/parser/Yylex;->zzAtEOF:Z

    .line 394
    iput v1, p0, Lorg/json/simple/parser/Yylex;->zzStartRead:I

    iput v1, p0, Lorg/json/simple/parser/Yylex;->zzEndRead:I

    .line 395
    iput v1, p0, Lorg/json/simple/parser/Yylex;->zzMarkedPos:I

    iput v1, p0, Lorg/json/simple/parser/Yylex;->zzCurrentPos:I

    .line 396
    iput v1, p0, Lorg/json/simple/parser/Yylex;->yycolumn:I

    iput v1, p0, Lorg/json/simple/parser/Yylex;->yychar:I

    iput v1, p0, Lorg/json/simple/parser/Yylex;->yyline:I

    .line 397
    iput v1, p0, Lorg/json/simple/parser/Yylex;->zzLexicalState:I

    .line 398
    return-void
.end method

.method public final yystate()I
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lorg/json/simple/parser/Yylex;->zzLexicalState:I

    return v0
.end method

.method public final yytext()Ljava/lang/String;
    .locals 5

    .prologue
    .line 423
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/json/simple/parser/Yylex;->zzBuffer:[C

    iget v2, p0, Lorg/json/simple/parser/Yylex;->zzStartRead:I

    iget v3, p0, Lorg/json/simple/parser/Yylex;->zzMarkedPos:I

    iget v4, p0, Lorg/json/simple/parser/Yylex;->zzStartRead:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
