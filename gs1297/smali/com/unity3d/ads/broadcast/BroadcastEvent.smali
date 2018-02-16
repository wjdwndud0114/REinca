.class public final enum Lcom/unity3d/ads/broadcast/BroadcastEvent;
.super Ljava/lang/Enum;
.source "BroadcastEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/ads/broadcast/BroadcastEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/broadcast/BroadcastEvent;

.field public static final enum ACTION:Lcom/unity3d/ads/broadcast/BroadcastEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/unity3d/ads/broadcast/BroadcastEvent;

    const-string v1, "ACTION"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/broadcast/BroadcastEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/broadcast/BroadcastEvent;->ACTION:Lcom/unity3d/ads/broadcast/BroadcastEvent;

    .line 3
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/unity3d/ads/broadcast/BroadcastEvent;

    sget-object v1, Lcom/unity3d/ads/broadcast/BroadcastEvent;->ACTION:Lcom/unity3d/ads/broadcast/BroadcastEvent;

    aput-object v1, v0, v2

    sput-object v0, Lcom/unity3d/ads/broadcast/BroadcastEvent;->$VALUES:[Lcom/unity3d/ads/broadcast/BroadcastEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/broadcast/BroadcastEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/unity3d/ads/broadcast/BroadcastEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/broadcast/BroadcastEvent;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/broadcast/BroadcastEvent;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/unity3d/ads/broadcast/BroadcastEvent;->$VALUES:[Lcom/unity3d/ads/broadcast/BroadcastEvent;

    invoke-virtual {v0}, [Lcom/unity3d/ads/broadcast/BroadcastEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/broadcast/BroadcastEvent;

    return-object v0
.end method
