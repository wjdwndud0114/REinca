.class public final enum Lcom/tapjoy/mraid/util/NavigationStringEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum BACK:Lcom/tapjoy/mraid/util/NavigationStringEnum;

.field public static final enum CLOSE:Lcom/tapjoy/mraid/util/NavigationStringEnum;

.field public static final enum FORWARD:Lcom/tapjoy/mraid/util/NavigationStringEnum;

.field public static final enum NONE:Lcom/tapjoy/mraid/util/NavigationStringEnum;

.field public static final enum REFRESH:Lcom/tapjoy/mraid/util/NavigationStringEnum;

.field private static final synthetic b:[Lcom/tapjoy/mraid/util/NavigationStringEnum;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/tapjoy/mraid/util/NavigationStringEnum;

    const-string v1, "NONE"

    const-string v2, "none"

    invoke-direct {v0, v1, v3, v2}, Lcom/tapjoy/mraid/util/NavigationStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/mraid/util/NavigationStringEnum;->NONE:Lcom/tapjoy/mraid/util/NavigationStringEnum;

    new-instance v0, Lcom/tapjoy/mraid/util/NavigationStringEnum;

    const-string v1, "CLOSE"

    const-string v2, "close"

    invoke-direct {v0, v1, v4, v2}, Lcom/tapjoy/mraid/util/NavigationStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/mraid/util/NavigationStringEnum;->CLOSE:Lcom/tapjoy/mraid/util/NavigationStringEnum;

    new-instance v0, Lcom/tapjoy/mraid/util/NavigationStringEnum;

    const-string v1, "BACK"

    const-string v2, "back"

    invoke-direct {v0, v1, v5, v2}, Lcom/tapjoy/mraid/util/NavigationStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/mraid/util/NavigationStringEnum;->BACK:Lcom/tapjoy/mraid/util/NavigationStringEnum;

    new-instance v0, Lcom/tapjoy/mraid/util/NavigationStringEnum;

    const-string v1, "FORWARD"

    const-string v2, "forward"

    invoke-direct {v0, v1, v6, v2}, Lcom/tapjoy/mraid/util/NavigationStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/mraid/util/NavigationStringEnum;->FORWARD:Lcom/tapjoy/mraid/util/NavigationStringEnum;

    new-instance v0, Lcom/tapjoy/mraid/util/NavigationStringEnum;

    const-string v1, "REFRESH"

    const-string v2, "refresh"

    invoke-direct {v0, v1, v7, v2}, Lcom/tapjoy/mraid/util/NavigationStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/mraid/util/NavigationStringEnum;->REFRESH:Lcom/tapjoy/mraid/util/NavigationStringEnum;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/tapjoy/mraid/util/NavigationStringEnum;

    sget-object v1, Lcom/tapjoy/mraid/util/NavigationStringEnum;->NONE:Lcom/tapjoy/mraid/util/NavigationStringEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tapjoy/mraid/util/NavigationStringEnum;->CLOSE:Lcom/tapjoy/mraid/util/NavigationStringEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tapjoy/mraid/util/NavigationStringEnum;->BACK:Lcom/tapjoy/mraid/util/NavigationStringEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tapjoy/mraid/util/NavigationStringEnum;->FORWARD:Lcom/tapjoy/mraid/util/NavigationStringEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tapjoy/mraid/util/NavigationStringEnum;->REFRESH:Lcom/tapjoy/mraid/util/NavigationStringEnum;

    aput-object v1, v0, v7

    sput-object v0, Lcom/tapjoy/mraid/util/NavigationStringEnum;->b:[Lcom/tapjoy/mraid/util/NavigationStringEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/tapjoy/mraid/util/NavigationStringEnum;->a:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/tapjoy/mraid/util/NavigationStringEnum;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 40
    if-eqz p0, :cond_1

    .line 41
    invoke-static {}, Lcom/tapjoy/mraid/util/NavigationStringEnum;->values()[Lcom/tapjoy/mraid/util/NavigationStringEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 42
    iget-object v4, v0, Lcom/tapjoy/mraid/util/NavigationStringEnum;->a:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    :goto_1
    return-object v0

    .line 41
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/mraid/util/NavigationStringEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/tapjoy/mraid/util/NavigationStringEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/mraid/util/NavigationStringEnum;

    return-object v0
.end method

.method public static values()[Lcom/tapjoy/mraid/util/NavigationStringEnum;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/tapjoy/mraid/util/NavigationStringEnum;->b:[Lcom/tapjoy/mraid/util/NavigationStringEnum;

    invoke-virtual {v0}, [Lcom/tapjoy/mraid/util/NavigationStringEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/mraid/util/NavigationStringEnum;

    return-object v0
.end method


# virtual methods
.method public final getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tapjoy/mraid/util/NavigationStringEnum;->a:Ljava/lang/String;

    return-object v0
.end method
