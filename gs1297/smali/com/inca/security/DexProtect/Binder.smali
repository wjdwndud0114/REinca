.class public Lcom/inca/security/DexProtect/Binder;
.super Ljava/lang/Object;
.source "kb"


# static fields
.field private static synthetic IIIIiiIiII:I

.field private static synthetic IiIiIiiIii:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput v0, Lcom/inca/security/DexProtect/Binder;->IIIIiiIiII:I

    .line 134
    const/4 v0, 0x0

    sput-object v0, Lcom/inca/security/DexProtect/Binder;->IiIiIiiIii:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getABI()I
    .locals 1

    .prologue
    .line 162
    sget v0, Lcom/inca/security/DexProtect/Binder;->IIIIiiIiII:I

    return v0
.end method

.method public static getReserved1()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/inca/security/DexProtect/Binder;->IiIiIiiIii:Ljava/lang/Object;

    return-object v0
.end method

.method public static setABI(I)V
    .locals 0
    .param p0, "arg0"    # I

    .prologue
    .line 98
    sput p0, Lcom/inca/security/DexProtect/Binder;->IIIIiiIiII:I

    .line 99
    return-void
.end method

.method public static setReserved1(Ljava/lang/Object;)V
    .locals 0
    .param p0, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 87
    sput-object p0, Lcom/inca/security/DexProtect/Binder;->IiIiIiiIii:Ljava/lang/Object;

    .line 165
    return-void
.end method
