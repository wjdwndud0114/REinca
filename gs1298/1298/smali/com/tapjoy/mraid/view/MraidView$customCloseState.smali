.class public final enum Lcom/tapjoy/mraid/view/MraidView$customCloseState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/mraid/view/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "customCloseState"
.end annotation


# static fields
.field public static final enum HIDDEN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

.field public static final enum OPEN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

.field public static final enum UNKNOWN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

.field private static final synthetic a:[Lcom/tapjoy/mraid/view/MraidView$customCloseState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/mraid/view/MraidView$customCloseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->HIDDEN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v3}, Lcom/tapjoy/mraid/view/MraidView$customCloseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->OPEN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/tapjoy/mraid/view/MraidView$customCloseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->UNKNOWN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    .line 97
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->HIDDEN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->OPEN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->UNKNOWN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->a:[Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/mraid/view/MraidView$customCloseState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 97
    const-class v0, Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    return-object v0
.end method

.method public static values()[Lcom/tapjoy/mraid/view/MraidView$customCloseState;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->a:[Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    invoke-virtual {v0}, [Lcom/tapjoy/mraid/view/MraidView$customCloseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    return-object v0
.end method
