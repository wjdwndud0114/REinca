.class public final enum Lcom/inca/security/wa;
.super Ljava/lang/Enum;
.source "da"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inca/security/xa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = null
.end annotation


# static fields
.field private static final synthetic IIIIiiIiII:[Lcom/inca/security/wa;

.field public static final synthetic enum IIIiiiiIII:Lcom/inca/security/wa;

.field public static final synthetic enum IiIiIiiIii:Lcom/inca/security/wa;

.field public static final synthetic enum IiiIiiiIiI:Lcom/inca/security/wa;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    new-instance v0, Lcom/inca/security/wa;

    const-string v1, "`%p3v#`6f<" #SUCCESSFUL

    invoke-static {v1}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/inca/security/wa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inca/security/wa;->IIIiiiiIII:Lcom/inca/security/wa;

    new-instance v0, Lcom/inca/security/wa;

    const-string v1, "f>`%p3v#`6f<" #UNSUCCESSFUL

    invoke-static {v1}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/inca/security/wa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inca/security/wa;->IiiIiiiIiI:Lcom/inca/security/wa;

    new-instance v0, Lcom/inca/security/wa;

    const-string v1, "3v\"g9u9p1g5l5k3v g9|>" #CERTIFICATE_EXCEPTION

    invoke-static {v1}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/inca/security/wa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inca/security/wa;->IiIiIiiIii:Lcom/inca/security/wa;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/inca/security/wa;

    sget-object v1, Lcom/inca/security/wa;->IIIiiiiIII:Lcom/inca/security/wa;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inca/security/wa;->IiiIiiiIiI:Lcom/inca/security/wa;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inca/security/wa;->IiIiIiiIii:Lcom/inca/security/wa;

    aput-object v1, v0, v4

    sput-object v0, Lcom/inca/security/wa;->IIIIiiIiII:[Lcom/inca/security/wa;

    return-void
.end method

.method private synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inca/security/wa;
    .locals 1
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    .line 97
    const-class v0, Lcom/inca/security/wa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inca/security/wa;

    return-object v0
.end method

.method public static values()[Lcom/inca/security/wa;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/inca/security/wa;->IIIIiiIiII:[Lcom/inca/security/wa;

    invoke-virtual {v0}, [Lcom/inca/security/wa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inca/security/wa;

    return-object v0
.end method
