.class public final enum Lcom/tapjoy/internal/eb;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/eb$a;
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/tapjoy/internal/dn;

.field public static final enum APP:Lcom/tapjoy/internal/eb;

.field public static final enum CAMPAIGN:Lcom/tapjoy/internal/eb;

.field public static final enum CUSTOM:Lcom/tapjoy/internal/eb;

.field public static final enum USAGES:Lcom/tapjoy/internal/eb;

.field private static final synthetic b:[Lcom/tapjoy/internal/eb;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/tapjoy/internal/eb;

    const-string v1, "APP"

    invoke-direct {v0, v1, v2, v2}, Lcom/tapjoy/internal/eb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tapjoy/internal/eb;->APP:Lcom/tapjoy/internal/eb;

    .line 13
    new-instance v0, Lcom/tapjoy/internal/eb;

    const-string v1, "CAMPAIGN"

    invoke-direct {v0, v1, v3, v3}, Lcom/tapjoy/internal/eb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tapjoy/internal/eb;->CAMPAIGN:Lcom/tapjoy/internal/eb;

    .line 15
    new-instance v0, Lcom/tapjoy/internal/eb;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v4, v4}, Lcom/tapjoy/internal/eb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tapjoy/internal/eb;->CUSTOM:Lcom/tapjoy/internal/eb;

    .line 17
    new-instance v0, Lcom/tapjoy/internal/eb;

    const-string v1, "USAGES"

    invoke-direct {v0, v1, v5, v5}, Lcom/tapjoy/internal/eb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tapjoy/internal/eb;->USAGES:Lcom/tapjoy/internal/eb;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tapjoy/internal/eb;

    sget-object v1, Lcom/tapjoy/internal/eb;->APP:Lcom/tapjoy/internal/eb;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tapjoy/internal/eb;->CAMPAIGN:Lcom/tapjoy/internal/eb;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tapjoy/internal/eb;->CUSTOM:Lcom/tapjoy/internal/eb;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tapjoy/internal/eb;->USAGES:Lcom/tapjoy/internal/eb;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tapjoy/internal/eb;->b:[Lcom/tapjoy/internal/eb;

    .line 19
    new-instance v0, Lcom/tapjoy/internal/eb$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/eb$a;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/eb;->ADAPTER:Lcom/tapjoy/internal/dn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/tapjoy/internal/eb;->a:I

    .line 25
    return-void
.end method

.method public static a(I)Lcom/tapjoy/internal/eb;
    .locals 1

    .prologue
    .line 31
    packed-switch p0, :pswitch_data_0

    .line 36
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 32
    :pswitch_0
    sget-object v0, Lcom/tapjoy/internal/eb;->APP:Lcom/tapjoy/internal/eb;

    goto :goto_0

    .line 33
    :pswitch_1
    sget-object v0, Lcom/tapjoy/internal/eb;->CAMPAIGN:Lcom/tapjoy/internal/eb;

    goto :goto_0

    .line 34
    :pswitch_2
    sget-object v0, Lcom/tapjoy/internal/eb;->CUSTOM:Lcom/tapjoy/internal/eb;

    goto :goto_0

    .line 35
    :pswitch_3
    sget-object v0, Lcom/tapjoy/internal/eb;->USAGES:Lcom/tapjoy/internal/eb;

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/eb;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/tapjoy/internal/eb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/eb;

    return-object v0
.end method

.method public static values()[Lcom/tapjoy/internal/eb;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/tapjoy/internal/eb;->b:[Lcom/tapjoy/internal/eb;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/eb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/eb;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/tapjoy/internal/eb;->a:I

    return v0
.end method
