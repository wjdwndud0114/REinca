.class public final enum Lcom/inca/security/uc;
.super Ljava/lang/Enum;
.source "xc" #xc


# static fields
.field public static final synthetic enum IIIiiiiIII:Lcom/inca/security/uc;

.field private static final synthetic IiIiIiiIii:[Lcom/inca/security/uc;


# instance fields
.field private final synthetic IIIIiiIiII:[B

.field private final synthetic IiIiIIIiIi:[B

.field private final synthetic IiiIiiiIiI:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/4 v2, 0x0

    new-instance v0, Lcom/inca/security/uc;

    const-string v1, "GAME_KOREA"

    const/16 v5, 0x19

    new-array v3, v5, [B

    fill-array-data v3, :array_0

    const/16 v5, 0x13

    new-array v4, v5, [B

    fill-array-data v4, :array_1

    const/16 v5, 0x10

    new-array v5, v5, [B

    fill-array-data v5, :array_2

    invoke-direct/range {v0 .. v5}, Lcom/inca/security/uc;-><init>(Ljava/lang/String;I[B[B[B)V

    sput-object v0, Lcom/inca/security/uc;->IIIiiiiIII:Lcom/inca/security/uc;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/inca/security/uc;

    sget-object v1, Lcom/inca/security/uc;->IIIiiiiIII:Lcom/inca/security/uc;

    aput-object v1, v0, v2

    sput-object v0, Lcom/inca/security/uc;->IiIiIiiIii:[Lcom/inca/security/uc;

    return-void

    nop

    :array_0
    .array-data 1
        -0x13t
        0x4dt
        0x3t
        -0x3t
        -0x27t
        -0x5bt
        -0x74t
        -0x30t
        -0x58t
        0x37t
        -0x1ft
        -0x7dt
        -0x70t
        -0x2at
        0x5bt
        0x12t
        -0x11t
        0xbt
        0x4at
        -0x4ct
        -0x25t
        -0x42t
        -0x39t
        -0x34t
        -0x45t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x1dt
        0x15t
        0x41t
        -0x3t
        -0x6at
        -0x50t
        -0x67t
        -0x29t
        -0x52t
        0x3bt
        -0x52t
        -0x70t
        -0x7ct
        -0x78t
        0x5ft
        0x8t
        -0x60t
        0x12t
        0x5ct
    .end array-data

    :array_2
    .array-data 1
        0x3dt
        -0x3et
        -0xet
        0x6ct
        -0x3at
        -0x46t
        0x17t
        -0x61t
        0x2bt
        0x28t
        0x55t
        0x4t
        -0x2ft
        -0x24t
        -0x2et
        0x26t
    .end array-data
.end method

.method private synthetic constructor <init>(Ljava/lang/String;I[B[B[B)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # [B
    .param p4, "arg3"    # [B
    .param p5, "arg4"    # [B

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/inca/security/uc;->IiiIiiiIiI:[B

    .line 46
    iput-object p4, p0, Lcom/inca/security/uc;->IiIiIIIiIi:[B

    .line 44
    iput-object p5, p0, Lcom/inca/security/uc;->IIIIiiIiII:[B

    .line 106
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inca/security/uc;
    .locals 1
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    .line 110
    const-class v0, Lcom/inca/security/uc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inca/security/uc;

    return-object v0
.end method

.method public static values()[Lcom/inca/security/uc;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/inca/security/uc;->IiIiIiiIii:[Lcom/inca/security/uc;

    invoke-virtual {v0}, [Lcom/inca/security/uc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inca/security/uc;

    return-object v0
.end method


# virtual methods
.method public IIiIIiIiIi()[B
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/inca/security/uc;->IIIIiiIiII:[B

    return-object v0
.end method

.method public IiiiIIIIii()[B
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/inca/security/uc;->IiiIiiiIiI:[B

    return-object v0
.end method

.method public iIiIIiIIIi()[B
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/inca/security/uc;->IiIiIIIiIi:[B

    return-object v0
.end method
